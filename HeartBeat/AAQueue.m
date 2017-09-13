//
//  AAQueue.m
//  HeartBeat
//
//  Created by Thinh Le on 2017-06-18.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import "AAQueue.h"

@implementation AAQueue

//-(instancetype)init {
-(id)init {
    if (self = [super init]) { 
        self.data = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(void)enqueue:(id)obj {
    [self.data addObject:obj];
}

-(id)dequeue {
//    if (self.data.count == 0) { return nil;}
    
    id headObject = [self.data objectAtIndex:0];
    if (headObject != nil) {
        [self.data removeObjectAtIndex:0];
    }
    
    return headObject;
}

-(id)peek {
    return [[self.data objectAtIndex:0] copy];
}

-(BOOL)isEmpty:(AAQueue *)queue {
    if (self.data.count == 0) {
        return YES;
    } else {
        return NO;
    }
}

@end
