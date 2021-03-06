//
//  UITableView+NightVersion.m
//  UITableView+NightVersion
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and 
//  test it. And finally open a pull request.

#import "UITableView+NightVersion.h"
#import "DKNightVersionManager.h"
#import "DKNightVersionConstants.h"
#import "UIView+NightVersion.h"
#import "UIScrollView+NightVersion.h"


@implementation UITableView (NightVersion)

#pragma mark - ChangeColor

- (void)changeColor {
    
    [UIView animateWithDuration:NIGHT_ANIMATION_DURATION animations:^{
        
        [self setBackgroundColor:([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) ? self.nightBackgroundColor : self.normalBackgroundColor];
        
        [self setSeparatorColor:([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) ? self.nightSeparatorColor : self.normalSeparatorColor];
        
    }];
}

@end
