//
//  ViewController.h
//  CRM
//
//  Created by macmini on 06/03/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface ViewController : UIViewController <UIScrollViewDelegate>
{
    __weak IBOutlet UIView *view_segment;
    __weak IBOutlet UILabel *lbl_signin;
    __weak IBOutlet UILabel *lbl_signup;
    __weak IBOutlet UILabel *lbl_underline;
    
    __weak IBOutlet UIScrollView *scrl;
    __weak IBOutlet UITextField *txt_login;
    __weak IBOutlet UITextField *txt_signup;
    
    IBOutlet UIView *view_login;
    IBOutlet UIView *view_signup;

}

- (IBAction)segmentTapped:(id)sender;
- (IBAction)SignIn:(id)sender;
- (IBAction)SignUp:(id)sender;


@end

