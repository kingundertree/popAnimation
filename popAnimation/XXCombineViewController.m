//
//  XXCombineViewController.m
//  popAnimation
//
//  Created by xiazer on 14-5-7.
//  Copyright (c) 2014年 xiazer. All rights reserved.
//

#import "XXCombineViewController.h"

@interface XXCombineViewController ()

@end

@implementation XXCombineViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)tapGes:(UITapGestureRecognizer *)tap{
    POPSpringAnimation *springAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewFrame];
    
    CGRect normal = CGRectMake(110, 200, 100, 100);
    CGRect end = CGRectMake(250, 400, 10, 10);
    if (self.show.frame.origin.x == 110) {
        springAnimation.fromValue = [NSValue valueWithCGRect:normal];
        springAnimation.toValue = [NSValue valueWithCGRect:end];
    }else{
        springAnimation.fromValue = [NSValue valueWithCGRect:end];
        springAnimation.toValue = [NSValue valueWithCGRect:normal];
    }
    
    [self.show.layer pop_addAnimation:springAnimation forKey:@"changeFrame"];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
