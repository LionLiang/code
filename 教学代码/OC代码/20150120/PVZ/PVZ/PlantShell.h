//
//  PlantShell.h
//  PVZ
//
//  Created by qingyun on 15/1/19.
//  Copyright (c) 2015年 Poppei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlantShell : NSObject
{
    int _power;
}

- (void)setPower:(int)power;
- (int)power;
@end
