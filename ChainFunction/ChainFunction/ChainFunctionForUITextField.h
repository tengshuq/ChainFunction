//
//  ChainFunctionForUITextField.h
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionHeader.h"

@class ChainFunctionForCALayer;
@interface ChainFunctionForUITextField : NSObject

- (ChainFunctionForUIView *(^)(void)) viewMaker;
- (ChainFunctionForUIControl *(^)(void)) controlMaker;

#pragma mark - UITextInputTraits

- (ChainFunctionForUITextField *(^)(UITextAutocapitalizationType)) autocapitalizationType;
- (ChainFunctionForUITextField *(^)(UITextAutocorrectionType)) autocorrectionType;
- (ChainFunctionForUITextField *(^)(UITextSpellCheckingType)) spellCheckingType NS_AVAILABLE_IOS(5_0);
- (ChainFunctionForUITextField *(^)(UITextSmartQuotesType)) smartQuotesType NS_AVAILABLE_IOS(11_0);
- (ChainFunctionForUITextField *(^)(UITextSmartDashesType)) smartDashesType NS_AVAILABLE_IOS(11_0);
- (ChainFunctionForUITextField *(^)(UITextSmartInsertDeleteType)) smartInsertDeleteType NS_AVAILABLE_IOS(11_0);
- (ChainFunctionForUITextField *(^)(UIKeyboardType)) keyboardType;
- (ChainFunctionForUITextField *(^)(UIKeyboardAppearance)) keyboardAppearance;
- (ChainFunctionForUITextField *(^)(UIReturnKeyType)) returnKeyType;
- (ChainFunctionForUITextField *(^)(BOOL)) enablesReturnKeyAutomatically;
- (ChainFunctionForUITextField *(^)(BOOL)) secureTextEntry;
- (ChainFunctionForUITextField *(^)(UITextContentType)) textContentType;

#pragma mark - UIContentSizeCategoryAdjusting
- (ChainFunctionForUITextField *(^)(BOOL)) adjustsFontForContentSizeCategory NS_AVAILABLE_IOS(10_0);

#pragma mark - textField

- (ChainFunctionForUITextField *(^)(NSString *)) text;
- (ChainFunctionForUITextField *(^)(NSAttributedString *)) attributedText NS_AVAILABLE_IOS(6_0);
- (ChainFunctionForUITextField *(^)(UIColor *)) textColor;
- (ChainFunctionForUITextField *(^)(UIFont *)) font;
- (ChainFunctionForUITextField *(^)(NSTextAlignment)) textAlignment;
- (ChainFunctionForUITextField *(^)(UITextBorderStyle)) borderStyle;
- (ChainFunctionForUITextField *(^)(NSDictionary<NSString *, id> *)) defaultTextAttributes;
- (ChainFunctionForUITextField *(^)(NSString *)) placeholder;

- (ChainFunctionForUITextField *(^)(NSAttributedString *)) attributedPlaceholder;
- (ChainFunctionForUITextField *(^)(BOOL)) clearsOnBeginEditing;
- (ChainFunctionForUITextField *(^)(BOOL)) adjustsFontSizeToFitWidth;
- (ChainFunctionForUITextField *(^)(id<UITextFieldDelegate>)) delegate;
- (ChainFunctionForUITextField *(^)(UIImage *)) background;
- (ChainFunctionForUITextField *(^)(UIImage *)) disabledBackground;

- (ChainFunctionForUITextField *(^)(BOOL)) allowsEditingTextAttributes NS_AVAILABLE_IOS(6_0);
- (ChainFunctionForUITextField *(^)(NSDictionary<NSString *, id> *)) typingAttributes NS_AVAILABLE_IOS(6_0);
- (ChainFunctionForUITextField *(^)(UITextFieldViewMode)) clearButtonMode;
- (ChainFunctionForUITextField *(^)(UIView *)) leftView;
- (ChainFunctionForUITextField *(^)(UITextFieldViewMode)) leftViewMode;
- (ChainFunctionForUITextField *(^)(UIView *)) rightView;
- (ChainFunctionForUITextField *(^)(UITextFieldViewMode)) rightViewMode;
- (ChainFunctionForUITextField *(^)(BOOL)) clearsOnInsertion NS_AVAILABLE_IOS(6_0);
- (ChainFunctionForUITextField *(^)(id, SEL, UIControlEvents)) targetAction;

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker;
@end

@interface UITextField (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUITextField *textFieldChain;

@end
