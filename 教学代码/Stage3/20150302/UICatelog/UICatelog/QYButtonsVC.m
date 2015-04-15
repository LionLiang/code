//
//  QYButtonsVC.m
//  UICatelog
//
//  Created by qingyun on 15-2-27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYButtonsVC.h"

static NSString *kSectionTitleKey = @"sectionTitle";
static NSString *kLabelKey = @"label";
static NSString *kBtnKey = @"button";
static NSString *kSourceKey = @"source";

static NSString *kBtnCellID = @"btnCell";
static NSString *kSourceCellID = @"sourceCell";

#define kBtnTag 101



@interface QYButtonsVC ()

@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, strong) UIButton *grayBtn;
@property (nonatomic, strong) UIButton *attrBtn;

@end

@implementation QYButtonsVC

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Buttons";
    
    self.dataSource = @[
                        @{kSectionTitleKey:@"UIButton",
                          kLabelKey:@"Background Image",
                          kBtnKey:self.grayBtn,
                          kSourceKey:@"QYButtonsVC.m:\r(UIButton *)grayBtn"},
                        @{kSectionTitleKey:@"UIButton",
                          kLabelKey:@"Attributed Text",
                          kBtnKey:self.attrBtn,
                          kSourceKey:@"QYButtonsVC.m:\r(UIButton *)attrBtn"},
                        ];
    
    // 注册单元格 注册两种单元格
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kBtnCellID];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kSourceCellID];
    
}

- (UIButton *)grayBtn
{
    if (_grayBtn == nil) {

        // 创建grayBtn
        _grayBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 5, 100, 40)];
        [_grayBtn setTitle:@"Gray" forState:UIControlStateNormal];
        [_grayBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        UIImage *bgImg = [UIImage imageNamed:@"whiteButton"];
        UIImage *newBgImg = [bgImg resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
        [_grayBtn setBackgroundImage:newBgImg forState:UIControlStateNormal];
        
        UIImage *hlImg = [UIImage imageNamed:@"blueButton"];
        UIImage *newHlImg = [hlImg resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
        [_grayBtn setBackgroundImage:newHlImg forState:UIControlStateHighlighted];
        
        
        _grayBtn.tag = kBtnTag;
    }
    return _grayBtn;
}

- (UIButton *)attrBtn
{
    if (_attrBtn == nil) {
        // 创建
        _attrBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        _attrBtn.frame = CGRectMake(0, 5, 100, 40);
        
        // 添加属性文本
        NSMutableAttributedString *normalAttrStr = [[NSMutableAttributedString alloc] initWithString:@"Rounded"];
        
        // 添加前景色属性
        [normalAttrStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, normalAttrStr.length)];
        
        NSMutableAttributedString *hlAttrStr = [[NSMutableAttributedString alloc] initWithString:@"Rounded"];
        [hlAttrStr addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(0, hlAttrStr.length)];
        
        [_attrBtn setAttributedTitle:normalAttrStr forState:UIControlStateNormal];
        [_attrBtn setAttributedTitle:hlAttrStr forState:UIControlStateHighlighted];
        
        _attrBtn.tag = kBtnTag;
    }
    
    return _attrBtn;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataSource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return indexPath.row == 0 ? 50 : 38;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.dataSource[section] objectForKey:kSectionTitleKey];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    if (indexPath.row == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:kBtnCellID forIndexPath:indexPath];
        
        cell.textLabel.text = [self.dataSource[indexPath.section] objectForKey:kLabelKey];
        UIButton *btn = [self.dataSource[indexPath.section] objectForKey:kBtnKey];
        CGRect oldFrame = btn.frame;
        CGRect frame = CGRectMake(200, oldFrame.origin.y, oldFrame.size.width, oldFrame.size.height);
        btn.frame = frame;
        UIButton *btn2Remove = (UIButton *)[cell viewWithTag:kBtnTag];
        if (btn2Remove) {
            [btn2Remove removeFromSuperview];
        }
        [cell addSubview:btn];
        
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:kSourceCellID forIndexPath:indexPath];
        cell.textLabel.text = [self.dataSource[indexPath.section] objectForKey:kSourceKey];
    }
    
   cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
