//
//  XXScaleViewController.m
//  popAnimation
//
//  Created by xiazer on 14-5-6.
//  Copyright (c) 2014年 xiazer. All rights reserved.
//

#import "XXScaleViewController.h"

@interface XXScaleViewController ()

@end

@implementation XXScaleViewController

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
    POPSpringAnimation *springAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerScaleY];
    if (self.show.frame.origin.y == 200) {
        springAnimation.toValue = @(10.0);
    }else{
        springAnimation.toValue = @(1.0);
    }
    
    [self.show.layer pop_addAnimation:springAnimation forKey:@"changeScale"];
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
