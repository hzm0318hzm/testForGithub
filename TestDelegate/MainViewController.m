//
//  MainViewController.m
//  TestDelegate
//
//  Created by Ming on 13-8-14.
//  Copyright (c) 2013年 Ming. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
       [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recreate:) name:@"111" object:nil];
    self.clEntity = [[[Entity alloc] init] autorelease];
    self.clEntity.delegate = self;
    [self.clEntity.delegate del];
    

}

- (void)del
{
//    [self performSelector:@selector(recreate) withObject:nil afterDelay:.01];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"111" object:nil userInfo:nil];
}

- (void)recreate:(NSNotification *)no
{
    self.clEntity = [[[Entity alloc] init] autorelease];
    self.clEntity.delegate = self;
    [self.clEntity.delegate del];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
