//
//  MyTableViewCell.m
//  UITableViewCellDemo
//
//  Created by qingyun on 15-2-12.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    NSLog(@"textLabel >>>>> %@", NSStringFromCGRect(self.textLabel.frame));
    self.textLabel.frame = CGRectMake(200, 20, 120, 40);
    NSLog(@"textLabel >>>>> %@", NSStringFromCGRect(self.textLabel.frame));
    NSLog(@"detailTextLabel >>>>> %@", NSStringFromCGRect(self.detailTextLabel.frame));
    NSLog(@"imageView >>>>> %@", NSStringFromCGRect(self.imageView.frame));
    self.imageView.frame = CGRectMake(200, 60, 17, 17);
}

@end
