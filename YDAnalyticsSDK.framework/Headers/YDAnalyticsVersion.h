//
//  YDAnalyticsVersion.h
//  YDAnalyticsSDK
//
//  Copyright © 2015年 苏州联康网络有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>




/*****更新日志：*****
 V1.0.0
 支持事件统计
 支持页面统计
 支持打开记录统计
 支持设备统计
 支持按渠道统计
 
 V1.1.0
 增加idfa广告标识符的统计
 
 V1.2.0
 修改应用名称重配置方法传入
 修复在网络较差的情况下主线程会被阻塞导致应用Crash的问题
 ******************/

/**
 *获取当前统计SDK的版本号
 *当前统计SDK的版本 : 1.2
 *return  返回统计SDK的版本号
 */
UIKIT_STATIC_INLINE NSString* YDGetSDKVersion()
{
    return @"1.2.0";
}
