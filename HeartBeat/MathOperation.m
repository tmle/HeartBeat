//
//  Operation.m
//  HeartBeat
//
//  Created by Thinh Le on 2017-05-25.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import "MathOperation.h"

@implementation MathOperation

- (int)sumOfNum1:(int)num1 withNum2:(int)num2 {
    return num1 + num2;
}

- (int)differenceOfNum1:(int)num1 withNum2:(int)num2 {
    return num1 - num2;
}

- (int)productOfNum1:(int)num1 withNum2:(int)num2 {
    return num1 * num2;
}

- (float)quotienOfNum1:(int)num1 withNum2:(float)num2 {
    return num1 / num2;
}

- (int)maxOfNum1:(int)num1 andNum2:(int)num2 {
    return (num1 > num2) ? num1 : num2;
}

- (int)minOfNum1:(int)num1 andNum2:(int)num2 {
    return (num1 < num2) ? num1 : num2;
}

- (int)compFactorial:(int)num1 {
    if (num1 == 0) {
        return -1;
    } else if (num1 == 1) {
        return 1;
    } else {
       return [self compFactorial:num1 -1] * num1;
    }
}

- (NSMutableArray *)compFiboSeries:(int)numItem {
    
    NSMutableArray *fiboArray = [[NSMutableArray alloc] initWithObjects:@0, @1, nil];
    
    for (int i=1; i<numItem; i++) {
        int first  = [[fiboArray objectAtIndex:i-1] intValue];
        int second = [[fiboArray objectAtIndex:i] intValue];
        [fiboArray addObject:[NSNumber numberWithInt: first + second]];
    }
    
    return fiboArray;
    
}

@end
