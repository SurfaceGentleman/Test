//
//  secondViewController.h
//  UINavgation+UItabBarController
//
//  Created by 开朗的男子 on 2018/8/6.
//  Copyright © 2018年 开朗的男子. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong)UITableView * tableView;
@property(nonatomic, copy)NSArray * namesArray;
@property(nonatomic, copy)NSArray * wordsArray;
@property(nonatomic, copy)NSArray * imagesArray;
@property(nonatomic, copy)NSArray * placesArray;
@property(nonatomic, copy)NSArray * timesArray;
@property(nonatomic, copy)NSArray * friendsArray;

@end
