//
//  Patient.h
//  HeartBeat
//
//  Created by Thinh Le on 2017-05-25.
//  Copyright © 2017 Lac Viet Inc. All rights reserved.
//

#import "Person.h"

@interface Patient : Person

@property (strong, nonatomic) NSString *company;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *registrationDate;
@property (strong, nonatomic) NSString *medicalHistory;

@property (nonatomic, readonly) BOOL hasComplication;
@property (nonatomic, readonly) BOOL isMember;

@end
