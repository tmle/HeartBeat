//
//  SortAlgorithm.m
//  HeartBeat
//
//  Created by Thinh Le on 2017-05-29.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import "SortAlgorithm.h"

@implementation SortAlgorithm

/*
 
 Given license plate having "5FAU288" - nonZeroNum, Char, Char, Char, Num, Num, Num
 Simple example: "A123" - Char, Num, Num, Num.
 
 check first Char, hash into an array of 26 entries. Each entry is another data structure
 
 NSMutableArray *hashTable = [[NSMutableArray alloc] init];
 
 A -> [123], [212], [234], nil
 X -> [234], [321], [451], nil
 
 
 */

-(void)hashTableCreation {
    
    //NSLog(@"opening");

    //BOOL contain = NO;
    NSString *contain;
    NSHashTable *hashTable = [NSHashTable weakObjectsHashTable];
    
    //static NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    static NSString *letters = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSString *str;
    NSString *testString = @"testString";
    NSString *searchStr = @"5AAA333"; //@"XX000";
    
    int numId = 1000; // 25244537/2; // 9*26*26*1000; //9*26*26*26*1000 = 158,184,000;  9*26*26*1000 = 6084000
    BOOL containedDuplication = YES;
    int firstDigit;
    
    NSDate *start = [NSDate date];
    for (int i=0; i<numId; i++) {
        NSMutableString *randomString = [NSMutableString stringWithCapacity:3];
        for (int j=0; j<3; j++) {
            [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
        }
        
        firstDigit = arc4random_uniform(10);
        if (firstDigit != 0) {
            str = [NSString stringWithFormat:@"%d%@%.3d", firstDigit, randomString, arc4random_uniform(1000)];
        }
        if ((i == numId - 1) && containedDuplication) {
            searchStr = str;
            //NSLog(@"search string = %@", searchStr);
        }
        //NSLog(@"%@", str);
        [hashTable addObject:str];
        str = nil;
    }
    
    NSTimeInterval timeInterval = fabs([start timeIntervalSinceNow]);
    NSLog(@"Generate %d licence plates for the registered cars in California in %0.3f sec (Dec. 2016)", numId, timeInterval);
    
    start = [NSDate date];
    NSLog(@"search string = %@", searchStr);
    contain = ([hashTable containsObject:searchStr]) ? @"does" : @"does not";
    timeInterval = fabs([start timeIntervalSinceNow]);
    NSLog(@"Search for a particular license plate in %0.6f sec", timeInterval);
    
    NSLog(@"Database using hashTable %@ contain object %@", contain, testString);
    
    //NSLog(@"closing");

}

-(NSArray *)heapSort:(NSMutableArray *)unsortedArray
{
    // start by building a max(or min) heap
    //
    if(unsortedArray.count<2)
        return unsortedArray;
    
    [self buildMaxHeap:unsortedArray];
    NSMutableArray* sortedArray = [NSMutableArray new];
    for (int i = (int)unsortedArray.count-1; i>0; i--) {
        [sortedArray insertObject:unsortedArray[0] atIndex:0];
        [unsortedArray exchangeObjectAtIndex:0 withObjectAtIndex:unsortedArray.count-1];
        [unsortedArray removeLastObject];
        [self maxHeapify:unsortedArray withIdxRoot:0];
    }
    [sortedArray insertObject:unsortedArray[0] atIndex:0];
    return sortedArray;
}

-(void)buildMaxHeap:(NSMutableArray *)Arr {
    if (Arr.count<2) return;
    int lastParentIndex = (int)Arr.count/2;
    for (int parentIndex = lastParentIndex; parentIndex >= 0; parentIndex--) {
        [self maxHeapify:Arr withIdxRoot:parentIndex];
    }
}

-(void)maxHeapify:(NSMutableArray *)Arr withIdxRoot:(int)indexRoot {
    if ([self leftLeafIndex:indexRoot] > [self heapLastIndex:Arr]) {
        return;
    }
    
    int rootValue =[Arr[indexRoot] intValue];
    int largestIndex = indexRoot;
    int largestValue = rootValue;
    
    int leftLeafValue = [Arr[[self leftLeafIndex:indexRoot]] intValue];
    if(leftLeafValue>rootValue) {
        largestIndex = [self leftLeafIndex:indexRoot];
        largestValue = leftLeafValue;
    }
    if([self rightLeafIndex:indexRoot] <= [self heapLastIndex:Arr]){
        int rightLeafValue = [Arr[[self rightLeafIndex:indexRoot]] intValue];
        if(rightLeafValue>largestValue) {
            largestIndex = [self rightLeafIndex:indexRoot];
            largestValue = rightLeafValue;
        }
    }
    
    if (largestIndex != indexRoot) {
        [Arr exchangeObjectAtIndex:indexRoot withObjectAtIndex:largestIndex];
        [self maxHeapify:Arr withIdxRoot:largestIndex];
    }
}

-(int)leftLeafIndex:(int)rootIndex {
    int heapIndex = rootIndex+1;
    return heapIndex*2-1;
}

-(int)rightLeafIndex:(int)rootIndex {
    int heapIndex = rootIndex+1;
    return heapIndex*2+1-1;
}

-(int)heapLastIndex:(NSMutableArray *)Arr {
    return (int)Arr.count-1;
}

-(NSArray *)mergeSort:(NSArray *)unsortedArray
{
    // continously partition the array into two left and right subarray
    // at the lowest level, where each subarray has only one item, compare and merge them into a larger array
    // continously compare items in each left and right subarray into a larger array.
    // continously compare items and merge until the final large (original sized) array is obtained.

    if (unsortedArray.count < 2) {
        return unsortedArray;
    }
    
    long middle = (unsortedArray.count/2);
    NSRange left = NSMakeRange(0, middle);
    NSRange right = NSMakeRange(middle, (unsortedArray.count - middle));
    NSArray *leftArr = [unsortedArray subarrayWithRange:left];
    NSArray *rightArr = [unsortedArray subarrayWithRange:right];
    //Or iterate through the unsortedArray and create your left and right array
    //for left array iteration starts at index =0 and stops at middle, for right array iteration starts at midde and end at the end of the unsorted array
    NSArray *resultArray =[self merge:[self mergeSort:leftArr] andRight:[self mergeSort:rightArr]];
    return resultArray;
}

-(NSArray *)merge:(NSArray *)leftArr andRight:(NSArray *)rightArr
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    int right = 0;
    int left = 0;
    
    while (left < [leftArr count] && right < [rightArr count]) {
        if ([[leftArr objectAtIndex:left] intValue] < [[rightArr objectAtIndex:right] intValue]) {
            [result addObject:[leftArr objectAtIndex:left++]];
            //NSLog(@"result = %@", result);
        } else {
            [result addObject:[rightArr objectAtIndex:right++]];
            //NSLog(@"result = %@", result);
        }
    }
    
    NSRange leftRange = NSMakeRange(left, ([leftArr count] - left));
    NSRange rightRange = NSMakeRange(right, ([rightArr count] - right));
    
    NSArray *newRight = [rightArr subarrayWithRange:rightRange];
    NSArray *newLeft = [leftArr subarrayWithRange:leftRange];
    
    newLeft = [result arrayByAddingObjectsFromArray:newLeft];
    return [newLeft arrayByAddingObjectsFromArray:newRight];
}

