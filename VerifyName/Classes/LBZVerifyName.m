//
//  LBZVerifyName.m
//  Pods-VerifyName_Example
//
//  Created by wintone on 2019/8/14.
//

#import "LBZVerifyName.h"

@implementation LBZVerifyName
/**
 判断是否是有效的中文名
 
 @param realName 名字
 @return 如果是在如下规则下符合的中文名则返回`YES`，否则返回`NO`
 限制规则：
 1. 首先是名字要大于2个汉字，小于8个汉字
 2. 如果是中间带`{•|·}`的名字，则限制长度15位（新疆人的名字有15位左右的，之前公司实名认证就遇到过），如果有更长的，请自行修改长度限制
 3. 如果是不带小点的正常名字，限制长度为8位，若果觉得不适，请自行修改位数限制
 *PS: `•`或`·`具体是那个点具体处理需要注意*
 */
- (BOOL)isVaildRealName:(NSString *)realName
{
    if ([self checkEmptyString:realName]) return NO;
    
    NSRange range1 = [realName rangeOfString:@"·"];
    NSRange range2 = [realName rangeOfString:@"•"];
    if(range1.location != NSNotFound ||   // 中文 ·
       range2.location != NSNotFound )    // 英文 •
    {
        //一般中间带 `•`的名字长度不会超过15位，如果有那就设高一点
        if ([realName length] < 2 || [realName length] > 15)
        {
            return NO;
        }
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[\u4e00-\u9fa5]+[·•][\u4e00-\u9fa5]+$" options:0 error:NULL];
        
        NSTextCheckingResult *match = [regex firstMatchInString:realName options:0 range:NSMakeRange(0, [realName length])];
        
        NSUInteger count = [match numberOfRanges];
        
        return count == 1;
    }
    else
    {
        //一般正常的名字长度不会少于2位并且不超过8位，如果有那就设高一点
        if ([realName length] < 2 || [realName length] > 8) {
            return NO;
        }
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[\u4e00-\u9fa5]+$" options:0 error:NULL];
        
        NSTextCheckingResult *match = [regex firstMatchInString:realName options:0 range:NSMakeRange(0, [realName length])];
        
        NSUInteger count = [match numberOfRanges];
        
        return count == 1;
    }
}

- (BOOL) checkEmptyString:(NSString *) string {
    
    if (string == nil) return string == nil;
    
    NSString *newStr = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    return [newStr isEqualToString:@""];
}
@end
