//
//  PKCommon.h
//  01-片刻
//
//  Created by qianfeng on 15-4-23.
//  Copyright (c) 2015年 Jason Ding. All rights reserved.
//

#ifndef _1____PKCommon_h
#define _1____PKCommon_h

// 0,导入自建分类
#import "UIImage+name.h"

#define PKAccountFile   [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject] stringByAppendingPathComponent:@"account.data"]


//1,判断是否为 iOS7 iOS8
#define iOS7     ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0)
#define iOS8     ([[UIDevice currentDevice].systemVersion doubleValue] >= 8.0)
// 2.获得RGB颜色
#define PKColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

//3,自定义 Log
#ifdef DEBUG
#define PKLog(...) NSLog(__VA_ARGS__)
#else
#define PKLog(...)
#endif

// 4,是否为4inch
#define fourInch ([UIScreen mainScreen].bounds.size.height == 568)


// 5,常用的对象
#define PKNotificationCenter [NSNotificationCenter defaultCenter]

#define PKOnePageWidth ([UIScreen mainScreen].bounds.size.width)
#define PKOnePageHeight ([UIScreen mainScreen].bounds.size.height)

#define PKPlaceholderImage @"Placehold"

#define PKPlayMusicImage @"play"


/** 表格的边框宽度 */
#define PKStatusTableBorder 5
/** 时间的字体 */
#define PKStatusTimeFont [UIFont systemFontOfSize:12]
/** 昵称的字体 */
#define PKStatusNameFont [UIFont systemFontOfSize:15]
/** 正文的字体 */
#define PKStatusContentFont [UIFont systemFontOfSize:13]
#endif
