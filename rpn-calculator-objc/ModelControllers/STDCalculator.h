//
//  STDCalculator.h
//  rpn-calculator-objc
//
//  Created by De MicheliStefano on 04.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface STDCalculator : NSObject

typedef NS_ENUM(NSInteger, STDOperator) {
    add, subtract, multiply, divide
};
- (void)pushNumber:(double)value;
- (void)applyOperator:(STDOperator)operatr;
- (void)clear;

@property (nonatomic) double *topValue;

@end

NS_ASSUME_NONNULL_END
