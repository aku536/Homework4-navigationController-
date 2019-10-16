//
//  AnotherOneViewController.m
//  Homework4(NavController)
//
//  Created by Кирилл Афонин on 16/10/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

#import "AnotherOneViewController.h"

@interface AnotherOneViewController ()

@end

@implementation AnotherOneViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:3];
        self.tabBarItem = tabBarItem;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)viewWillAppear:(BOOL)animated
{
    self.view.backgroundColor = [UIColor magentaColor];
}

@end
