//
//  ViewController.m
//  Parabolic
//
//  Created by IOS-开发机 on 15/12/8.
//  Copyright © 2015年 IOS-开发机. All rights reserved.
//

#import "ViewController.h"
#import "ParabolicAction.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}


-(IBAction)starAction:(UIButton *)sender
{
    [[ParabolicAction alloc] parabolicActionView:self.view andStartPoint:CGPointMake(self.view.frame.size.width-10, self.view.frame.size.height/2-10) andEndPoint:CGPointMake(10, self.view.frame.size.height-10) andMiddlePoint:CGPointMake(self.view.frame.size.width-110, self.view.frame.size.height/2-800)];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
