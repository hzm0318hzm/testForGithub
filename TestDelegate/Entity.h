//
//  Entity.h
//  TestDelegate
//
//  Created by Ming on 13-8-14.
//  Copyright (c) 2013年 Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TestDelegate <NSObject>

- (void)del;

@end

@interface Entity : NSObject
@property (nonatomic, assign) id<TestDelegate> delegate;
@end
