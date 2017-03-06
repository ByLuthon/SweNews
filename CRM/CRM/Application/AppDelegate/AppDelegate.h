//
//  AppDelegate.h
//  CRM
//
//  Created by macmini on 06/03/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    
}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) UILabel *lblLoaderBG;


-(void)setBorderToView:(UIView *)view withBorderWidth:(float)width radious:(float)radious color:(UIColor *)bordercolor;
- (void)animateWithShow:(BOOL)show withView:(UIView *)animatedView;

@end

