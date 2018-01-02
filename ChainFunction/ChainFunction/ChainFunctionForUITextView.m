//
//  ChainFunctionForUITextView.m
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionForUITextView.h"

@interface ChainFunctionForUITextView ()

@property (nonatomic, strong) UITextView *textView;

@end

@implementation ChainFunctionForUITextView

- (ChainFunctionForUIView *(^)(void))viewMaker {
    return ^(void) {
        return ((UIView *)self.textView).viewChain;
    };
}

- (ChainFunctionForUIScrollView *(^)(void))scrollMaker {
    return ^(void) {
        return ((UIScrollView *)self.textView).scrollChain;
    };
}

#pragma mark - UITextInputTraits

- (ChainFunctionForUITextView *(^)(UITextAutocapitalizationType)) autocapitalizationType {
    return ^(UITextAutocapitalizationType autocapitalizationType) {
        self.textView.autocapitalizationType = autocapitalizationType;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UITextAutocorrectionType)) autocorrectionType {
    return ^(UITextAutocorrectionType autocorrectionType) {
        self.textView.autocorrectionType = autocorrectionType;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UITextSpellCheckingType)) spellCheckingType NS_AVAILABLE_IOS(5_0) {
    return ^(UITextSpellCheckingType spellCheckingType) {
        self.textView.spellCheckingType = spellCheckingType;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UITextSmartQuotesType)) smartQuotesType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartQuotesType smartQuotesType) {
        self.textView.smartQuotesType = smartQuotesType;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UITextSmartDashesType)) smartDashesType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartDashesType smartDashesType) {
        self.textView.smartDashesType = smartDashesType;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UITextSmartInsertDeleteType)) smartInsertDeleteType NS_AVAILABLE_IOS(11_0) {
    return ^(UITextSmartInsertDeleteType smartInsertDeleteType) {
        self.textView.smartInsertDeleteType = smartInsertDeleteType;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UIKeyboardType)) keyboardType {
    return ^(UIKeyboardType keyboardType) {
        self.textView.keyboardType = keyboardType;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UIKeyboardAppearance)) keyboardAppearance {
    return ^(UIKeyboardAppearance keyboardAppearance) {
        self.textView.keyboardAppearance = keyboardAppearance;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UIReturnKeyType)) returnKeyType {
    return ^(UIReturnKeyType returnKeyType) {
        self.textView.returnKeyType = returnKeyType;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(BOOL)) enablesReturnKeyAutomatically {
    return ^(BOOL enablesReturnKeyAutomatically) {
        self.textView.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(BOOL)) secureTextEntry {
    return ^(BOOL secureTextEntry) {
        self.textView.secureTextEntry = secureTextEntry;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UITextContentType)) textContentType {
    return ^(UITextContentType textContentType) {
        self.textView.textContentType = textContentType;
        return self;
    };
}

#pragma mark - UIContentSizeCategoryAdjusting

- (ChainFunctionForUITextView *(^)(BOOL)) adjustsFontForContentSizeCategory NS_AVAILABLE_IOS(10_0) {
    return ^(BOOL adjustsFontForContentSizeCategory) {
        self.textView.adjustsFontForContentSizeCategory = adjustsFontForContentSizeCategory;
        return self;
    };
}

#pragma mark - textView

- (ChainFunctionForUITextView *(^)(id<UITextViewDelegate>)) delegate {
    return ^(id<UITextViewDelegate> delegate) {
        self.textView.delegate = delegate;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(NSString *))text {
    return ^(NSString * text) {
        self.textView.text = text;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UIColor *)) textColor {
    return ^(UIColor * textColor) {
        self.textView.textColor = textColor;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(UIFont *)) font {
    return ^(UIFont * font) {
        self.textView.font = font;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(NSTextAlignment)) textAlignment {
    return ^(NSTextAlignment textAlignment) {
        self.textView.textAlignment = textAlignment;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(NSRange)) selectedRange {
    return ^(NSRange selectedRange) {
        self.textView.selectedRange = selectedRange;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(BOOL)) editable {
    return ^(BOOL editable) {
        self.textView.editable = editable;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(BOOL)) selectable {
    return ^(BOOL selectable) {
        self.textView.selectable = selectable;
        return self;
    };
}

- (ChainFunctionForUITextView *(^)(UIDataDetectorTypes)) dataDetectorTypes {
    return ^(UIDataDetectorTypes dataDetectorTypes) {
        self.textView.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(BOOL)) allowsEditingTextAttributes {
    return ^(BOOL allowsEditingTextAttributes) {
        self.textView.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(NSAttributedString *)) attributedText {
    return ^(NSAttributedString * attributedText) {
        self.textView.attributedText = attributedText;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(NSDictionary<NSString *, id> *)) typingAttributes {
    return ^(NSDictionary<NSString *, id> * typingAttributes) {
        self.textView.typingAttributes = typingAttributes;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(BOOL)) clearsOnInsertion {
    return ^(BOOL clearsOnInsertion) {
        self.textView.clearsOnInsertion = clearsOnInsertion;
        return self;
    };
}

- (ChainFunctionForUITextView *(^)(UIEdgeInsets)) textContainerInset {
    return ^(UIEdgeInsets textContainerInset) {
        self.textView.textContainerInset = textContainerInset;
        return self;
    };
}
- (ChainFunctionForUITextView *(^)(NSDictionary<NSString *, id> *)) linkTextAttributes {
    return ^(NSDictionary<NSString *, id> * linkTextAttributes) {
        self.textView.linkTextAttributes = linkTextAttributes;
        return self;
    };
}

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker {
    return ^(void) {
        return self.textView.layer.chainMaker;
    };
}

@end

#import <objc/runtime.h>

@implementation UITextView (ChainFunction)

- (ChainFunctionForUITextView *)textViewChain {
    ChainFunctionForUITextView *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForUITextView new];
        chain.textView = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}

@end
