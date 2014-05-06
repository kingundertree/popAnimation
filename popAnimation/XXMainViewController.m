//
//  XXMainViewController.m
//  popAnimation
//
//  Created by xiazer on 14-5-5.
//  Copyright (c) 2014年 xiazer. All rights reserved.
//

#import "XXMainViewController.h"
#import "XXOpenDoorViewController.h"
#import "XXOpenDoorByPopViewController.h"

@interface XXMainViewController ()

@end

@implementation XXMainViewController

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
//    self.title = @"Pop Animation";
    self.navigationController.navigationBarHidden = YES;
    
    UITableView *tableList = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    tableList.dataSource = self;
    tableList.delegate = self;
    tableList.separatorStyle = UITableViewCellStyleDefault;
    [self.view addSubview:tableList];
}
#pragma mark -UITableViewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identify = @"cell";
    UITableViewCell *cell;
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }else{
        cell = [tableView dequeueReusableCellWithIdentifier:identify];
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = @"openDoor";
    }else{
        cell.textLabel.text = @"openDoor By pop";
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        XXOpenDoorViewController *openDoorVC = [[XXOpenDoorViewController alloc] init];
        [self.navigationController pushViewController:openDoorVC animated:YES];
    }else{
        XXOpenDoorByPopViewController *openDoorByPopVC = [[XXOpenDoorByPopViewController alloc] init];
        [self.navigationController pushViewController:openDoorByPopVC animated:YES];
    }
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
