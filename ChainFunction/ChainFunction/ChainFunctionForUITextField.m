//
//  ChainFunctionForUITextField.m
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionForUITextField.h"

@interface ChainFunctionForUITextField ()

@property (nonatomic, strong) UITextField *textField;

@end

@implementation ChainFunctionForUITextField

- (ChainFunctionForUIView *(^)(void)) viewMaker {
    return ^(void) {
        return ((UIView *)self.textField).viewChain;
    };
}

- (ChainFunctionForUIControl *(^)(void)) controlMaker {
    return ^(void) {
        return ((UIControl *)self.textField).controlChain;
    };
}

#pragma mark - UITextInputTraits

- (ChainFunctionForUITextField *(^)(UITextAutocapitalizationType)) autocapitalizationType {
    return ^(UITextAutocapitalizationType autocapitalizationType) {
        self.textField.autocapitalizationType = autocapitalizationType;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UITextAutocorrectionType)) autocorrectionType {
    return ^(UITextAutocorrectionType autocorrectionType) {
        self.textField.autocorrectionType = autocorrectionType;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UITextSpellCheckingType)) spellCheckingType NS_AVAILABLE_IOS(5_0) {
    return ^(UITextSpellCheckingType spellCheckingType) {
        self.textField.spellCheckingType = spellCheckingType;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UITextSmartQuotesType)) smartQuotesType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartQuotesType smartQuotesType) {
        self.textField.smartQuotesType = smartQuotesType;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UITextSmartDashesType)) smartDashesType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartDashesType smartDashesType) {
        self.textField.smartDashesType = smartDashesType;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UITextSmartInsertDeleteType)) smartInsertDeleteType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartInsertDeleteType smartInsertDeleteType) {
        self.textField.smartInsertDeleteType = smartInsertDeleteType;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UIKeyboardType)) keyboardType {
    return ^(UIKeyboardType keyboardType) {
        self.textField.keyboardType = keyboardType;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UIKeyboardAppearance)) keyboardAppearance {
    return ^(UIKeyboardAppearance keyboardAppearance) {
        self.textField.keyboardAppearance = keyboardAppearance;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UIReturnKeyType)) returnKeyType {
    return ^(UIReturnKeyType returnKeyType) {
        self.textField.returnKeyType = returnKeyType;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(BOOL)) enablesReturnKeyAutomatically {
    return ^(BOOL enablesReturnKeyAutomatically) {
        self.textField.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(BOOL)) secureTextEntry {
    return ^(BOOL secureTextEntry) {
        self.textField.secureTextEntry = secureTextEntry;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UITextContentType)) textContentType {
    return ^(UITextContentType textContentType) {
        self.textField.textContentType = textContentType;
        return self;
    };
}

#pragma mark - UIContentSizeCategoryAdjusting

- (ChainFunctionForUITextField *(^)(BOOL)) adjustsFontForContentSizeCategory NS_AVAILABLE_IOS(10_0) {
    return ^(BOOL adjustsFontForContentSizeCategory) {
        self.textField.adjustsFontForContentSizeCategory = adjustsFontForContentSizeCategory;
        return self;
    };
}

#pragma mark - textField

- (ChainFunctionForUITextField *(^)(NSString *)) text {
    return ^(NSString *text) {
        self.textField.text = text;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(NSAttributedString *)) attributedText {
    return ^(NSAttributedString *attributedText) {
        self.textField.attributedText = attributedText;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UIColor *)) textColor {
    return ^(UIColor *textColor) {
        self.textField.textColor = textColor;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UIFont *)) font {
    return ^(UIFont *font) {
        self.textField.font = font;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(NSTextAlignment)) textAlignment {
    return ^(NSTextAlignment textAlignment) {
        self.textField.textAlignment = textAlignment;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UITextBorderStyle)) borderStyle {
    return ^(UITextBorderStyle borderStyle) {
        self.textField.borderStyle = borderStyle;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(NSDictionary<NSString *, id> *)) defaultTextAttributes {
    return ^(NSDictionary<NSString *, id> *defaultTextAttributes) {
        self.textField.defaultTextAttributes = defaultTextAttributes;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(NSString *)) placeholder {
    return ^(NSString * placeholder) {
        self.textField.placeholder = placeholder;
        return self;
    };
}

- (ChainFunctionForUITextField *(^)(NSAttributedString *)) attributedPlaceholder {
    return ^(NSAttributedString * attributedPlaceholder) {
        self.textField.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(BOOL)) clearsOnBeginEditing {
    return ^(BOOL clearsOnBeginEditing) {
        self.textField.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(BOOL)) adjustsFontSizeToFitWidth {
    return ^(BOOL adjustsFontSizeToFitWidth) {
        self.textField.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(id<UITextFieldDelegate>)) delegate {
    return ^(id<UITextFieldDelegate> delegate) {
        self.textField.delegate = delegate;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UIImage *)) background {
    return ^(UIImage * background) {
        self.textField.background = background;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UIImage *)) disabledBackground {
    return ^(UIImage * disabledBackground) {
        self.textField.disabledBackground = disabledBackground;
        return self;
    };
}

- (ChainFunctionForUITextField *(^)(BOOL)) allowsEditingTextAttributes {
    return ^(BOOL allowsEditingTextAttributes) {
        self.textField.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(NSDictionary<NSString *, id> *)) typingAttributes {
    return ^(NSDictionary<NSString *, id> * typingAttributes) {
        self.textField.typingAttributes = typingAttributes;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UITextFieldViewMode)) clearButtonMode {
    return ^(UITextFieldViewMode clearButtonMode) {
        self.textField.clearButtonMode = clearButtonMode;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UIView *)) leftView {
    return ^(UIView * leftView) {
        self.textField.leftView = leftView;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UITextFieldViewMode)) leftViewMode {
    return ^(UITextFieldViewMode leftViewMode) {
        self.textField.leftViewMode = leftViewMode;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UIView *)) rightView {
    return ^(UIView * rightView) {
        self.textField.rightView = rightView;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(UITextFieldViewMode)) rightViewMode {
    return ^(UITextFieldViewMode rightViewMode) {
        self.textField.rightViewMode = rightViewMode;
        return self;
    };
}
- (ChainFunctionForUITextField *(^)(BOOL)) clearsOnInsertion {
    return ^(BOOL clearsOnInsertion) {
        self.textField.clearsOnInsertion = clearsOnInsertion;
        return self;
    };
}

- (ChainFunctionForUITextField *(^)(id, SEL, UIControlEvents)) targetAction {
    return ^(id target, SEL selector ,UIControlEvents event) {
        [self.textField  addTarget:target action:selector forControlEvents:event];
        return self;
    };
}

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker {
    return ^(void) {
        return self.textField.layer.chainMaker;
    };
}

@end

#import <objc/runtime.h>

@implementation UITextField (ChainFunction)

- (ChainFunctionForUITextField *)textFieldChain {
    ChainFunctionForUITextField *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForUITextField new];
        chain.textField = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}

@end
