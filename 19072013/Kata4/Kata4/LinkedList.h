//
//  LinkedList.h
//  Kata4
//
//  Created by El Nino on 7/19/13.
//  Copyright (c) 2013 El Nino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedList : NSObject

@property (assign) NSUInteger size;

- (id)initWithArray:(NSArray *)array;

- (id)first;

- (id)last;

- (id)before:(NSUInteger)index;

- (id)after:(NSUInteger)index;

- (void)insertFirst:(id)object;

- (void)append:(id)object;

- (void)insertAfter:(NSUInteger)index object:(id)data;

- (id)search:(id)object;

- (void)deleteIndex:(NSUInteger)index;
@end
