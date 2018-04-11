//
//  OBLabel.m
//  OBComponent
//
//  Created by Quyen Trinh on 4/11/18.
//  Copyright © 2018 Quyen Trinh. All rights reserved.
//

#import "OBLabel.h"

#define         DEFAULT_PADDING        0
#define         DEFAULT_LINE_SPACING   6

@implementation OBLabel

- (void)setUpDefault {
    _padding = DEFAULT_PADDING;
    _lineGap = DEFAULT_LINE_SPACING;
}

- (void)updateDisplay {
    [self layoutIfNeeded];
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

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines
{
    CGRect result = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    result = CGRectInset(result, 0, -_padding);
    return result;
}

#pragma mark - VARIABLE SETTING

- (void)setPadding:(CGFloat)padding {
    _padding = padding;
    [self updateDisplay];
}

- (void)setLineGap:(CGFloat)lineGap {
    _lineGap = lineGap;
    
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.lineSpacing = _lineGap;
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:self.text attributes:
                                            @{NSParagraphStyleAttributeName : style}];
    self.attributedText = attributedString;
    
    [self updateDisplay];
}


@end


