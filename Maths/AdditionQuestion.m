//
//  AdditionQuestion.m
//  Maths
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        
        _startTime = [NSDate date];
        
        int random1 = arc4random_uniform(91)+10;
        int random2 = arc4random_uniform(91)+10;
        
        NSString *number1 = [@(random1) stringValue];
        NSString *number2 = [@(random2) stringValue];
        
        NSString *question2 = [NSString stringWithFormat:@" %@ + %@ ?", number1, number2];
        _question = question2 ;

        int answer = random1 + random2;
        _answer = answer;
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



@end
