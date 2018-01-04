//
//  ViewController.m
//  ChainFunction
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ViewController.h"
#import "ChainFunctionHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *test1 = [[UILabel alloc] init];
    test1.frame = CGRectMake(20, 50, 100, 30);
    test1.font = [UIFont systemFontOfSize:13];
    test1.text = @"古今多少事";
    test1.textColor = [UIColor whiteColor];
    test1.backgroundColor = [UIColor lightGrayColor];
    test1.textAlignment = NSTextAlignmentCenter;
    test1.layer.cornerRadius = 3.f;
    test1.layer.borderColor = [UIColor greenColor].CGColor;
    test1.layer.borderWidth = 1.f;
    [self.view addSubview:test1];
    
    UILabel *label = [[UILabel alloc] init];
    label.labelChain
    .font([UIFont systemFontOfSize:13])
    .text(@"链式作死")
    .textColor([UIColor greenColor])
    .viewMaker()    // 调到view链
    .frame(CGRectMake(20, 100, 100, 40))
    .backgroundColor([UIColor whiteColor])
    .addToSuperView(self.view)
    .labelMaker()   // 回到Label链
    .textAlignment(NSTextAlignmentCenter)
    .layerMaker()   // 调到layer链
    .cornerRadius(5)
    .borderColor([UIColor redColor].CGColor)
    .borderWidth(1.f);
    
    UITextField *tf = [[UITextField alloc] init];
    tf.viewChain
    .frame(CGRectMake(20, 200, 300, 40))
    .addToSuperView(self.view)
    .textFieldMaker()
    .font([UIFont systemFontOfSize:13])
    .placeholder(@"我也只是个textField啊。。")
    .keyboardType(UIKeyboardTypeNumberPad)
    .controlMaker()
    .addTarget(self,@selector(textFieldValueChanged:),UIControlEventEditingChanged)
    .layerMaker()
    .borderColor([UIColor greenColor].CGColor)
    .borderWidth(1.f);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.buttonChain
    .title(@"我还小啊",UIControlStateNormal)
    .titleFont([UIFont systemFontOfSize:13])
    .titleColor([UIColor redColor],UIControlStateNormal)
    .controlMaker()
    .addTarget(self,@selector(clickButton:),UIControlEventTouchUpInside)
    .viewMaker()
    .frame(CGRectMake(50, 300, 80, 40))
    .addToSuperView(self.view);
    
}

- (void)clickButton:(UIButton *)sender {
    NSLog(@"我还只是个按钮啊...");
}

- (void)textFieldValueChanged:(UITextField *)textField {
    NSLog(@"textField text:%@",textField.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
