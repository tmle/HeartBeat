//
//  Person.h
//  HeartBeat
//
//  Created by Thinh Le on 2017-05-25.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSString *surName;
@property (strong, nonatomic) NSString *givenName;
@property (strong, nonatomic) NSDate *bOD;
@property (strong, nonatomic) NSString *nationality;
@property (strong, nonatomic) NSString *maritialStatus;

@end
