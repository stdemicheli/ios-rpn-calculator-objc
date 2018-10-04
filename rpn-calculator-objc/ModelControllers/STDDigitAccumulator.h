//
//  STDDigitAccumulator.h
//  rpn-calculator-objc
//
//  Created by De MicheliStefano on 05.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface STDDigitAccumulator : NSObject

- (void) addDigitWithNumericValue:(double)value;
- (void) addDecimalPoint;
- (void) clear;

@property (readonly) double value;

@end

NS_ASSUME_NONNULL_END
