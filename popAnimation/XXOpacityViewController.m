//
//  XXOpacityViewController.m
//  popAnimation
//
//  Created by xiazer on 14-5-6.
//  Copyright (c) 2014年 xiazer. All rights reserved.
//

#import "XXOpacityViewController.h"

@interface XXOpacityViewController ()

@end

@implementation XXOpacityViewController

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
    POPBasicAnimation *basicAnimation = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerOpacity];
    
    if (self.show.alpha == 1.0) {
        basicAnimation.toValue = @(0.3);
    }else{
        basicAnimation.toValue = @(1.0);
    }
    
    [self.show.layer pop_addAnimation:basicAnimation forKey:@"changeOpacity"];
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
