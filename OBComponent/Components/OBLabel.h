//
//  OBLabel.h
//  OBComponent
//
//  Created by Quyen Trinh on 4/11/18.
//  Copyright © 2018 Quyen Trinh. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface OBLabel : UILabel
@property (nonatomic, assign) IBInspectable CGFloat padding;
@property (nonatomic, assign) IBInspectable CGFloat lineGap;
@end
