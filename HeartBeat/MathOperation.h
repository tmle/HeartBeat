//
//  Operation.h
//  HeartBeat
//
//  Created by Thinh Le on 2017-05-25.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MathOperation : NSObject

- (int)sumOfNum1:(int)num1 withNum2:(int)num2;
- (int)differenceOfNum1:(int)num1 withNum2:(int)num2;
- (int)productOfNum1:(int)num1 withNum2:(int)num2;
- (float)quotienOfNum1:(int)num1 withNum2:(float)num2;
- (int)maxOfNum1:(int)num1 andNum2:(int)num2;
- (int)minOfNum1:(int)num1 andNum2:(int)num2;
- (int)compFactorial:(int)num1;
- (NSMutableArray *)compFiboSeries:(int)numItem;
@end