-(NSArray *)quickSort:(NSMutableArray *)array
{
    if (array.count <1 ) { return nil;}
    
    // pick the first value in the array as pivot point
    NSMutableArray *lessArr = [[NSMutableArray alloc] init];
    NSMutableArray *moreArr = [[NSMutableArray alloc] init];
    
    //int pivotIdx = 0; // or pivot index
    NSNumber *pivotVal = [array objectAtIndex:0];
    //[array removeObjectAtIndex:0];
    
    for (int i = 1; i <(int)array.count; i++) {
        if ([array objectAtIndex:i] < pivotVal) {
            [lessArr addObject:[array objectAtIndex:i]];
        } else {
            [moreArr addObject:[array objectAtIndex:i]];
        }
    }
    
    NSMutableArray *sortedArr = [[NSMutableArray alloc] init];
    [sortedArr addObjectsFromArray:[self quickSort:lessArr]];
    [sortedArr addObject:pivotVal];
    [sortedArr addObjectsFromArray:[self quickSort:moreArr]];
    
    return sortedArr;
    
}

-(NSArray *)quickSort2:(NSMutableArray *)array
{
    // generate a random pivot point in the array, say p
    // all numbers that are less than p, are stored in left-subarray
    // all numbers that are more than p, are stored in right-subarray
    // repeat the same process in the left-subarray, and right sub-array
    // continue until finish.
    if (array.count < 1) { return nil; }

    NSMutableArray *lessArray = [[NSMutableArray alloc] init];
    NSMutableArray *greaterArray = [[NSMutableArray alloc] init];
    
    int randomPivotPoint = arc4random() % array.count;
    NSNumber *pivotValue = [array objectAtIndex:randomPivotPoint];
    [array removeObjectAtIndex:randomPivotPoint];
    
    for (NSNumber *num in array) {
        //quickSortCount++; //This is required to see how many iterations does it take to sort the array using quick sort
        if (num < pivotValue) {
            [lessArray addObject:num];
        } else {
            [greaterArray addObject:num];
        }
    }
    
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:greaterArray]];
    return sortedArray;
}

