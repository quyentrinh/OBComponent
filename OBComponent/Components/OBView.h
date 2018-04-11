//
//  OBView.h
//  OBComponent
//
//  Created by Quyen Trinh on 4/11/18.
//  Copyright © 2018 Quyen Trinh. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface OBView : UIView
@property (nonatomic, copy) IBInspectable UIColor *shadowColor;
@property (nonatomic, assign) IBInspectable CGFloat shadowRadius;
@property (nonatomic, assign) IBInspectable CGFloat shadowOpacity;
@property (nonatomic, assign) IBInspectable CGSize shadowOffset;
@end
