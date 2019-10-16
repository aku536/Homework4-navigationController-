//
//  ViewController.m
//  obj_1_lesson1
//
//  Created by 16817252 on 14/10/2019.
//  Copyright © 2019 16817252. All rights reserved.
//

#import "ViewController.h"
#import "AnotherOneViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIButton *nextButton;
@property (nonatomic, strong) AnotherOneViewController *anotherVC;

@end

@implementation ViewController

- (instancetype)init
{
	self = [super init];
	if (self)
	{
		self.view.backgroundColor = [UIColor cyanColor];
        
        _anotherVC = [AnotherOneViewController new];
        
		_button = [UIButton buttonWithType:UIButtonTypeCustom];
		[_button setTitle:@"Назад" forState:UIControlStateNormal];
		_button.backgroundColor = [UIColor whiteColor];
		[_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
		[_button addTarget:self
					action:@selector(tapButton)
		  forControlEvents:UIControlEventTouchDown];
		[self.view addSubview:_button];
        
        [self setupNextButton];
	}
	return self;
}

- (void) setupNextButton
{
    _nextButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [_nextButton addTarget:self action:@selector(tapNextButton) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_nextButton];
}

- (void)viewWillAppear:(BOOL)animated
{
	self.button.frame = CGRectMake(25.0, 150.0, 100.0, 40.0);
    self.nextButton.center = CGPointMake(self.view.center.x, _button.center.y);
}

- (void)tapButton
{
	[self.navigationController popViewControllerAnimated:YES];
}

- (void)tapNextButton
{
    [self.navigationController pushViewController:self.anotherVC animated:YES];
}

@end
