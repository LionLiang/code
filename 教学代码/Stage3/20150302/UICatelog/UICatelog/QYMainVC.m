//
//  QYMainVC.m
//  UICatelog
//
//  Created by qingyun on 15-2-27.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYMainVC.h"
#import "QYButtonsVC.h"

#define kTitleKey       @"title"
#define kSubTitleKey    @"subTitle"
#define kVCKey          @"viewController"
#define kMainCellID     @"MainVCCellID"

//#define kOldVersion

@interface QYMainCell : UITableViewCell
@end

@implementation QYMainCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
   return [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:kMainCellID];
}

@end


@interface QYMainVC ()
@property (nonatomic, strong) NSMutableArray *menulists;
@end

@implementation QYMainVC

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
    
    self.title = @"UICatelog";
    
    self.menulists = [NSMutableArray array];
    
    // buttons
#ifdef kOldVersion
    QYButtonsVC *btnVC = [[QYButtonsVC alloc] init];
    [self.menulists addObject:@{kTitleKey:@"Buttons",
                                kSubTitleKey:@"Various uses of UIButton",
                                kVCKey:btnVC}];
#endif
    
    [self.menulists addObject:@{kTitleKey:@"Buttons",
                                kSubTitleKey:@"Various uses of UIButton",
                                kVCKey:@"QYButtonsVC"}];
    [self.menulists addObject:@{kTitleKey:@"SearchBar",
                                kSubTitleKey:@"Use of UISearchBar",
                                kVCKey:@"QYSearchBarVC"}];
    [self.menulists addObject:@{kTitleKey:@"TextView",
                                kSubTitleKey:@"Use of UITextView",
                                kVCKey:@"QYTextViewVC"}];
    [self.menulists addObject:@{kTitleKey:@"Pickers",
                                kSubTitleKey:@"Use of UIPickerView",
                                kVCKey:@"QYPickerVC"}];
    
    

    
    
    
    [self.tableView registerClass:[QYMainCell class] forCellReuseIdentifier:kMainCellID];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.menulists.count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kMainCellID];
    
    // Configure the cell...
    cell.textLabel.text = self.menulists[indexPath.row][kTitleKey];
    cell.detailTextLabel.text = self.menulists[indexPath.row][kSubTitleKey];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    
    return cell;
}

#pragma mark - table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
#ifdef kOldVersion
    UIViewController *vc = self.menulists[indexPath.row][kVCKey];
    
    [self.navigationController pushViewController:vc animated:YES];
#endif
    
    NSString *vcName = [self.menulists[indexPath.row] objectForKey:kVCKey];
    
    NSLog(@"%@", vcName);
    
    UIViewController *vc = [[NSClassFromString(vcName) alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
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
