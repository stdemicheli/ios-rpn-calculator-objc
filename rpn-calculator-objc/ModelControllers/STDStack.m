//
//  STDStack.m
//  rpn-calculator-objc
//
//  Created by De MicheliStefano on 04.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import "STDStack.h"

@interface STDStack<T> ()

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

- (void)push:(id)value
{
    [self.values addObject:value];
}

- (void)pop
{
    [self.values removeLastObject];
}

- (id)peek
{
    return [self.values lastObject];
}

@end
