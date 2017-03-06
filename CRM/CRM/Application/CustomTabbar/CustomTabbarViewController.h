//
//  CustomTabbarViewController.h
//  Medium
//
//  Created by macmini on 06/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface CustomTabbarViewController : UIViewController
{
    
    __weak IBOutlet UIScrollView *scrl;
    __weak IBOutlet UIView *view_tabbar;
    
    
    BOOL isHome;
    BOOL isNews;
    BOOL isDiscover;
    BOOL isStats;
    BOOL isProfile;

}
- (IBAction)Home:(id)sender;
- (IBAction)News:(id)sender;
- (IBAction)Discover:(id)sender;
- (IBAction)Stats:(id)sender;
- (IBAction)Profile:(id)sender;

@end
