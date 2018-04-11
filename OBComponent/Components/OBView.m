//
//  OBView.m
//  OBComponent
//
//  Created by Quyen Trinh on 4/11/18.
//  Copyright © 2018 Quyen Trinh. All rights reserved.
//

#import "OBView.h"

#define DEFAULT_SHADOW_COLOR                [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:0.12]
#define DEFAULT_SHADOW_OFFSET               CGSizeMake(0, 4.0)
#define DEFAULT_SHADOW_RADIUS               4.0
#define DEFAULT_SHADOW_OPACITY              0.5

@implementation OBView

- (void)setUpDefault {
    _shadowColor = DEFAULT_SHADOW_COLOR;
    _shadowOffset = DEFAULT_SHADOW_OFFSET;
    _shadowRadius = DEFAULT_SHADOW_RADIUS;
    _shadowOpacity = DEFAULT_SHADOW_OPACITY;
}

- (void)updateDisplay {
    self.layer.shadowColor = _shadowColor.CGColor;
    self.layer.shadowOffset = _shadowOffset;
    self.layer.shadowRadius = _shadowRadius;
    self.layer.shadowOpacity = _shadowOpacity;
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

#pragma mark - VARIABLE SETTING

- (void)setShadowColor:(UIColor *)shadowColor {
    _shadowColor = shadowColor;
    [self updateDisplay];
}

- (void)setShadowOffset:(CGSize)shadowOffset {
    _shadowOffset = shadowOffset;
    [self updateDisplay];
}

- (void)setShadowRadius:(CGFloat)shadowRadius {
    _shadowRadius = shadowRadius;
    [self updateDisplay];
}

- (void)setShadowOpacity:(CGFloat)shadowOpacity {
    _shadowOpacity = shadowOpacity;
    [self updateDisplay];
}

@end

