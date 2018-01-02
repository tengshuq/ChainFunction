//
//  ChainFunctionForUICollectionViewFlowLayout.h
//  ChainFunction
//
//  Created by TengShuQiang on 2018/1/2.
//  Copyright © 2018年 TTeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ChainFunctionForUICollectionViewFlowLayout : NSObject

- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGFloat)) minimumLineSpacing;
- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGFloat)) minimumInteritemSpacing;
- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGSize)) itemSize;
- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGSize)) estimatedItemSize NS_AVAILABLE_IOS(8_0);
- (ChainFunctionForUICollectionViewFlowLayout *(^)(UICollectionViewScrollDirection)) scrollDirection;
- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGSize)) headerReferenceSize;
- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGSize)) footerReferenceSize;
- (ChainFunctionForUICollectionViewFlowLayout *(^)(UIEdgeInsets)) sectionInset;
- (ChainFunctionForUICollectionViewFlowLayout *(^)(UICollectionViewFlowLayoutSectionInsetReference)) sectionInsetReference API_AVAILABLE(ios(11.0), tvos(11.0)) API_UNAVAILABLE(watchos);
- (ChainFunctionForUICollectionViewFlowLayout *(^)(BOOL)) sectionHeadersPinToVisibleBounds NS_AVAILABLE_IOS(9_0);
- (ChainFunctionForUICollectionViewFlowLayout *(^)(BOOL)) sectionFootersPinToVisibleBounds NS_AVAILABLE_IOS(9_0);

@end

@interface UICollectionViewFlowLayout (ChainFunction)

@property (nonatomic, strong, readonly) ChainFunctionForUICollectionViewFlowLayout *flowLayoutChain;

@end
