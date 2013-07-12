//
//  LinkedList.h
//  Kata4
//
//  Created by El Nino on 7/12/13.
//  Copyright (c) 2013 El Nino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedList : NSObject

@property (nonatomic, assign) NSUInteger size;

- (id)initWithArray:(NSArray *)array;

- (id)first;

- (id)last;


@end
