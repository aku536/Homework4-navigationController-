//
//  RootViewController.m
//  Homework4(NavController)
//
//  Created by Кирилл Афонин on 16/10/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController.h"

@interface RootViewController ()

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) ViewController *viewController;

@end

@implementation RootViewController

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _viewController = [ViewController new];
        
        [self setUpButton];
    }
    return self;
}

- (void)setUpButton
{
    _button = [UIButton new];
    [_button setTitle:@"Привет!" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _button.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_button];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor grayColor];

    self.button.frame = CGRectMake(0,
                                   0,
                                   100.0,
                                   40.0);
    self.button.center = self.view.center;
    [self.button addTarget:self
                    action:@selector(tapButton)
          forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.button];
}


- (void)tapButton
{
    [self.navigationController pushViewController:self.viewController
                                         animated:TRUE];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