-(NSArray *)insertionSort:(NSMutableArray *)array {
    // take the first one on the array, find its position, insert it
    // take the next one on the array, find its position, then insert it
    // continue until the last item in the array.
    if (array.count <= 1) { return nil; }

    int comparison_counter = 0;
    int swap_counter = 0;

    for (int i = 1; i < (int)array.count; i++)
    {
        int j = i;
        //NSLog(@"outter loop j = %d\n", j);
        comparison_counter++;
        while(j>0 && [array objectAtIndex:(j-1)] > [array objectAtIndex:j])
        {
            //NSLog(@"j =%d, array[j-1] = %@, array[j] = %@", j, [array objectAtIndex:(j-1)], [array objectAtIndex:j]);
            swap_counter++;
            [array exchangeObjectAtIndex:j withObjectAtIndex:(j-1)];
            j--;
            //NSLog(@"inner loop j=%d\n", j);
        }
    }
    NSLog(@"comparison_counter = %d, swap_counter = %d", comparison_counter, swap_counter); //not in production implementation.

    return array;
}

-(NSArray *)selectionSort:(NSMutableArray *)array {
    // scane the entire array for the smallest one, insert it to the first position
    // continue scanning for the second smallest, third smallest, etc.
    if (array.count <= 1) { return nil; }

    int comparison_counter = 0;
    int swap_counter = 0;
    int idxExtremum;
    
    for (int i=0; i<(int)array.count; i++ )
    {
        //for each element in the array, assume that the first element is the minimum number
        idxExtremum = i;
        for (int j=i+1; j<(int)array.count ; j++)
        {
            //Iterate through each element in the array starting from the next element and compare with minimum number which was set in the j-loop
            comparison_counter++;
            if ([array objectAtIndex:idxExtremum] > [array objectAtIndex:j])
            {
                idxExtremum = j; //record the index of the minimum number.
            }
        }
        
        if (idxExtremum != i) //if the recorded index is different
        {
            swap_counter++;
            [array exchangeObjectAtIndex:i withObjectAtIndex:idxExtremum];
        }
    }
    
    NSLog(@"comparison_counter = %d, swap_counter = %d", comparison_counter, swap_counter); //not in production implementation.
    
    return array;
}

-(NSArray *)bubbleSort:(NSMutableArray *)array
{
    // scan from left to right, swap a pair if they are not in order
    // continuous scanning many passes, until the array is in order.
    if (array.count <= 1) { return nil; }

    int comparison_counter = 0;
    int swap_counter = 0;
    BOOL swapped = YES;
    
    while (swapped)
    {
        swapped = NO;
        for (int i=1; i<(int)array.count; i++)
        {
            // the ascending order is obtained by having '>'
            // while descending order is '<'
            comparison_counter++;
            if ([array objectAtIndex:(i-1)] > [array objectAtIndex:i]) {
                [array exchangeObjectAtIndex:(i-1) withObjectAtIndex:i];
                swapped = YES;
                //NSLog(@"swapped %d with %@", [[array objectAtIndex:i-1] intValue], [array objectAtIndex:i]);
                swap_counter++; //Increment the count everytime a switch is done, this line is not required in the production implementation.
            }
        }
    }
    NSLog(@"comparison_counter = %d, swap_counter = %d", comparison_counter, swap_counter); //not in production implementation.
    
    return array;
}

- (void)displayArray:(NSArray *)array withString:(NSString *)str
{
    NSLog(@"%@: ", str);
    NSLog(@"[");
    for (int i=0; i< array.count; i++)
    {
        NSLog(@" %d", [[array objectAtIndex:i] intValue]);
    }
    NSLog(@"]\n");
}

@end
