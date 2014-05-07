//
//  XXRootViewController.m
//  popAnimation
//
//  Created by xiazer on 14-5-6.
//  Copyright (c) 2014年 xiazer. All rights reserved.
//

#import "XXRootViewController.h"


@interface XXRootViewController ()

@end

@implementation XXRootViewController
@synthesize show;
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

    self.show = [[UIView alloc] initWithFrame:CGRectMake(110, 200, 100, 100)];
    [self.show setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:self.show];
    
    
    //添加手势
    UITapGestureRecognizer *gestureForSpring = [[UITapGestureRecognizer alloc] init];
    gestureForSpring.delegate = self;
    [gestureForSpring addTarget:self action:@selector(tapGes:)];
    [self.view addGestureRecognizer:gestureForSpring];
}

-(void)tapGes:(UITapGestureRecognizer *)tap{
    NSLog(@"tapGes");
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
