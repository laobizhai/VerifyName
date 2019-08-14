//
//  LBZVerifyName.h
//  Pods-VerifyName_Example
//
//  Created by wintone on 2019/8/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBZVerifyName : NSObject
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
- (BOOL)isVaildRealName:(NSString *)realName;
@end

NS_ASSUME_NONNULL_END
