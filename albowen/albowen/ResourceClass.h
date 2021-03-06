//
//  ResourceClass.h
//  albowen
//
//  Created by quanqiuwa on 2019/1/16.
//  Copyright © 2019 xuannalisha. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResourceClass : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, strong)NSArray *imageList;
@property (nonatomic, copy)NSString * lat;
@property (nonatomic, copy)NSString * lng;
@property (nonatomic, copy)NSString * fenshu;
@property (nonatomic, copy)NSString *ruzhu;
@property (nonatomic, copy)NSString *lidian;
@property (nonatomic, copy)NSString *fangjian;
@property (nonatomic, copy)NSString *jiaotong;
@property (nonatomic, copy)NSString *fangxing;
@property (nonatomic, strong)NSArray *fangjia;
@property (nonatomic, copy)NSString *sheshi;
@property (nonatomic, copy)NSString *tiaokuan;
@property (nonatomic, copy)NSString *dis;
@property (nonatomic, assign)BOOL isSc;

@end


@interface fangjiaClass : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString * price;
@property (nonatomic, copy)NSString * image;

@end



NS_ASSUME_NONNULL_END
