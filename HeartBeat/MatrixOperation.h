//
//  MatrixOperation.h
//  HeartBeat
//
//  Created by Thinh Le on 2017-06-28.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MatrixOperation : NSObject

- (void)additionMatrix:(NSArray *)matrixA withMatrixB:(NSArray *)matrixB resultIn:(NSMutableArray *)matrixC withRow:(int)row andColumn:(int)col;
- (void)subtractionMatrix:(NSArray *)matrixA withMatrixB:(NSArray *)matrixB resultIn:(NSMutableArray *)matrixC withRow:(int)row andColumn:(int)col;
- (void)multiplicationMatrix:(NSArray *)matrixA withMatrixB:(NSArray *)matrixB resultIn:(NSMutableArray *)matrixC withRowA:(int)rowA andColumnA:(int)colA withRowB:(int)rowB andColumnB:(int)colB;
- (void)displayMatrix:(NSArray *)matrixA withName:(NSString *)name withRow:(int)row andColumn:(int)col;

@end
