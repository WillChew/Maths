//
//  main.m
//  Maths
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        InputHandler *input = [[InputHandler alloc]init];
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        QuestionManager *manageQuestions = [[QuestionManager alloc]init];
        QuestionFactory *askQuestions = [[QuestionFactory alloc]init];

        
        while ((gameOn = YES)) {
           Question *addQuestion = [askQuestions generateRandomQuestion];

            [manageQuestions.questions addObject:addQuestion];
            NSLog(@"%@", [addQuestion question]);
            
            NSLog(@"Input a number:");
            
            NSString *userAnswer = [input handleInput];
            
            BOOL isCorrect = [addQuestion checkAnswer:userAnswer];
            if ([userAnswer isEqual:@"quit"]){
                break;
            }
            if (isCorrect) {
                score.right += 1;
                NSLog(@"Correct!");
            }
           else {
                score.wrong += 1;
                NSLog(@"Wrong!");
            }
            [score calculateScore];
            NSString *time = [manageQuestions timeOutput];
            NSLog(@"%@", time);
            
        }
   
    }
    return 0;
}
