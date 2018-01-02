//
//  ChainFunctionForUIButton.h
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionHeader.h"

@class ChainFunctionForCALayer;
@interface ChainFunctionForUIButton : NSObject

- (ChainFunctionForUIView *(^)(void)) viewMaker;
- (ChainFunctionForUIControl *(^)(void)) controlMaker;

#pragma mark - button

- (ChainFunctionForUIButton *(^)(UIEdgeInsets)) contentEdgeInsets;
- (ChainFunctionForUIButton *(^)(UIEdgeInsets)) titleEdgeInsets;
- (ChainFunctionForUIButton *(^)(BOOL)) reversesTitleShadowWhenHighlighted;
- (ChainFunctionForUIButton *(^)(UIEdgeInsets)) imageEdgeInsets;
- (ChainFunctionForUIButton *(^)(BOOL)) adjustsImageWhenHighlighted;
- (ChainFunctionForUIButton *(^)(BOOL)) adjustsImageWhenDisabled;
- (ChainFunctionForUIButton *(^)(BOOL)) showsTouchWhenHighlighted;

- (ChainFunctionForUIButton *(^)(UIColor *, UIControlState)) titleColor;
- (ChainFunctionForUIButton *(^)(NSString *, UIControlState)) title;
- (ChainFunctionForUIButton *(^)(UIFont *)) titleFont;
- (ChainFunctionForUIButton *(^)(UIImage *, UIControlState)) image;
- (ChainFunctionForUIButton *(^)(UIImage *, UIControlState)) backgroundImage;
- (ChainFunctionForUIButton *(^)(id, SEL,UIControlEvents)) targetAction;

#pragma mark layer

- (ChainFunctionForCALayer *(^)(void)) layerMaker;

@end

@interface UIButton (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUIButton *buttonChain;

@end
