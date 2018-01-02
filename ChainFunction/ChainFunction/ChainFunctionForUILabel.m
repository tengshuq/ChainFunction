//
//  ChainFunctionForUILabel.m
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionForUILabel.h"

@interface ChainFunctionForUILabel ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation ChainFunctionForUILabel

#pragma mark - view

- (ChainFunctionForUIView *(^)(void))viewMaker {
    return ^(void) {
        return ((UIView *)self.label).viewChain;
    };
}

#pragma mark - label

- (ChainFunctionForUILabel *(^)(NSString *)) text {
    return ^(NSString *text) {
        self.label.text = text;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(UIFont *)) font {
    return ^(UIFont *font) {
        self.label.font = font;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(UIColor *)) textColor {
    return ^(UIColor *textColor) {
        self.label.textColor = textColor;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(UIColor *)) shadowColor {
    return ^(UIColor *shadowColor) {
        self.label.shadowColor = shadowColor;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(CGSize)) shadowOffset {
    return ^(CGSize shadowOffset) {
        self.label.shadowOffset = shadowOffset;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(NSTextAlignment)) textAlignment {
    return ^(NSTextAlignment textAlignment) {
        self.label.textAlignment = textAlignment;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(NSLineBreakMode)) lineBreakMode {
    return ^(NSLineBreakMode lineBreakMode) {
        self.label.lineBreakMode = lineBreakMode;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(NSAttributedString *)) attributedText {
    return ^(NSAttributedString * attributedText) {
        self.label.attributedText = attributedText;
        return self;
    };
}

- (ChainFunctionForUILabel *(^)(UIColor *)) highlightedTextColor {
    return ^(UIColor * highlightedTextColor) {
        self.label.highlightedTextColor = highlightedTextColor;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(BOOL)) highlighted {
    return ^(BOOL highlighted) {
        self.label.highlighted = highlighted;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(BOOL)) userInteractionEnabled {
    return ^(BOOL userInteractionEnabled) {
        self.label.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(BOOL)) enabled {
    return ^(BOOL enabled) {
        self.label.enabled = enabled;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(NSInteger)) numberOfLines {
    return ^(NSInteger numberOfLines) {
        self.label.numberOfLines = numberOfLines;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(BOOL)) adjustsFontSizeToFitWidth {
    return ^(BOOL adjustsFontSizeToFitWidth) {
        self.label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(UIBaselineAdjustment)) baselineAdjustment {
    return ^(UIBaselineAdjustment baselineAdjustment) {
        self.label.baselineAdjustment = baselineAdjustment;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(CGFloat)) minimumScaleFactor{
    return ^(CGFloat minimumScaleFactor) {
        self.label.minimumScaleFactor = minimumScaleFactor;
        return self;
    };
}

- (ChainFunctionForUILabel *(^)(BOOL)) allowsDefaultTighteningForTruncation {
    return ^(BOOL allowsDefaultTighteningForTruncation) {
        self.label.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation;
        return self;
    };
}
- (ChainFunctionForUILabel *(^)(CGFloat)) preferredMaxLayoutWidth {
    return ^(CGFloat preferredMaxLayoutWidth) {
        self.label.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker {
    return ^(void) {
        return self.label.layer.chainMaker;
    };
}

@end

#import <objc/runtime.h>

@implementation UILabel (ChainFunction)

- (ChainFunctionForUILabel *)labelChain {
    ChainFunctionForUILabel *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForUILabel new];
        chain.label = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}

@end
