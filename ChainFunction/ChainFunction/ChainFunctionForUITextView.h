//
//  ChainFunctionForUITextView.h
//  ChainProperty
//
//  Created by TengShuQiang on 2017/12/25.
//  Copyright © 2017年 TTeng. All rights reserved.
//

#import "ChainFunctionHeader.h"

@class ChainFunctionForCALayer;
@interface ChainFunctionForUITextView : NSObject


- (ChainFunctionForUIView *(^)(void))viewMaker;

- (ChainFunctionForUIScrollView *(^)(void))scrollMaker;

#pragma mark - UITextInputTraits

- (ChainFunctionForUITextView *(^)(UITextAutocapitalizationType)) autocapitalizationType;
- (ChainFunctionForUITextView *(^)(UITextAutocorrectionType)) autocorrectionType;
- (ChainFunctionForUITextView *(^)(UITextSpellCheckingType)) spellCheckingType NS_AVAILABLE_IOS(5_0);
- (ChainFunctionForUITextView *(^)(UITextSmartQuotesType)) smartQuotesType NS_AVAILABLE_IOS(11_0);
- (ChainFunctionForUITextView *(^)(UITextSmartDashesType)) smartDashesType NS_AVAILABLE_IOS(11_0);
- (ChainFunctionForUITextView *(^)(UITextSmartInsertDeleteType)) smartInsertDeleteType NS_AVAILABLE_IOS(11_0);
- (ChainFunctionForUITextView *(^)(UIKeyboardType)) keyboardType;
- (ChainFunctionForUITextView *(^)(UIKeyboardAppearance)) keyboardAppearance;
- (ChainFunctionForUITextView *(^)(UIReturnKeyType)) returnKeyType;
- (ChainFunctionForUITextView *(^)(BOOL)) enablesReturnKeyAutomatically;
- (ChainFunctionForUITextView *(^)(BOOL)) secureTextEntry;
- (ChainFunctionForUITextView *(^)(UITextContentType)) textContentType;

#pragma mark - UIContentSizeCategoryAdjusting
- (ChainFunctionForUITextView *(^)(BOOL)) adjustsFontForContentSizeCategory NS_AVAILABLE_IOS(10_0);

#pragma mark - textView
- (ChainFunctionForUITextView *(^)(id<UITextViewDelegate>)) delegate;
- (ChainFunctionForUITextView *(^)(NSString *)) text;
- (ChainFunctionForUITextView *(^)(UIColor *)) textColor;
- (ChainFunctionForUITextView *(^)(UIFont *)) font;
- (ChainFunctionForUITextView *(^)(NSTextAlignment)) textAlignment;
- (ChainFunctionForUITextView *(^)(NSRange)) selectedRange;
- (ChainFunctionForUITextView *(^)(BOOL)) editable;
- (ChainFunctionForUITextView *(^)(BOOL)) selectable NS_AVAILABLE_IOS(7_0);

- (ChainFunctionForUITextView *(^)(UIDataDetectorTypes)) dataDetectorTypes NS_AVAILABLE_IOS(3_0);
- (ChainFunctionForUITextView *(^)(BOOL)) allowsEditingTextAttributes NS_AVAILABLE_IOS(6_0);
- (ChainFunctionForUITextView *(^)(NSAttributedString *)) attributedText NS_AVAILABLE_IOS(6_0);
- (ChainFunctionForUITextView *(^)(NSDictionary<NSString *, id> *)) typingAttributes NS_AVAILABLE_IOS(6_0);
- (ChainFunctionForUITextView *(^)(BOOL)) clearsOnInsertion NS_AVAILABLE_IOS(6_0);

- (ChainFunctionForUITextView *(^)(UIEdgeInsets)) textContainerInset;
- (ChainFunctionForUITextView *(^)(NSDictionary<NSString *, id> *)) linkTextAttributes NS_AVAILABLE_IOS(7_0);

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker;

@end

@interface UITextView (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUITextView *textViewChain;

@end
