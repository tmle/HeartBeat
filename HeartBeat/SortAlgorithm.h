//
//  SortAlgorithm.h
//  HeartBeat
//
//  Created by Thinh Le on 2017-05-29.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SortAlgorithm : NSObject

-(void)hashTableCreation;
-(NSMutableArray *)heapSort:(NSMutableArray *)unsortedArray;
-(void)buildMaxHeap:(NSMutableArray *)Arr;
-(void)maxHeapify:(NSMutableArray *)Arr withIdxRoot:(int)indexRoot;
-(int)leftLeafIndex:(int)rootIndex;
-(int)rightLeafIndex:(int)rootIndex;
-(int)heapLastIndex:(NSMutableArray *)Arr;

-(NSArray *)mergeSort:(NSArray *)unsortedArray;
-(NSArray *)merge:(NSArray *)leftArr andRight:(NSArray *)rightArr;

-(NSArray *)quickSort:(NSMutableArray *)array;
-(NSArray *)insertionSort:(NSMutableArray *)array;
-(NSArray *)selectionSort:(NSMutableArray *)array;
-(NSArray *)bubbleSort:(NSMutableArray *)array;

-(void)displayArray:(NSArray *)array withString:(NSString *)str;

@end
