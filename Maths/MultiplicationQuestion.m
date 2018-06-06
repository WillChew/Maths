//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Will Chew on 2018-06-06.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
NSString *number1 = [@(self.leftValue) stringValue];
NSString *number2 = [@(self.rightValue) stringValue];

NSString *question2 = [NSString stringWithFormat:@"%@ * %@?", number1, number2];
self.question = question2 ;

NSInteger answer = self.leftValue * self.rightValue;
self.answer = answer;
}
@end
