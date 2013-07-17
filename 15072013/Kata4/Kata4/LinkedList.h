//
//  LinkedList.h
//  Kata4
//
//  Created by El Nino on 7/15/13.
//  Copyright (c) 2013 El Nino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedList : NSObject

@property (nonatomic, assign) NSUInteger size;

- (id)initWithGivenArray:(NSArray *)array;

- (id)first;

- (id)last;

- (id)after:(NSUInteger)index;

- (id)before:(NSUInteger)index;

- (void)addFirst:(id)object;

- (void)append:(id)object;

- (void)insertAfterIndex:(NSUInteger)index object:(id)object;

- (id)deleteIndex:(NSUInteger)index;
@end
