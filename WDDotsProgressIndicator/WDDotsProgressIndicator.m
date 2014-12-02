//
//  dotIndicatorView.m
//  test1111111
//
//  Created by Wonder on 14/12/2.
//  Copyright (c) 2014年 Yin Xiaoyu. All rights reserved.
//

#import "WDDotsProgressIndicator.h"

@interface WDDotsProgressIndicator ()

@property (nonatomic, assign) BOOL isAnimating;

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation WDDotsProgressIndicator

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setupDefault];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupDefault];
    }
    
    return self;
}

- (void)startAnimating {
    [self adjustBounds];
    self.isAnimating = YES;
    _timer = [NSTimer scheduledTimerWithTimeInterval:self.interval target:self selector:@selector(appendDot:) userInfo:nil repeats:YES];
}

- (void)stopAnimating {
    self.isAnimating = NO;
    [_timer invalidate];
    [self removeFromSuperview];
}

- (void)setupDefault {
    self.text = @"正在登录";
    self.interval = 1.0f;
    self.numbersOfDots = 3;
}

- (void)appendDot:(NSTimer *)timer {
    if (self.text.length < self.numbersOfDots + 4) {
        self.text = [self.text stringByAppendingString:@"."];
        
        NSDate *endDate = [NSDate date];
        NSLog(@"%@", endDate);
    } else {
        self.text = @"正在登录";
    }
}

- (void)adjustBounds {
    UILabel *resultLabel = [[UILabel alloc] init];
    resultLabel.text = @"正在登录......";
    CGSize textSize = [resultLabel.text sizeWithFont:self.font];
    CGRect bounds = self.bounds;
    bounds.size.width = ceilf(textSize.width);
    bounds.size.height = ceilf(textSize.height);
    self.bounds = bounds;
}
@end
