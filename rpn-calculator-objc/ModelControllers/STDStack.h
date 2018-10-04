//
//  STDStack.h
//  rpn-calculator-objc
//
//  Created by De MicheliStefano on 04.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface STDStack : NSObject

- (instancetype)initWith:(NSArray*)array;

- (void)push:(double)value;
- (double)pop;
- (double)peek;

@end

NS_ASSUME_NONNULL_END
