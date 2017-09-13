//
//  AAQueue.h
//  HeartBeat
//
//  Created by Thinh Le on 2017-06-18.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AAQueue : NSObject

@property (strong, nonatomic) NSMutableArray *data;

-(void)enqueue:(id)obj;
-(id)dequeue;
-(id)peek;
-(BOOL)isEmpty:(AAQueue *)queue;

@end
