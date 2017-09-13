//
//  ViewController.m
//  HeartBeat
//
//  Created by Thinh Le on 2017-05-25.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import "ViewController.h"
#import "SortAlgorithm.h"
#import "MathOperation.h"
#import "AAStack.h"
#import "AAQueue.h"
#import "MatrixOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    // Using NSUserDefaults
//    NSUserDefaults *standardUserDefaults = [NSUserDefaults standardUserDefaults];
//
//    // Writing using NSUserDefaults
//    NSString *strToWrite = @"myString";
//    [standardUserDefaults setObject:strToWrite forKey:@"someKey"];
//    [standardUserDefaults synchronize];
//    
//    // Reading using NSUserDefaults
//    NSString *strToRead = [standardUserDefaults stringForKey:@"someKey"];
    
    //var myDict:[String:Int] = ["a":1, "b":2, "c":3]
    
    //var airportCode:[String:String] = ["ABR" : "Aberdeen, SD", "ABI": "Abilene, TX", "ADK" : "Adak Island, AK"]
//    NSMutableDictionary *airportCode = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"Aberdeen, SD", @"ABR", @"Abilene, TX", @"ABI", @"Adak Island, AK", @"ADK", nil];
//    
//    [airportCode setObject:@"Ottawa, ON - International" forKey:@"YOW"];
//
//    for(id key in airportCode) {
//        id value = [airportCode objectForKey:key];
//        NSLog(@"Key:%@ Value:%@", key, value);
//    }

//    //var myArray:[Int] = [1, 2, 3]
//    NSMutableArray *myArray = [[NSMutableArray alloc] initWithObjects:@1, @2, @3, nil];
//    
//    [myArray addObject:@4];
//    NSInteger sum = 0;
//    for (NSNumber *item in myArray) {
//        NSInteger num = [item integerValue]; // doubleValue];
//        sum += num;
//    }
//    NSLog(@"%ld", (long)sum);
//    [myArray removeObjectAtIndex:3];
//    [myArray replaceObjectAtIndex:2 withObject:@10];
//    
//    for (int i=0; i<myArray.count; i++) {
//        NSLog(@"%@", [myArray objectAtIndex:i]);
//    }
//    [myArray removeAllObjects];
//    NSLog(@"%@", myArray);
//    
    
    // NSString operations
//    NSString *str = @"anhconghemuaroitungcondauvoivoitronmuadong";
//    NSLog(@"%@\n", str);
//
//    NSMutableArray *charArray = [NSMutableArray arrayWithCapacity:str.length];
//    
//    for (int i=0; i<str.length; ++i) {
//        NSString *charStr = [str substringWithRange:NSMakeRange(i, 1)];
//        [charArray addObject:charStr];
//    }
//
//    NSString *sortedStr = [[charArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)] componentsJoinedByString:@""];
//    
//    NSLog(@"%@\n", sortedStr);
    
//    SortAlgorithm *sortAlgo = [[SortAlgorithm alloc]init];
//    [sortAlgo hashTableCreation];

//    NSArray *keys = [NSArray arrayWithObjects:@"key1", @"key2", nil];
//    NSArray *objects = [NSArray arrayWithObjects:@"value1", @"value2", nil];
//    NSDictionary *dictionary = [NSDictionary dictionaryWithObjects:objects
//                                                           forKeys:keys];
//    //Begin test Bubble Sorting Code
//
//    SortAlgorithm *sort = [[SortAlgorithm alloc] init];
//    NSMutableArray *array = [NSMutableArray arrayWithObjects:@3, @4, @5, @2, @1, nil];
//    NSMutableArray *array2 = [NSMutableArray arrayWithObjects:@101, @201, @301,@121,@11,@123,@21,@14,@32,@76,@89,@987,@65, nil];
    
    //NSLog(@"%d", (int)array.count);

//    NSLog(@"bubbleSortedArray %@", [sort bubbleSort:array]);
//    NSLog(@"selectionSortedArray %@", [sort selectionSort:array]);
//    NSLog(@"insertionSortedArray %@", [sort insertionSort:array]);
//    NSLog(@"quickSortedArray %@", [sort quickSort:array]);
//    NSLog(@"mergeSortedArray %@", [sortAlgo mergeSort:dataArray]);
//    NSLog(@"heapSortedArray %@", [sortAlgo heapSort:dataArray]);
    //NSLog(@"%d", (int)array.count);

//    [sortAlgo hashTableCreation];
    
