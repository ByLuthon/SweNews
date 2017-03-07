//
//  CustomTabbarViewController.m
//  Medium
//
//  Created by macmini on 06/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "CustomTabbarViewController.h"

@interface CustomTabbarViewController ()

@end

@implementation CustomTabbarViewController

- (void)viewDidLoad
{
    
    scrl.contentSize = CGSizeMake(WIDTH * 5 , scrl.frame.size.height);

    [self HomeviewController];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - HOME

- (IBAction)Home:(id)sender
{
    [self HomeviewController];
}
-(void)HomeviewController
{
    if (!isHome)
    {
        isHome = TRUE;
        
        HomeViewController *currentObje = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
        currentObje.view.frame = CGRectMake(0, 0, WIDTH, scrl.frame.size.height);
        [self addChildViewController:currentObje];
        [scrl addSubview:currentObje.view];
        [currentObje didMoveToParentViewController:self];
    }
    
    
    CGPoint scrollPoint = CGPointMake(0, 0);
    [scrl setContentOffset:scrollPoint animated:NO];
}

#pragma mark - NEWS

- (IBAction)News:(id)sender
{
    [self CalledBNewsviewController];
}
-(void)CalledBNewsviewController
{
    if (!isNews)
    {
        isNews = TRUE;
        
        NewsViewController *currentObje = [self.storyboard instantiateViewControllerWithIdentifier:@"NewsViewController"];
        currentObje.view.frame = CGRectMake(WIDTH*1, 0, WIDTH, scrl.frame.size.height);
        [self addChildViewController:currentObje];
        [scrl addSubview:currentObje.view];
        [currentObje didMoveToParentViewController:self];
    }
    
    CGPoint scrollPoint = CGPointMake(WIDTH*1, 0);
    [scrl setContentOffset:scrollPoint animated:NO];
}


#pragma mark - Discover
- (IBAction)Discover:(id)sender
{
    [self calledDiscover];
}
-(void)calledDiscover
{
    if (!isDiscover)
    {
        isDiscover = TRUE;
        
        NetworkViewController *currentObje = [self.storyboard instantiateViewControllerWithIdentifier:@"NetworkViewController"];
        currentObje.view.frame = CGRectMake(WIDTH*2, 0, WIDTH, scrl.frame.size.height);
        [self addChildViewController:currentObje];
        [scrl addSubview:currentObje.view];
        [currentObje didMoveToParentViewController:self];
    }
    
    CGPoint scrollPoint = CGPointMake(WIDTH*2, 0);
    [scrl setContentOffset:scrollPoint animated:NO];
}

#pragma mark - Stats
- (IBAction)Stats:(id)sender
{
    [self calledStatsController];
}

-(void)calledStatsController
{
    if (!isStats)
    {
        isStats = TRUE;
        
        StatsViewController *currentObje = [self.storyboard instantiateViewControllerWithIdentifier:@"StatsViewController"];
        currentObje.view.frame = CGRectMake(WIDTH*3, 0, WIDTH, scrl.frame.size.height);
        [self addChildViewController:currentObje];
        [scrl addSubview:currentObje.view];
        [currentObje didMoveToParentViewController:self];
    }
    
    CGPoint scrollPoint = CGPointMake(WIDTH*3, 0);
    [scrl setContentOffset:scrollPoint animated:NO];
}


#pragma mark - Profile

- (IBAction)Profile:(id)sender
{
    [self openProfile];
}
-(void)openProfile
{
    if (!isProfile)
    {
        isProfile = TRUE;
        
        
        ProfileViewController *currentObje = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
        currentObje.view.frame = CGRectMake(WIDTH*4, 0, WIDTH, scrl.frame.size.height);
        [self addChildViewController:currentObje];
        //currentObje.strUserName = @"Bhavesh Nayi";
        //currentObje.isLoginUser = YES;
        [scrl addSubview:currentObje.view];
        [currentObje didMoveToParentViewController:self];
    }
    
    CGPoint scrollPoint = CGPointMake(WIDTH*4, 0);
    [scrl setContentOffset:scrollPoint animated:NO];
}
@end
