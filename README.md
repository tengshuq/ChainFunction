# ChainFunction
iOS基础控件链式编程

常用的控件实现链式编程的一个小框架。。
一般我们创建的代码的方式
```
    UILabel *test1 = [[UILabel alloc] init];
    test1.frame = CGRectMake(20, 50, 100, 30);
    test1.font = [UIFont systemFontOfSize:13];
    test1.text = @"古今多少事";
    test1.textColor = [UIColor whiteColor];
    test1.backgroundColor = [UIColor lightGrayColor];
    test1.textAlignment = NSTextAlignmentCenter;
    test1.layer.cornerRadius = 3.f;
    test1.layer.borderColor = [UIColor greenColor].CGColor;
    test1.layer.borderWidth = 1.f;
    [self.view addSubview:test1];
```
   
现在，你可以这样创建
```
    UILabel *label = [[UILabel alloc] init];
    label.labelChain  // 取到labelChain
    .font([UIFont systemFontOfSize:13])
    .text(@"链式作死")
    .textColor([UIColor greenColor])
    .viewMaker()    // 调用到UIView的链
    .frame(CGRectMake(20, 100, 100, 40))
    .backgroundColor([UIColor whiteColor])
    .addToSuperView(self.view)
    .labelMaker()   // 可以再回调到label链
    .textAlignment(NSTextAlignmentCenter)
    .layerMaker()   // 调到layer链
    .cornerRadius(5)
    .borderColor([UIColor redColor].CGColor)
    .borderWidth(1.f); 
```
这里，```UILabel```的链不能直接调用```UIView```链上的属性或方法，需要先调用到```UIView```的链上面，也就是```.viewMaker()```,同样的，其他子类也要调用父类的时候属性或方法的时候也需要这么做，同时，父类也可以再调用到子类的链上面，比如```.labelMaker()```

要注意的一点，调用到```CALayer```的链```.layerMaker()```之后，不能再回调回来，所以，最好在最后调用```Layer```链。因为这个属性的特殊性，每个子类都能直接调用```.layerMaker()```

目前支持的类有```UIView```,```UILabel```,```UIScrollView```,```UITableView```,```UICollectionView```,```UICollectionViewFlowLayout```,```UIControl```
```UIButton```,```UITextView```,```UITextField```,```UIImageView```,还有```CALayer```

作为```UITextField```和```UITextView```最常用且比较容易忽略的```UITextInputTraits```协议中的方法，这里分别复制到了```UITextField```和```UITextView```
两个类中，以便使用。。。我在想```UIControl```中的方法要不要也复制到```UIButton```和```UITextField```中去。。。










