//
//  XXMainViewController.h
//  popAnimation
//
//  Created by xiazer on 14-5-5.
//  Copyright (c) 2014年 xiazer. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CellClassType){
    OPENDOORNORMALVIEW,
    OPENDOORBYPOPVIEW,
    BACKGOUNDCOLORVIEW,
    BOUNDSVIEW,
    OPACITYVIEW,
    POSITIONVIEW,
    ROTATIONVIEW,
    SCALEVIEW,
    SIZEVIEW,
    SUBSCALEVIEW,
    SUBTRANSLATIONVIEW,
    TRANSLATIONVIEW,
    COMBINEVIEW
};

@interface XXMainViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic, assign) CellClassType cellClassType;
@end