//    MathOperation *mathOperation = [[MathOperation alloc] init];
//    NSLog(@"myResult = %d", [mathOperation sumOfNum1:5 withNum2:6]);
    
//    AAStack *stack = [[AAStack alloc] init];
//    [stack push:@"John"];
//    [stack push:@"Jane"];
//    [stack push:@"Mary"];
//    [stack push:@"Aby"];
//    
//    NSLog(@"%d", stack.count); //4
//    NSLog(@"Last Name before pop = %@", stack.lastObject); //Last Name before pop = Aby
//    NSLog(@"poppedName =  %@", [stack pop]); //poppedName =  Aby
//    NSLog(@"New Stack Count = %d",stack.count); //New Stack Count = 3
//    NSLog(@"Last Name after pop = %@",stack.lastObject); //Last Name after pop = Mary
//    NSLog(@"poppedName =  %@", [stack pop]); //poppedName =  Aby
//    NSLog(@"New Stack Count = %d",stack.count); //New Stack Count = 3
//    NSLog(@"Last Name after pop = %@",stack.lastObject); //Last Name after pop = Mary
//    NSLog(@"poppedName =  %@", [stack pop]); //poppedName =  Aby
//    NSLog(@"New Stack Count = %d",stack.count); //New Stack Count = 3
//    NSLog(@"Last Name after pop = %@",stack.lastObject); //Last Name after pop = Mary
//    
//    [stack push:@"thinh"];
//    NSLog(@"Last Name before pop = %@", stack.lastObject); //Last Name before pop = Aby
//    NSLog(@"poppedName =  %@", [stack pop]); //poppedName =  Aby
//    
//    [stack push:[NSNumber numberWithDouble:3.14]];
//    NSLog(@"Last Name before pop = %@", stack.lastObject); //Last Name before pop = Aby
//    NSLog(@"poppedName = %@", [[stack pop] stringValue]); //poppedName =  Aby
//    NSLog(@"New Stack Count = %d",stack.count); //New Stack Count = 3
    
//    AAStack *s1 = [[AAStack alloc] init];
//    assert([s1 size] == 0);
//    assert([s1 pop] == nil);
//    assert([s1 peek] == nil);
//    assert([s1 isEmpty] == YES);
//    NSLog(@"first set of tests passed");
//    
//    [s1 push:[NSNumber numberWithInt:0]];
//    [s1 push:[NSNumber numberWithInt:3]];
//    [s1 push:[NSNumber numberWithInt:5]];
//    NSLog(@"%@",[s1 description]);
//    assert(![s1 isEmpty]);
//    assert(s1.size == 3);
//    assert([[s1 peek] isEqual:[NSNumber numberWithInt:5]]);
//    assert([[s1 pop] isEqual:[NSNumber numberWithInt:5]]);
//    assert(s1.size == 2);
//    assert([[s1 pop] isEqual:[NSNumber numberWithInt:3]]);
//    assert(![[s1 pop] isEqual:[NSNumber numberWithInt:3]]);
//    assert([s1 pop] == nil);
//    assert(s1.isEmpty);
//    NSLog(@"second set of tests passed");
   
    //Queue operations
    AAQueue *queue = [[AAQueue alloc] init];
    [queue enqueue:@"Jim"];
    [queue enqueue:@"John"];
    [queue enqueue:@"Mary"];
//    [queue enqueue:@"Thinh"];
//    [queue enqueue:@"Xuan"];

    //Follows First In First Out
    NSLog(@"Beginning of the queue = %@", [queue peek]);
    NSLog(@"%@\n",queue.dequeue); //Jim
    NSLog(@"queue isEmpty = %d", [queue isEmpty:queue]);

    NSLog(@"Beginning of the queue = %@", [queue peek]);
    NSLog(@"%@\n",queue.dequeue); //John
    NSLog(@"queue isEmpty = %d", [queue isEmpty:queue]);

    NSLog(@"Beginning of the queue = %@", [queue peek]);
    NSLog(@"%@\n",queue.dequeue); //Mary
    NSLog(@"queue isEmpty = %d", [queue isEmpty:queue]);

//    NSLog(@"Beginning of the queue = %@", [queue peek]);
//    NSLog(@"%@\n",queue.dequeue); //Mary
//    NSLog(@"queue isEmpty = %d", [queue isEmpty:queue]);
//
//    NSLog(@"Beginning of the queue = %@", [queue peek]);
//    NSLog(@"%@\n",queue.dequeue); //Mary
//    NSLog(@"queue isEmpty = %d", [queue isEmpty:queue]);

}

@end
