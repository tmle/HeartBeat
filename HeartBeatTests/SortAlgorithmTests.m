//
//  SortAlgorithmTests.m
//  HeartBeat
//
//  Created by Thinh Le on 2017-06-28.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SortAlgorithm.h"

@interface SortAlgorithmTests : XCTestCase

@property (nonatomic) SortAlgorithm *sortAlgorithm;

@end

@implementation SortAlgorithmTests

- (void)setUp {
    [super setUp];
    self.sortAlgorithm = [[SortAlgorithm alloc] init];
}

- (void)tearDown {
    self.sortAlgorithm = nil;
    [super tearDown];
}

- (void)testHeapSort
{
    NSMutableArray *unsortedArray = [NSMutableArray arrayWithObjects:@101, @201, @301, @121, @11, @123, @21, @14, @32, @76, @89, @987, @65, nil];
    NSMutableArray *sortedArray   = [NSMutableArray arrayWithObjects:@11, @14, @21, @32, @65, @76, @89, @101, @121, @123, @201, @301, @987, nil];
    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@121, @382, @23, @34, @123, @1024, @21, @89, @45, @213, nil];
    NSMutableArray *expectedResult = [NSMutableArray arrayWithObjects:@21, @23, @34, @45, @89, @121, @123, @213, @382, @1024, nil];
    
    NSArray *resultArray = [self.sortAlgorithm heapSort:array2];
    XCTAssertEqualObjects (resultArray, expectedResult, "resultArray is not the same as sortedArray");
}

- (void)testMergeSort
{
    NSMutableArray *unsortedArray = [NSMutableArray arrayWithObjects:@101, @201, @301, @121, @11, @123, @21, @14, @32, @76, @89, @987, @65, nil];
    NSMutableArray *sortedArray   = [NSMutableArray arrayWithObjects:@11, @14, @21, @32, @65, @76, @89, @101, @121, @123, @201, @301, @987, nil];
    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@121, @382, @23, @34, @123, @1024, @21, @89, @45, @213, nil];
    NSMutableArray *expectedResult = [NSMutableArray arrayWithObjects:@21, @23, @34, @45, @89, @121, @123, @213, @382, @1024, nil];
    
    NSArray *resultArray = [self.sortAlgorithm mergeSort:array2];
    XCTAssertEqualObjects (resultArray, expectedResult, "resultArray is not the same as sortedArray");
}

//- (void)testQuickSort
//{
//    NSMutableArray *unsortedArray = [NSMutableArray arrayWithObjects:@101, @201, @301, @121, @11, @123, @21, @14, @32, @76, @89, @987, @65, nil];
//    NSMutableArray *sortedArray   = [NSMutableArray arrayWithObjects:@11, @14, @21, @32, @65, @76, @89, @101, @121, @123, @201, @301, @987, nil];
//    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@121, @382, @23, @34, @123, @1024, @21, @89, @45, @213, nil];
//    NSMutableArray *expectedResult = [NSMutableArray arrayWithObjects:@21, @23, @34, @45, @89, @121, @123, @213, @382, @1024, nil];
//    
//    NSArray *resultArray = [self.sortAlgorithm quickSort:array2];
//    XCTAssertEqualObjects (resultArray, expectedResult, "resultArray is not the same as sortedArray");
//}

- (void)testInsertionSort
{
    NSMutableArray *unsortedArray = [NSMutableArray arrayWithObjects:@101, @201, @301, @121, @11, @123, @21, @14, @32, @76, @89, @987, @65, nil];
    NSMutableArray *sortedArray   = [NSMutableArray arrayWithObjects:@11, @14, @21, @32, @65, @76, @89, @101, @121, @123, @201, @301, @987, nil];
    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@121, @382, @23, @34, @123, @1024, @21, @89, @45, @213, nil];
    NSMutableArray *expectedResult = [NSMutableArray arrayWithObjects:@21, @23, @34, @45, @89, @121, @123, @213, @382, @1024, nil];
    
    NSArray *resultArray = [self.sortAlgorithm insertionSort:array2];
    XCTAssertEqualObjects (resultArray, expectedResult, "resultArray is not the same as sortedArray");
}

//- (void)testSelectionSort
//{
//    NSMutableArray *unsortedArray = [NSMutableArray arrayWithObjects:@101, @201, @301, @121, @11, @123, @21, @14, @32, @76, @89, @987, @65, nil];
//    NSMutableArray *sortedArray   = [NSMutableArray arrayWithObjects:@11, @14, @21, @32, @65, @76, @89, @101, @121, @123, @201, @301, @987, nil];
//    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@121, @382, @23, @34, @123, @1024, @21, @89, @45, @213, nil];
//    NSMutableArray *expectedResult = [NSMutableArray arrayWithObjects:@21, @23, @34, @45, @89, @121, @123, @213, @382, @1024, nil];
//    
//    NSArray *resultArray = [self.sortAlgorithm selectionSort:array2];
//    XCTAssertEqualObjects (resultArray, expectedResult, "resultArray is not the same as sortedArray");
//}

- (void)testBubbleSort
{
//    NSMutableArray *unsortedArray = [NSMutableArray arrayWithObjects: @101, @201, @121, @11, nil];
//    NSMutableArray *expectedSortedArray = [NSMutableArray arrayWithObjects: @11, @101, @121, @201, nil];

//    NSMutableArray *unsortedArray = [NSMutableArray arrayWithObjects:@101, @201, @301, @121, @11, @123, @21, @14, @32, @76, @89, @987, @65, nil];
//    NSMutableArray *expectedSortedArray   = [NSMutableArray arrayWithObjects:@11, @14, @21, @32, @65, @76, @89, @101, @121, @123, @201, @301, @987, nil];
    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@121, @382, @23, @34, @123, @1024, @21, @89, @45, @213, nil];
    NSMutableArray *expectedSortedArray = [NSMutableArray arrayWithObjects:@21, @23, @34, @45, @89, @121, @123, @213, @382, @1024, nil];
    
    NSArray *sortedArray = [self.sortAlgorithm bubbleSort:array2];
    XCTAssertEqualObjects (expectedSortedArray, sortedArray, "resultArray is not the same as sortedArray");
}

//- (void)testPerformanceExample
//{
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
