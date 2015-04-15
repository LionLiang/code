//
//  QYViewController.h
//  UITabelViewDemo
//
//  Created by qingyun on 15-2-10.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QYViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) NSArray *dataArray;

@end
