//
//  STDStack.h
//  rpn-calculator-objc
//
//  Created by De MicheliStefano on 04.10.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface STDStack<T> : NSObject

- (instancetype)initWith:(NSArray*)array;

- (void)push:(T)value;
- (void)pop;
- (T)peek;

@end

NS_ASSUME_NONNULL_END
