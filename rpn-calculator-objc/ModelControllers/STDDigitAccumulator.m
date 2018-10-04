//
//  STDDigitAccumulator.m
//  rpn-calculator-objc
//
//  Created by De MicheliStefano on 05.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDDigitAccumulator.h"

@interface STDDigitAccumulator ()

@property (nonatomic) NSMutableArray *digits;

@end

@implementation STDDigitAccumulator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _digits = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addDigitWithNumericValue:(double)value
{
    NSString *stringValue = [[NSString init] initWithDouble:value];
    [self.digits addObject:stringValue];
}

- (void)addDecimalPoint
{
    NSString *decimalPoint = @".";
    [self.digits addObject:decimalPoint];
}

- (void)clear
{
    self.digits = [[NSMutableArray alloc] init];
}

- (double) value
{
    NSString *string = [self.digits componentsJoinedByString:@""];
    return [string doubleValue];
}

@end
