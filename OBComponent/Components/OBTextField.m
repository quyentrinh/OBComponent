//
//  OBTextField.m
//  OBComponent
//
//  Created by Quyen Trinh on 4/11/18.
//  Copyright © 2018 Quyen Trinh. All rights reserved.
//

#import "OBTextField.h"

#define         DEFAULT_BORDER_WIDTH        0.5
#define         DEFAULT_BORDER_COLOR        [UIColor colorWithRed:230.0/255.0 green:235.0/255.0 blue:241.0/255.0 alpha:1]
#define         DEFAULT_CORNER_RADIUS       2.0
#define         DEFAULT_PADDING        10.0

@implementation OBTextField

- (void)setUpDefault {
    _cornerRadius = DEFAULT_CORNER_RADIUS;
    _borderWidth = DEFAULT_BORDER_WIDTH;
    _borderColor = DEFAULT_BORDER_COLOR;
}

- (void)updateDisplay {
    self.layer.cornerRadius = _cornerRadius;
    self.layer.borderColor = _borderColor.CGColor;
    self.layer.borderWidth = _borderWidth;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setUpDefault];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUpDefault];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpDefault];
    }
    return self;
}

- (void)prepareForInterfaceBuilder {
    [super prepareForInterfaceBuilder];
    [self updateDisplay];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self updateDisplay];
}

- (void)layoutSubviews {
    [super layoutSubviews];
}

#pragma mark - CUSTOM PADDING

- (CGRect)textRectForBounds:(CGRect)bounds {
    return [super textRectForBounds:UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(0, DEFAULT_PADDING, 0, DEFAULT_PADDING))];
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    return [super editingRectForBounds:UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(0, DEFAULT_PADDING, 0, DEFAULT_PADDING))];
}

#pragma mark - VARIABLE SETTING

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    [self updateDisplay];
    
}

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    [self updateDisplay];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    [self updateDisplay];
}


@end
