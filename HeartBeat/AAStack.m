//
//  AAStack.m
//  HeartBeat
//
//  Created by Thinh Le on 2017-06-18.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import "AAStack.h"

//@interface AAStack()
//
//@end

@implementation AAStack

-(id)init {
    if (self == [super init]) {
        self.data = [[NSMutableArray alloc] init];
        self.count = 0;
    }
    
    return  self;
}

-(void)push:(id)anObject {
    [self.data addObject:anObject];
    self.count++;
}

-(id)pop {
    id obj = nil;
    if ([self.data count] > 0){
        obj = [self.data lastObject];
        [self.data removeLastObject];
        self.count = (int)self.data.count;
    }
    
    return obj;
}

-(NSUInteger)size {
    return self.data.count;
}

-(void)clear {
    [self.data removeAllObjects];
    self.count = 0;
}

-(id)lastObject {
    id obj = nil;
    if ([self.data count] > 0){
        obj = [self.data lastObject];
    }
    
    return obj;
}

-(id)peek {
    return [[self.data lastObject] copy];
}

-(BOOL)isEmpty {
    return self.data.count == 0;
}

@end

