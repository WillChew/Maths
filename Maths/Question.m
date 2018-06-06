//
//  AdditionQuestion.m
//  Maths
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        
        _startTime = [NSDate date];
        _leftValue = arc4random_uniform(91)+10;
        _rightValue = arc4random_uniform(91)+10;

        NSString *question2 = [NSString stringWithFormat:@"%ld + %ld ?", self.leftValue, self.rightValue];
        _question = question2 ;

        NSInteger answer = self.leftValue + self.rightValue;
        _answer = answer;
        
        _leftValue = arc4random_uniform(91)+10;
        _rightValue = arc4random_uniform(91)+10;
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime {
    NSTimeInterval timeItTook = [_endTime timeIntervalSinceDate:_startTime];
    return timeItTook;
}

- (BOOL)checkAnswer:(NSString *)userAnswer {
    NSInteger answerInt = [userAnswer integerValue];
    return (answerInt == self.answer);
    
}

- (void)generateQuestion {
}
@end
