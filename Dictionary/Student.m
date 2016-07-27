//
//  Student.m
//  Dictionary
//
//  Created by EnzoF on 27.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Student.h"

@implementation Student



-(NSString*)hello{
    return [[NSString alloc] initWithFormat:@"Привет. Меня зовут %@ %@",self.lastName,self.firstName ];
}
@end
