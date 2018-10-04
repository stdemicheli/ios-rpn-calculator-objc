//
//  STDCalculator.m
//  rpn-calculator-objc
//
//  Created by De MicheliStefano on 04.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDCalculator.h"
#import "STDStack.h"

@interface STDCalculator ()

@property STDStack *stack;

@end

@implementation STDCalculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _stack = [[STDStack alloc] initWith:@[@0.0, @0.0]];
    }
    return self;
}

- (void)pushNumber:(double)value
{
    [self.stack push:value];
}

- (void)applyOperator:(STDOperator)operatr
{
    double operand2 = [self.stack pop];
    double operand1 = [self.stack pop];
    
    double result;
    
    switch (operatr) {
        case add:
            result = operand1 + operand2;
            break;
        case subtract:
            result = operand1 - operand2;
            break;
        case multiply:
            result = operand1 * operand2;
            break;
        case divide:
            result = operand1 / operand2;
            break;
        default:
            break;
    }
}

- (void)clear
{
    self.stack = [[STDStack alloc] initWith:@[@0.0, @0.0]];
}

- (double)topValue
{
    return [self.stack peek];
}

@end
