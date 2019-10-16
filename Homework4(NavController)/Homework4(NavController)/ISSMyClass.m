//
//  ISSMyClass.m
//  Homework4(NavController)
//
//  Created by Кирилл Афонин on 15/10/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

#import "ISSMyClass.h"

@implementation ISSMyClass

// При появлении нового контроллера выводим его класс в консоль
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"%@", [viewController class]);
    return;
}

@end
