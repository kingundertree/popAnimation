//
//  XXOpenDoorViewController.m
//  popAnimation
//
//  Created by xiazer on 14-5-5.
//  Copyright (c) 2014年 xiazer. All rights reserved.
//

#import "XXOpenDoorViewController.h"

@interface XXOpenDoorViewController ()

@end

@implementation XXOpenDoorViewController

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
    
    UIImage *doorImg = [UIImage imageNamed:@"Default-568h"];
    CGImageRef imageRef = doorImg.CGImage;
    
    UIImageView *leftView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width/2, self.view.bounds.size.height)];
    CGImageRef leftImgRef = CGImageCreateWithImageInRect(imageRef, CGRectMake(0, 0, self.view.bounds.size.width/2, self.view.bounds.size.height));
    [leftView setImage:[UIImage imageWithCGImage:leftImgRef]];
    CGImageRelease(leftImgRef);
    leftView.tag = 10;
    [leftView setCenter:CGPointMake(leftView.center.x - leftView.bounds.size.width / 2.0f, leftView.center.y)];
    [leftView.layer setAnchorPoint:CGPointMake(0, 0.5)];
    [self.view addSubview:leftView];

    UIImageView *rightView = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2, 0, self.view.bounds.size.width/2, self.view.bounds.size.height)];
    CGImageRef rightImgRef = CGImageCreateWithImageInRect(imageRef, CGRectMake(self.view.bounds.size.width/2, 0, self.view.bounds.size.width/2, self.view.bounds.size.height));
    [rightView setImage:[UIImage imageWithCGImage:rightImgRef]];
    CGImageRelease(rightImgRef);
    [rightView setCenter:CGPointMake(rightView.center.x + rightView.bounds.size.width/2.0f, rightView.center.y)];
    [rightView.layer setAnchorPoint:CGPointMake(1.0, 0.5)];
    rightView.tag = 11;
    [self.view addSubview:rightView];

    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    backBtn.frame = CGRectMake(0, 30, 60, 40);
    [backBtn setTitle:@"Back" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:backBtn];

    [self performSelector:@selector(openDoor) withObject:nil afterDelay:1.0];
}

- (void)openDoor{
    UIImageView *leftView = (UIImageView *)[self.view viewWithTag:10];
    UIImageView *rightView = (UIImageView *)[self.view viewWithTag:11];

    [UIView animateWithDuration:1.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        CATransform3D transform3D = CATransform3DMakeRotation(M_PI / 2.0, 0.0f, 1.0f, 0.0f);
        transform3D.m34 = 0.001f;
        [leftView.layer setTransform:transform3D];
        
        CATransform3D transform3D1 = CATransform3DMakeRotation(M_PI / 2.0, 0.0f, -1.0f, 0.0f);
        transform3D1.m34 = 0.001f;
        [rightView.layer setTransform:transform3D1];
    } completion:^(BOOL finished) {
        [self back:nil];
    }];
    
//    [UIView animateWithDuration:3 animations:^{
//         CATransform3D transform3D = CATransform3DMakeRotation(M_PI / 2.0, 0.0f, 1.0f, 0.0f);
//         transform3D.m34 = 0.001f;
//         [leftView.layer setTransform:transform3D];
//
//         CATransform3D transform3D1 = CATransform3DMakeRotation(M_PI / 2.0, 0.0f, -1.0f, 0.0f);
//         transform3D1.m34 = 0.001f;
//         [rightView.layer setTransform:transform3D1];
//    } completion:^(BOOL finished) {
//        [self back:nil];
//    }];
}
- (void)back:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
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
