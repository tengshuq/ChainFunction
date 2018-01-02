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
    
    UILabel *label = [UILabel new];
    label.labelChain
    .font([UIFont systemFontOfSize:13])
    .text(@"链式作死")
    .textColor([UIColor greenColor])
    .viewMaker()
    .frame(CGRectMake(20, 70, 100, 40))
    .backgroundColor([UIColor whiteColor])
    .addToSuperView(self.view)
    .labelMaker()
    .textAlignment(NSTextAlignmentCenter)
    .layerMaker()
    .cornerRadius(5)
    .borderColor([UIColor redColor].CGColor)
    .borderWidth(1.f);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.buttonChain
    .title(@"我只是个按钮啊",UIControlStateNormal)
    .titleColor([UIColor redColor],UIControlStateNormal)
    .titleFont([UIFont systemFontOfSize:13])
    .controlMaker()
    .addTarget(self,@selector(clickButton:),UIControlEventTouchUpInside)
    .viewMaker()
    .frame(CGRectMake(20, 150, 100, 40))
    .addToSuperView(self.view);
    
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
