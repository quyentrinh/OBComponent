//
//  OBTextField.h
//  OBComponent
//
//  Created by Quyen Trinh on 4/11/18.
//  Copyright © 2018 Quyen Trinh. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface OBTextField : UITextField
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, copy) IBInspectable UIColor *borderColor;
@end
