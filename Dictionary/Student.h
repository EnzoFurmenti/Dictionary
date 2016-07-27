//
//  Student.h
//  Dictionary
//
//  Created by EnzoF on 27.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property(nonatomic, strong) NSString *firstName;
@property(nonatomic, strong) NSString *lastName;
- (NSString*)hello;

@end
