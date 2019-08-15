//
//  LBZPhoneNumVerify.h
//  Pods-VerifyName_Example
//
//  Created by wintone on 2019/8/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBZPhoneNumVerify : NSObject
/**
 验证码手机号
 
 @param mobileNum 手机号
 @return YES 通过 NO 不通过
 */
- (BOOL)validateContactNumber:(NSString *)mobileNum;
@end

NS_ASSUME_NONNULL_END
