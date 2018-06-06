//
//  InputHandler.m
//  Maths
//
//  Created by Will Chew on 2018-06-05.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "InputHandler.h"



@implementation InputHandler


- (NSString*)handleInput {
    char input[255];
    fgets(input, 255, stdin);
    NSString *result = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    return [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end
