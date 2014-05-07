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
#import "XXBackGoundColorByPopViewController.h"
#import "XXBoundsViewController.h"
#import "XXOpacityViewController.h"
#import "XXPositionViewController.h"
#import "XXRotationViewController.h"
#import "XXScaleViewController.h"
#import "XXSizeViewController.h"
#import "XXSubscaleViewController.h"
#import "XXSubtranslationViewController.h"
#import "XXTranslationViewController.h"
#import "XXCombineViewController.h"

@interface XXMainViewController ()
@property(nonatomic, strong) NSArray *cellArr;
@end

@implementation XXMainViewController
@synthesize cellClassType;
@synthesize cellArr;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.cellArr = [[NSArray alloc] initWithObjects:@"OPENDOORNORMALVIEW",@"OPENDOORBYPOPVIEW",@"BACKGOUNDCOLORVIEW",@"BOUNDSVIEW",@"OPACITYVIEW",@"POSITIONVIEW",@"ROTATIONVIEW",@"SCALEVIEW",@"SIZEVIEW",@"SUBSCALEVIEW",@"SUBTRANSLATIONVIEW",@"TRANSLATIONVIEW",@"COMBINEVIEW", nil];
    }
    return self;
}

+ (Class)classForType:(CellClassType)cellType{
    switch (cellType) {
        case OPENDOORNORMALVIEW:
            return [XXOpenDoorViewController class];
        case OPENDOORBYPOPVIEW:
            return [XXOpenDoorByPopViewController class];
        case BACKGOUNDCOLORVIEW:
            return [XXBackGoundColorByPopViewController class];
        case BOUNDSVIEW:
            return [XXBoundsViewController class];
        case OPACITYVIEW:
            return [XXOpacityViewController class];
        case POSITIONVIEW:
            return [XXPositionViewController class];
        case ROTATIONVIEW:
            return [XXRotationViewController class];
        case SCALEVIEW:
            return [XXScaleViewController class];
        case SIZEVIEW:
            return [XXSizeViewController class];
        case SUBSCALEVIEW:
            return [XXSubscaleViewController class];
        case SUBTRANSLATIONVIEW:
            return [XXSubtranslationViewController class];
        case TRANSLATIONVIEW:
            return [XXTranslationViewController class];
        case COMBINEVIEW:
            return [XXCombineViewController class];
        default:
            return nil;
    }
    
    return nil;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Pop Animation";
//    self.navigationController.navigationBarHidden = YES;
    
    UITableView *tableList = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    tableList.dataSource = self;
    tableList.delegate = self;
    tableList.separatorStyle = UITableViewCellStyleDefault;
    [self.view addSubview:tableList];
}
#pragma mark -UITableViewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.cellArr count];
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
    cell.textLabel.text = [NSString stringWithFormat:@"%@",[[self.cellArr objectAtIndex:indexPath.row] lowercaseString]];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Class cellClass = [XXMainViewController classForType:indexPath.row];
    UIViewController *cellView = [(UIViewController *)[cellClass alloc] init];
    cellView.title = [[self.cellArr objectAtIndex:indexPath.row] lowercaseString];
    [self.navigationController pushViewController:cellView animated:YES];
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
