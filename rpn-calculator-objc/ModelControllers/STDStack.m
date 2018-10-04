//
//  STDStack.m
//  rpn-calculator-objc
//
//  Created by De MicheliStefano on 04.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDStack.h"

@interface STDStack ()

@property (nonatomic) NSMutableArray *values;

@end

@implementation STDStack

- (instancetype)initWith:(NSArray *)array
{
    self = [super init];
    if (self) {
        _values = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)push:(double)value
{
    [self.values addObject:@(value)];
}

- (double)pop
{
    double lastObject = [[self.values lastObject] doubleValue];
    [self.values removeLastObject];
    return lastObject;
}

- (double)peek
{
    return [[self.values lastObject] doubleValue];
}

@end
