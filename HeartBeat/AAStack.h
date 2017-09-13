//
//  AAStack.h
//  HeartBeat
//
//  Created by Thinh Le on 2017-06-18.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AAStack : NSObject

@property (strong, nonatomic) NSMutableArray *data;
@property (assign) int count;

//@property (assign, readonly) long count;

-(void)push:(id)anObject;
-(id)pop;
-(NSUInteger)size;
-(void)clear;
-(id)lastObject;
-(id)peek;
-(BOOL)isEmpty;

@end
