//
//  ChainFunctionForUIButton.m
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionForUIButton.h"

@interface ChainFunctionForUIButton ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation ChainFunctionForUIButton

- (ChainFunctionForUIView *(^)(void)) viewMaker {
    return ^(void) {
        return ((UIView *)self.button).viewChain;
    };
}

- (ChainFunctionForUIControl *(^)(void)) controlMaker {
    return ^(void) {
        return ((UIControl *)self.button).controlChain;
    };
}

#pragma mark - button

- (ChainFunctionForUIButton *(^)(UIEdgeInsets)) contentEdgeInsets {
    return ^(UIEdgeInsets contentEdgeInsets) {
        self.button.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}
- (ChainFunctionForUIButton *(^)(UIEdgeInsets)) titleEdgeInsets {
    return ^(UIEdgeInsets titleEdgeInsets) {
        self.button.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}
- (ChainFunctionForUIButton *(^)(BOOL)) reversesTitleShadowWhenHighlighted {
    return ^(BOOL reversesTitleShadowWhenHighlighted) {
        self.button.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted;
        return self;
    };
}
- (ChainFunctionForUIButton *(^)(UIEdgeInsets)) imageEdgeInsets {
    return ^(UIEdgeInsets imageEdgeInsets) {
        self.button.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}
- (ChainFunctionForUIButton *(^)(BOOL)) adjustsImageWhenHighlighted {
    return ^(BOOL adjustsImageWhenHighlighted) {
        self.button.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return self;
    };
}
- (ChainFunctionForUIButton *(^)(BOOL)) adjustsImageWhenDisabled {
    return ^(BOOL adjustsImageWhenDisabled) {
        self.button.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return self;
    };
}
- (ChainFunctionForUIButton *(^)(BOOL)) showsTouchWhenHighlighted {
    return ^(BOOL showsTouchWhenHighlighted) {
        self.button.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return self;
    };
}


- (ChainFunctionForUIButton *(^)(UIColor *, UIControlState)) titleColor {
    return ^(UIColor *titleColor, UIControlState state) {
        [self.button setTitleColor:titleColor forState:state];
        return self;
    };
}
- (ChainFunctionForUIButton *(^)(NSString *, UIControlState)) title {
    return ^(NSString *title, UIControlState state) {
        [self.button setTitle:title forState:state];
        return self;
    };
}

- (ChainFunctionForUIButton *(^)(UIFont *)) titleFont {
    return ^(UIFont *font) {
        self.button.titleLabel.font = font;
        return self;
    };
}

- (ChainFunctionForUIButton *(^)(UIImage *, UIControlState)) image {
    return ^(UIImage *image, UIControlState state) {
        [self.button setImage:image forState:state];
        return self;
    };
}

- (ChainFunctionForUIButton *(^)(UIImage *, UIControlState)) backgroundImage {
    return ^(UIImage *image, UIControlState state) {
        [self.button setBackgroundImage:image forState:state];
        return self;
    };
}

- (ChainFunctionForUIButton *(^)(id, SEL, UIControlEvents)) targetAction {
    return ^(id target, SEL action, UIControlEvents event) {
        [self.button addTarget:target action:action forControlEvents:event];
        return self;
    };
}

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker {
    return ^(void) {
        return self.button.layer.chainMaker;
    };
}

@end

#import <objc/runtime.h>

@implementation UIButton (ChainFunction)

- (ChainFunctionForUIButton *)buttonChain {
    ChainFunctionForUIButton *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForUIButton new];
        chain.button = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}

@end
