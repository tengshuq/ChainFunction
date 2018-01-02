//
//  ChainFunctionForUICollectionView.m
//  ChainFunction
//
//  Created by TengShuQiang on 2018/1/2.
//  Copyright © 2018年 TTeng. All rights reserved.
//

#import "ChainFunctionForUICollectionView.h"

@interface ChainFunctionForUICollectionView ()

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation ChainFunctionForUICollectionView

- (ChainFunctionForUIView *(^)(void)) viewMaker {
    return ^(void) {
        return ((UIView *)self.collectionView).viewChain;
    };
}

- (ChainFunctionForUIScrollView *(^)(void)) scrollMaker {
    return ^(void) {
        return ((UIScrollView *)self.collectionView).scrollChain;
    };
}

#pragma mark - collectionView

- (ChainFunctionForUICollectionView *(^)(UICollectionViewLayout *)) collectionViewLayout {
    return ^(UICollectionViewLayout * collectionViewLayout) {
        self.collectionView.collectionViewLayout = collectionViewLayout;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(id <UICollectionViewDelegate>)) delegate {
    return ^(id <UICollectionViewDelegate> delegate) {
        self.collectionView.delegate = delegate;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(id <UICollectionViewDataSource>)) dataSource {
    return ^(id <UICollectionViewDataSource> dataSource) {
        self.collectionView.dataSource = dataSource;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(id<UICollectionViewDataSourcePrefetching>)) prefetchDataSource NS_AVAILABLE_IOS(10_0) {
    return ^(id<UICollectionViewDataSourcePrefetching> prefetchDataSource) {
        self.collectionView.prefetchDataSource = prefetchDataSource;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(BOOL)) prefetchingEnabled NS_AVAILABLE_IOS(10_0) {
    return ^(BOOL prefetchingEnabled) {
        self.collectionView.prefetchingEnabled = prefetchingEnabled;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(id <UICollectionViewDragDelegate>)) dragDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos) {
    return ^(id <UICollectionViewDragDelegate> dragDelegate) {
        self.collectionView.dragDelegate = dragDelegate;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(id <UICollectionViewDropDelegate>)) dropDelegate API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos) {
    return ^(id <UICollectionViewDropDelegate> dropDelegate) {
        self.collectionView.dropDelegate = dropDelegate;
        return self;
    };
}

- (ChainFunctionForUICollectionView *(^)(BOOL)) dragInteractionEnabled API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos) {
    return ^(BOOL dragInteractionEnabled) {
        self.collectionView.dragInteractionEnabled = dragInteractionEnabled;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(UICollectionViewReorderingCadence)) reorderingCadence API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos) {
    return ^(UICollectionViewReorderingCadence reorderingCadence) {
        self.collectionView.reorderingCadence = reorderingCadence;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(UIView *)) backgroundView {
    return ^(UIView * backgroundView) {
        self.collectionView.backgroundView = backgroundView;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(BOOL)) allowsSelection {
    return ^(BOOL allowsSelection) {
        self.collectionView.allowsSelection = allowsSelection;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(BOOL)) allowsMultipleSelection {
    return ^(BOOL allowsMultipleSelection) {
        self.collectionView.allowsMultipleSelection = allowsMultipleSelection;
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(BOOL)) remembersLastFocusedIndexPath NS_AVAILABLE_IOS(9_0) {
    return ^(BOOL remembersLastFocusedIndexPath) {
        self.collectionView.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath;
        return self;
    };
}

// register class
- (ChainFunctionForUICollectionView *(^)(Class, NSString *)) registerClass {
    return ^(Class cls, NSString *Id) {
        [self.collectionView registerClass:cls forCellWithReuseIdentifier:Id];
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(UINib *, NSString *)) registerNib {
    return ^(UINib *nib, NSString *Id) {
        [self.collectionView registerNib:nib forCellWithReuseIdentifier:Id];
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(Class, NSString *)) registerHeaderClass {
    return ^(Class cls, NSString *Id) {
        [self.collectionView registerClass:cls forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:Id];
        return self;
    };
}
- (ChainFunctionForUICollectionView *(^)(UINib *, NSString *)) registerHeaderNib {
    return ^(UINib *nib, NSString *Id) {
        [self.collectionView registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:Id];
        return self;
    };
}

- (ChainFunctionForUICollectionView *(^)(Class, NSString *)) registerFooterClass {
    return ^(Class cls, NSString *Id) {
        [self.collectionView registerClass:cls forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:Id];
        return self;
    };
}

- (ChainFunctionForUICollectionView *(^)(UINib *, NSString *)) registerFooterNib {
    return ^(UINib *nib, NSString *Id) {
        [self.collectionView registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:Id];
        return self;
    };
}

#pragma mark layer
- (ChainFunctionForCALayer *(^)(void)) layerMaker {
    return ^(void) {
        return self.collectionView.layer.chainMaker;
    };
}

@end

#import <objc/runtime.h>

@implementation UICollectionView (ChainFunction)

- (ChainFunctionForUICollectionView *)collectionViewChain {
    ChainFunctionForUICollectionView *chain = objc_getAssociatedObject(self, _cmd);
    if (!chain) {
        chain = [ChainFunctionForUICollectionView new];
        chain.collectionView = self;
        objc_setAssociatedObject(self, _cmd, chain, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return chain;
}

@end
