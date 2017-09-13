//
//  MatrixOperation.m
//  HeartBeat
//
//  Created by Thinh Le on 2017-06-28.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import "MatrixOperation.h"

@implementation MatrixOperation

- (void)additionMatrix:(NSArray *)matrixA
           withMatrixB:(NSArray *)matrixB
              resultIn:(NSMutableArray *)matrixC
               withRow:(int)row
             andColumn:(int)col
 {
//    NSArray *sampleMatrix = @[@[ @0, @1, @2],
//                               @[ @3, @4, @5],
//                               @[ @6, @7, @8]];
    
    for (int i=0; i<row; i++) {
        NSArray *rowOfMatrixA = [matrixA objectAtIndex:i];
        NSArray *rowOfMatrixB = [matrixB objectAtIndex:i];
        NSMutableArray *rowOfMatrixC = [matrixC objectAtIndex:i];
        //NSLog(@"rowOfMatrixC = %@", rowOfMatrixC);

        for (int j=0; j<col; j++) {
            NSNumber *colItemOfMatrixA = [rowOfMatrixA objectAtIndex:j];
            NSNumber *colItemOfMatrixB = [rowOfMatrixB objectAtIndex:j];
            
            NSNumber *sum = @([colItemOfMatrixA integerValue] + [colItemOfMatrixB integerValue]);
            //NSLog(@"a = %@, b = %@, sum = %@", colItemOfMatrixA, colItemOfMatrixB, sum);
            [rowOfMatrixC replaceObjectAtIndex:j withObject:sum];
        }
    }
}

- (void)subtractionMatrix:(NSArray *)matrixA
           withMatrixB:(NSArray *)matrixB
              resultIn:(NSMutableArray *)matrixC
                  withRow:(int)row
                andColumn:(int)col
{
    for (int i=0; i<row; i++) {
        NSArray *rowOfMatrixA = [matrixA objectAtIndex:i];
        NSArray *rowOfMatrixB = [matrixB objectAtIndex:i];
        NSMutableArray *rowOfMatrixC = [matrixC objectAtIndex:i];
        
        for (int j=0; j<col; j++) {
            NSNumber *colItemOfMatrixA = [rowOfMatrixA objectAtIndex:j];
            NSNumber *colItemOfMatrixB = [rowOfMatrixB objectAtIndex:j];
            
            NSNumber *sum = @([colItemOfMatrixA integerValue] - [colItemOfMatrixB integerValue]);
            [rowOfMatrixC replaceObjectAtIndex:j withObject:sum];
        }
    }
}

- (void)multiplicationMatrix:(NSArray *)matrixA
                 withMatrixB:(NSArray *)matrixB
                    resultIn:(NSMutableArray *)matrixC
                    withRowA:(int)rowA
                  andColumnA:(int)colA
                    withRowB:(int)rowB
                  andColumnB:(int)colB
{
    // initializing matrix C to 0
    NSNumber *zero = [NSNumber numberWithDouble:0.0];
    for (int i=0; i<rowA; i++) {
        //NSMutableArray *rowOfMatrixC = [matrixC objectAtIndex:i];
        for (int j=0; j<colB; j++) {
            [[matrixC objectAtIndex:i] replaceObjectAtIndex:j withObject:zero];
        }
    }
    
    // mr. Crow matrix multiplication
//    for (int i = 0; i < rowA; i++) {
//        for (int j = 0; j < colB; j++) {
//            double sum = 0.0;
//            for (int k = 0; k < colA; k++) {
//                NSMutableArray *innerA = [matrixA objectAtIndex:i];
//                double numA = [[innerA objectAtIndex:k] doubleValue];
//                NSMutableArray * innerB = [matrixB objectAtIndex:k];
//                double numB = [[innerB objectAtIndex:j] doubleValue];
//                sum += numA * numB;
//            }
//            NSNumber *result = [NSNumber numberWithDouble:sum];
//            //[[newArray objectAtIndex:i] insertObject:result atIndex:j];
//            [[matrixC objectAtIndex:i] replaceObjectAtIndex:j withObject:result];
//        }
//    }

    // Thinh matrix multiplication
    for (int i=0; i<rowA; i++) {
        NSMutableArray *rowOfMatrixC = [matrixC objectAtIndex:i];
        for (int j=0; j<colB; j++) {
            //double sum = 0.0;
            for(int k=0; k<colA; k++) {
                // formulat C[i][j] += A[i][k] * B[k][j];
                NSNumber *matrixAik = [[matrixA objectAtIndex:i] objectAtIndex:k];
                NSNumber *matrixBkj = [[matrixB objectAtIndex:k] objectAtIndex:j];
                NSNumber *matrixCij = [[matrixC objectAtIndex:i] objectAtIndex:j];

                NSNumber *partialProduct = @([matrixAik doubleValue] * [matrixBkj doubleValue]);
                NSNumber *finalSum = @([matrixCij doubleValue] + [partialProduct doubleValue]);

               [rowOfMatrixC replaceObjectAtIndex:j withObject:finalSum];
            }
        }
    }
}

- (void)displayMatrix:(NSArray *)matrixA
             withName:(NSString *)name
              withRow:(int)row
            andColumn:(int)col
 {
    NSLog(@"%@", name);
    for (int i=0; i<row; i++) {
        NSMutableArray *rowOfMatrixC = [matrixA objectAtIndex:i];
//        for (int j=0; j<col; j++) {
//            NSNumber *matrixCij = [[firstMatrix objectAtIndex:i] objectAtIndex:j]; // correct
//            int Cij = [matrixCij intValue];
//            //NSLog(@"%d ", Cij);
//        }
        NSLog(@"%@", rowOfMatrixC);
    }
}

@end
