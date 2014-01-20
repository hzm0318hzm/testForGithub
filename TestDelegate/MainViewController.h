//
//  MainViewController.h
//  TestDelegate
//
//  Created by Ming on 13-8-14.
//  Copyright (c) 2013年 Ming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entity.h"

@interface MainViewController : UIViewController<TestDelegate>

@property (nonatomic, retain) Entity *clEntity;

@end
