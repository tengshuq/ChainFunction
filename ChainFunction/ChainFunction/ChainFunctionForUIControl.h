//
//  ChainFunctionForUIControl.h
//  ChainFunction
//
//  Created by TengShuQiang on 2017/12/28.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionHeader.h"

@class ChainFunctionForCALayer;
@class ChainFunctionForUIButton,ChainFunctionForUITextField,ChainFunctionForUIView;
@interface ChainFunctionForUIControl : NSObject

- (ChainFunctionForUIView *(^)(void)) viewMaker;

- (ChainFunctionForUIControl *(^)(BOOL)) enabled;
- (ChainFunctionForUIControl *(^)(BOOL)) selected;
- (ChainFunctionForUIControl *(^)(BOOL)) highlighted;
- (ChainFunctionForUIControl *(^)(UIControlContentVerticalAlignment)) contentVerticalAlignment;
- (ChainFunctionForUIControl *(^)(UIControlContentHorizontalAlignment)) contentHorizontalAlignment;
- (ChainFunctionForUIControl *(^)(id, SEL, UIControlEvents)) addTarget;
- (ChainFunctionForUIControl *(^)(id, SEL, UIControlEvents)) removeTarget;
- (ChainFunctionForUIControl *(^)(SEL, id, UIEvent *)) sendActionTarget;
- (ChainFunctionForUIControl *(^)(UIControlEvents)) sendActionEvent;

#pragma mark layer

- (ChainFunctionForCALayer *(^)(void)) layerMaker;

#pragma mark - subviews

- (ChainFunctionForUIButton *(^)(void))buttonMaker;
- (ChainFunctionForUITextField *(^)(void))textFieldMaker;

@end

@interface UIControl (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUIControl *controlChain;
@end
