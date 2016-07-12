//
//  ViewController.m
//  BounceAnimation
//
//  Created by Jeremiah on 24/09/15.
//  Copyright (c) 2015 Jeremiah. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"

@interface ViewController ()
{
    UIDynamicAnimator *animator;
    UIGravityBehavior* gravityBehavior;
    UIView* square;
}

- (IBAction)push:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
   
    [super viewDidLoad];
     square = [[UIView alloc] initWithFrame:
                      CGRectMake(100, 100, 200, 200)];
    square.backgroundColor = [UIColor grayColor];
        [self.view addSubview:square];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)push:(id)sender {
    square.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
    
    
    
    [UIView animateWithDuration:0.3/1.5 animations:^{
        square.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3/2 animations:^{
            square.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{
                square.transform = CGAffineTransformIdentity;
            }];
        }];
    }];

    
}
@end
