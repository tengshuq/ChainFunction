//
//  ChainFunctionForUICollectionViewFlowLayout.m
//  ChainFunction
//
//  Created by TengShuQiang on 2018/1/2.
//  Copyright © 2018年 TTeng. All rights reserved.
//

#import "ChainFunctionForUICollectionViewFlowLayout.h"

@interface ChainFunctionForUICollectionViewFlowLayout()

@property (nonatomic, strong) UICollectionViewFlowLayout *flowLayout;

@end

@implementation ChainFunctionForUICollectionViewFlowLayout

- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGFloat)) minimumLineSpacing {
    return ^(CGFloat minimumLineSpacing) {
        self.flowLayout.minimumLineSpacing = minimumLineSpacing;
        return self;
    };
}

- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGFloat)) minimumInteritemSpacing {
    return ^(CGFloat minimumInteritemSpacing) {
        self.flowLayout.minimumInteritemSpacing = minimumInteritemSpacing;
        return self;
    };
}
- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGSize)) itemSize {
    return ^(CGSize itemSize) {
        self.flowLayout.itemSize = itemSize;
        return self;
    };
}
- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGSize)) estimatedItemSize NS_AVAILABLE_IOS(8_0) {
    return ^(CGSize estimatedItemSize) {
        self.flowLayout.estimatedItemSize = estimatedItemSize;
        return self;
    };
}
- (ChainFunctionForUICollectionViewFlowLayout *(^)(UICollectionViewScrollDirection)) scrollDirection {
    return ^(UICollectionViewScrollDirection scrollDirection) {
        self.flowLayout.scrollDirection = scrollDirection;
        return self;
    };
}
- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGSize)) headerReferenceSize {
    return ^(CGSize headerReferenceSize) {
        self.flowLayout.headerReferenceSize = headerReferenceSize;
        return self;
    };
}
- (ChainFunctionForUICollectionViewFlowLayout *(^)(CGSize)) footerReferenceSize {
    return ^(CGSize footerReferenceSize) {
        self.flowLayout.footerReferenceSize = footerReferenceSize;
        return self;
    };
}
- (ChainFunctionForUICollectionViewFlowLayout *(^)(UIEdgeInsets)) sectionInset {
    return ^(UIEdgeInsets sectionInset) {
        self.flowLayout.sectionInset = sectionInset;
        return self;
    };
}
- (ChainFunctionForUICollectionViewFlowLayout *(^)(UICollectionViewFlowLayoutSectionInsetReference)) sectionInsetReference  {
    return ^(UICollectionViewFlowLayoutSectionInsetReference sectionInsetReference) {
        self.flowLayout.sectionInsetReference = sectionInsetReference;
        return self;
    };
}
- (ChainFunctionForUICollectionViewFlowLayout *(^)(BOOL)) sectionHeadersPinToVisibleBounds NS_AVAILABLE_IOS(9_0) {
    return ^(BOOL sectionHeadersPinToVisibleBounds) {
        self.flowLayout.sectionHeadersPinToVisibleBounds = sectionHeadersPinToVisibleBounds;
        return self;
    };
}
- (ChainFunctionForUICollectionViewFlowLayout *(^)(BOOL)) sectionFootersPinToVisibleBounds {
    return ^(BOOL sectionFootersPinToVisibleBounds) {
        self.flowLayout.sectionFootersPinToVisibleBounds = sectionFootersPinToVisibleBounds;
        return self;
    };
}

@end

#import <objc/runtime.h>

@implementation UICollectionViewFlowLayout(ChainFunction)

- (ChainFunctionForUICollectionViewFlowLayout *)flowLayoutChain {
    ChainFunctionForUICollectionViewFlowLayout *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForUICollectionViewFlowLayout new];
        chain.flowLayout = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}

@end
