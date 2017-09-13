//
//  HeartBeatTests.m
//  HeartBeatTests
//
//  Created by Thinh Le on 2017-06-28.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MathOperation.h"
#import "MatrixOperation.h"

@interface HeartBeatTests : XCTestCase

@property (nonatomic) MathOperation *mathOperationTest;
@property (nonatomic) MatrixOperation *matrixOperationTest;

@end

@implementation HeartBeatTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.mathOperationTest = [[MathOperation alloc] init];
    self.matrixOperationTest = [[MatrixOperation alloc] init];

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    self.mathOperationTest = nil;
    self.matrixOperationTest = nil;
    [super tearDown];
}

- (void)testSumOfTwoNum
{
    int a = 0;
    int b = -1;
    int sum = 0;
    
    XCTAssert(a == 0);
    XCTAssert(b < 0);
    NSLog(@"data validity test passed");
          
    sum = [self.mathOperationTest sumOfNum1:a withNum2:b];
    XCTAssert(sum == -1, @"sum is not equal -1");

}

- (void)testDiffOfTwoNum
{
    int a = 8;
    int b = 9;
    int diff = 0;
    
//    XCTAssert(a == 0);
//    XCTAssert(b < 0);
    NSLog(@"data validity test passed");
    
    diff = [self.mathOperationTest differenceOfNum1:a withNum2:b];
    XCTAssert(diff == -1, @"diff is not equal -1");
    
}

- (void)testMatrixAddition
{
    NSArray *matrixA = @[@[ @0, @1, @2],
                         @[ @3, @4, @5],
                         @[ @6, @7, @8]];
    
    NSArray *matrixB = @[@[ @0, @1, @2],
                         @[ @3, @4, @5],
                         @[ @6, @7, @8]];
    
    NSArray *matrix2A = @[@[ @0, @2, @4],
                          @[ @6, @8, @10],
                          @[ @12, @14, @16]];
    
    NSArray *matrixD = @[@[ @12, @23, @34, @45],
                         @[ @21, @32, @43, @54]];
    
    NSArray *matrixE = @[@[ @34, @45, @56, @67],
                         @[ @43, @54, @65, @76]];
    
    NSArray *matrixDaddE = @[@[ @46, @68, @90, @112],
                           @[ @64, @86, @108, @130]];
    
    NSMutableArray *matrixC2 = [[NSMutableArray alloc] initWithCapacity:2];
    [matrixC2 insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, @0, nil] atIndex:0];
    [matrixC2 insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, @0, nil] atIndex:1];
    
    NSMutableArray *matrixC = [[NSMutableArray alloc] initWithCapacity: 3];
    [matrixC insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, nil] atIndex:0];
    [matrixC insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, nil] atIndex:1];
    [matrixC insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, nil] atIndex:2];
    
    int rowA = 2;
    int colA = 4;
    int rowB = 2;
    int colB = 4;
    
    XCTAssert(rowA != 0);
    XCTAssert(colA != 0);
    XCTAssert(rowA != 0);
    XCTAssert(colB != 0);
    XCTAssert(rowA == rowB);
    XCTAssert(colA == colB);
    NSLog(@"data validity test passed");
    
    [self.matrixOperationTest additionMatrix:matrixD
                                 withMatrixB:matrixE
                                    resultIn:matrixC2
                                     withRow:2
                                   andColumn:4];
    NSLog(@"matrix addition test passed");
    
    //[self.matrixOperationTest displayMatrix:matrixC2 withName:@"matrixC2" withRow:2 andColumn:4];
    //[self.matrixOperationTest displayMatrix:matrixDaddE withName:@"matrixDaddE" withRow:2 andColumn:4];

//    XCTAssertEqualObjects (matrixC, matrix2A, "matrixC is not the same as matrix2A");
    XCTAssertEqualObjects (matrixC2, matrixDaddE, "matrixC is not the same as matrixDaddE");
    
}

- (void)testMatrixSubtraction
{
    NSArray *matrixA = @[@[ @0, @1, @2],
                         @[ @3, @4, @5],
                         @[ @6, @7, @8]];
    
    NSArray *matrixB = @[@[ @0, @1, @2],
                         @[ @3, @4, @5],
                         @[ @6, @7, @8]];
    
    NSArray *matrixZero = @[@[ @0, @0, @0],
                          @[ @0, @0, @0],
                          @[ @0, @0, @0]];
    
    NSMutableArray *matrixC = [[NSMutableArray alloc] initWithCapacity: 3];
    [matrixC insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, nil] atIndex:0];
    [matrixC insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, nil] atIndex:1];
    [matrixC insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, nil] atIndex:2];
    
    int rowA = 3;
    int colA = 3;
    int rowB = 3;
    int colB = 3;
    
    XCTAssert(rowA != 0);
    XCTAssert(colA != 0);
    XCTAssert(rowA != 0);
    XCTAssert(colB != 0);
    XCTAssert(rowA == rowB);
    XCTAssert(colA == colB);
    NSLog(@"data validity test passed");
    
    [self.matrixOperationTest subtractionMatrix:matrixA
                                 withMatrixB:matrixA
                                    resultIn:matrixC
                                     withRow:3
                                   andColumn:3];
    NSLog(@"matrix addition test passed");
    
    XCTAssertEqualObjects (matrixC, matrixZero, "matrixC is not the same as matrixZero");
}

