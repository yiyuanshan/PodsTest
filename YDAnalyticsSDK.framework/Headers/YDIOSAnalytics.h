//
//  YDIOSAnalytics.h
//  YDAnalyticsSDK
//
//  Copyright © 2015年 苏州联康网络有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YDIOSAnalytics : NSObject

/**
*  发送启动信息
*
*  @param appKey    统计后台注册应用时获取到的appkey
*  @param appName   应用名称
*  @param serverURL 服务器SDK Service接口地址
*  @param uid       用户UID
*  @param channel   渠道名称 (默认为：AppStore)
*/
+ (void)startWithAppKey:(NSString*)appKey
                appName:(NSString *)appName
              serverURL:(NSString *)serverURL
                 userId:(NSString *)uid
                channel:(NSString *)channel;
/**
 *  发送自定义事件
 *
 *  @param eventName   事件名称
 *  @param eventDetail 事件内容
 */
+ (void)eventWithName:(NSString *)eventName
          eventDetail:(NSString *)eventDetail;

/**
 *  记录页面载入事件，请在viewWillAppear方法中调用
 *
 *  @param pageName 页面名称
 */
+ (void)startTracPage:(NSString *)pageName;

/**
 *  记录页面卸载事件，请在viewWillDisappear方法中调用
 *
 *  @param pageName 页面名称
 */
+ (void)endTracPage:(NSString *)pageName;
/**
*  记录打开应用的次数，请在applicationWillEnterForeground和application:didFinishLaunchingWithOptions:里面调用
*/
+ (void)postOpenRecords;
/**
*  记录打开应用的次数，请在applicationWillEnterForeground和application:didFinishLaunchingWithOptions:里面调用
*
*  @param lat 纬度
*  @param lng 经度
*/
+ (void)postOpenRecordsWithLat:(NSString *)lat
                           lng:(NSString *)lng;
/**
*  是否开启log
*
*  @param openLog 默认关闭
*/
//+ (void)setOpenLog:(BOOL)openLog;
@end
