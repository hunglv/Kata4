//
//  LinkedList.m
//  Kata4
//
//  Created by El Nino on 7/15/13.
//  Copyright (c) 2013 El Nino. All rights reserved.
//

#import "LinkedList.h"

@interface LinkedList()

@property (nonatomic, strong) NSMutableArray *items;

@end

@implementation LinkedList

@synthesize size;
@synthesize items;

-(id)initWithGivenArray:(NSArray *)array {
    if (self = [super init]) {
        items = [array mutableCopy];
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        items = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSUInteger)size {
    return items.count;
}

- (id)first {
    id first = nil;
    if (items.count) {
        first = [items objectAtIndex:0];
    }
    return first;
}

- (id)last {
    id last = nil;
    if (items.count) {
        last = [items objectAtIndex:items.count - 1];
    }
    return last;
}

- (id)after:(NSUInteger)index {
    id mid = nil;
    if (index < items.count) {
        mid = [items objectAtIndex:(index + 1)];
    }
    return mid;
}

- (id)before:(NSUInteger)index {
    id mid = nil;
    if (index <= items.count && index >= 1) {
        mid = [items objectAtIndex:index - 1];
    }
    return mid;
}

-(void)addFirst:(id)object {
    if (!object) {
        @throw [NSException exceptionWithName:@"InsertObjectNil" reason:nil userInfo:nil];
    } else {
        [items insertObject:object atIndex:0];
    }
}

- (void)append:(id)object {
    if (!object) {
        @throw [NSException exceptionWithName:@"InsertObjectNil" reason:nil userInfo:nil];
    } else {
        [items addObject:object];
    }
}

-(void)insertAfterIndex:(NSUInteger)index object:(id)object {
    if (!object) {
        @throw [NSException exceptionWithName:@"InsertObjectNil" reason:nil userInfo:nil];
    } else {
        if (index >= items.count) {
            @throw [NSException exceptionWithName:@"BoundaryOutExeption" reason:nil userInfo:nil];
        } else {
            [items insertObject:object atIndex:(index + 1)];
        }
    }    
}

-(id)deleteIndex:(NSUInteger)index {
    if (index >= items.count) {
        @throw [NSException exceptionWithName:@"BoundaryOutExeption" reason:nil userInfo:nil];
    } else {
        id objectWillDelete = [items objectAtIndex:index];
        [items removeObjectAtIndex:index];
        return objectWillDelete;
    }
}

@end