- (void)testMatrixMultiplication
{
    NSArray *matrixIdentity = @[@[ @-1, @0, @0],
                                @[ @0, @1, @0],
                                @[ @0, @0, @1]];
    
    NSArray *matrixA = @[@[ @0, @1, @2],
                         @[ @3, @4, @5],
                         @[ @6, @7, @8]];

    NSArray *matrixB = @[@[ @0, @1, @2],
                         @[ @3, @4, @5],
                         @[ @6, @7, @8]];
    
    NSArray *matrixResAxB = @[@[ @15, @18, @21],
                         @[ @42, @54, @66],
                         @[ @69, @90, @111]];
    
    NSArray *matrixD = @[@[ @9, @8, @7],
                         @[ @6, @5, @4],
                         @[ @3, @2, @1]];
    
    NSArray *matrixE = @[@[ @1, @2, @3],
                         @[ @4, @5, @6],
                         @[ @7, @8, @9]];
    
    NSArray *matrixResDxE = @[@[ @90, @114, @138],
                         @[ @54, @69, @84],
                         @[ @18, @24, @30]];
    
    NSNumber *num11 = [NSNumber numberWithDouble:-2.0];
    NSNumber *num12 = [NSNumber numberWithDouble:1.0];
    NSNumber *num13 = [NSNumber numberWithDouble:-1.0];
    NSNumber *num14 = [NSNumber numberWithDouble:2.0];
    NSNumber *num21 = [NSNumber numberWithDouble:-7.0];
    NSNumber *num22 = [NSNumber numberWithDouble:0.0];
    NSNumber *num23 = [NSNumber numberWithDouble:-1.0];
    NSNumber *num24 = [NSNumber numberWithDouble:-4.0];
    NSNumber *num31 = [NSNumber numberWithDouble:-2.0];
    NSNumber *num32 = [NSNumber numberWithDouble:-1.0];
    NSNumber *num33 = [NSNumber numberWithDouble:0.0];
    NSNumber *num34 = [NSNumber numberWithDouble:-2.0];
    NSNumber *num41 = [NSNumber numberWithDouble:-3.0];
    NSNumber *num42 = [NSNumber numberWithDouble:-2.0];
    NSNumber *num43 = [NSNumber numberWithDouble:0.0];
    NSNumber *num44 = [NSNumber numberWithDouble:-3.0];
    
    NSMutableArray *temp = [NSMutableArray arrayWithObjects:num11, num12, num13, num14, num21, num22, num23, num24, num31, num32, num33, num34, num41, num42, num43, num44, nil];
    
    NSMutableArray *matrix = [[NSMutableArray alloc] initWithCapacity: 4];
    [matrix insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, @0, nil] atIndex:0];
    [matrix insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, @0, nil] atIndex:1];
    [matrix insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, @0, nil] atIndex:2];
    [matrix insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, @0, nil] atIndex:3];
    
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            double c = [[temp objectAtIndex:4*i+j] doubleValue];
            NSNumber *object = [NSNumber numberWithDouble:c];
            [[matrix objectAtIndex:i] replaceObjectAtIndex:j withObject:object];
        }
    }
    
    NSMutableArray *matrixC = [[NSMutableArray alloc] initWithCapacity: 3];
    [matrixC insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, nil] atIndex:0];
    [matrixC insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, nil] atIndex:1];
    [matrixC insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, nil] atIndex:2];

    NSMutableArray *matrixC4x4 = [[NSMutableArray alloc] initWithCapacity: 4];
    [matrixC4x4 insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, @0, nil] atIndex:0];
    [matrixC4x4 insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, @0, nil] atIndex:1];
    [matrixC4x4 insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, @0, nil] atIndex:2];
    [matrixC4x4 insertObject:[NSMutableArray arrayWithObjects:@0, @0, @0, @0, nil] atIndex:3];
    
    NSArray *matrixResult = @[@[ @-7, @-5, @1, @-12],
                              @[ @28, @2, @7, @0],
                              @[ @17, @2, @3, @6],
                              @[ @29, @3, @5, @11]];
    
    int rowA = 4;
    int colA = 4;
    int rowB = 4;
    int colB = 4;
    
    XCTAssert(rowA != 0);
    XCTAssert(colA != 0);
    XCTAssert(rowA != 0);
    XCTAssert(colB != 0);
    XCTAssert(colA == rowB);
    NSLog(@"data validity test passed");
    
    [self.matrixOperationTest multiplicationMatrix:matrix withMatrixB:matrix resultIn:matrixC4x4 withRowA:rowA andColumnA:colA withRowB:rowB andColumnB:colB];
    NSLog(@"matrix multiplication test passed");
    
    XCTAssertEqualObjects (matrixC4x4, matrixResult, "matrixC is not the same as matrixResult");
//    XCTAssertEqualObjects (matrixC, matrixIdentity, "matrixC is not the same as matrixIdentity");
//    XCTAssertEqualObjects (matrixC, matrixResAxB, "matrixC is not the same as matrixResAxB");
//    XCTAssertEqualObjects (matrixC, matrixResDxE, "matrixC is not the same as matrixResDxE");


}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
