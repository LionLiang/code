//
//  QYPickerVC.m
//  UICatelog
//
//  Created by qingyun on 15-3-2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYPickerVC.h"

@interface QYPickerVC () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) UIPickerView *pickerView;
@property (nonatomic, strong) NSArray *pickerViewArray;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UISegmentedControl *mainSeg;

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
    
    self.view.backgroundColor = [UIColor darkGrayColor];

    [self setupPickerView];
}

- (void)setupPickerView
{
    // 1. 创建
    _pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 10, 0, 0)];
    
    // 2. 属性设置
    _pickerView.delegate = self;
    _pickerView.dataSource = self;
    
    [self.view addSubview:_pickerView];
    
    self.pickerViewArray = @[@"kaiguo", @"zhangxu", @"dongdong", @"xiaosai", @"xinxin", @"dongkui", @"xuetao"];
    
}

#pragma mark - data source
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.pickerViewArray.count;
}

#pragma mark - delegate
// 宽度
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    return component == 0 ? 240 : 40;
}

// 行高
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 40;
}

// 标题
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *retStr;
    if (component == 0) {
        retStr = _pickerViewArray[row];
    } else {
//        retStr = [[NSNumber numberWithInt:row] stringValue];
        retStr = [NSString stringWithFormat:@"%ld", row];
    }
    
    return retStr;
}

// 属性标题
- (NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component
{
#if 0
    if (component == 0) {
        if (row == 0) {
            //
        }
    } else {
        if (row == 0) {
            //
        }
    }
#endif
    NSString *title;
    NSMutableAttributedString *attrTitle;
    if (row == 0) {
        if (component == 0) {
            title = _pickerViewArray[row];
        } else {
            title = [[NSNumber numberWithLong:row] stringValue];
        }
        
        attrTitle = [[NSMutableAttributedString alloc] initWithString:title];
        [attrTitle addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, title.length)];
        
    }
    return attrTitle;
}

@end
