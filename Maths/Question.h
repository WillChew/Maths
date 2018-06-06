//
//  AdditionQuestion.h
//  Maths
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic, assign) NSInteger leftValue;
@property (nonatomic, assign) NSInteger rightValue;


- (NSInteger)answer;

- (BOOL)checkAnswer:(NSString *)userAnswer;

- (NSTimeInterval)answerTime;

- (void)generateQuestion;




@end
