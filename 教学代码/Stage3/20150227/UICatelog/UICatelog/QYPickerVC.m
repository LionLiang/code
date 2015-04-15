//
//  QYPickerVC.m
//  UICatelog
//
//  Created by qingyun on 15/3/2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYPickerVC.h"

@interface QYPickerVC ()<UIPickerViewDataSource,UIPickerViewDelegate>

@property (nonatomic,strong)UIPickerView *pickerView;
@property (nonatomic,strong)NSArray *pickerViewArray;
@property (nonatomic,strong)UILabel *lable;
@property (nonatomic,strong)UISegmentedControl *mainSeg;



@end

@implementation QYPickerVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Pickers";
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self setupPickerView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupPickerView
{
    _pickerView = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 10, 0, 0)];
    _pickerView.delegate = self;
    _pickerView.dataSource = self;
    [self.view addSubview:_pickerView];
    
    
    

}


@end
