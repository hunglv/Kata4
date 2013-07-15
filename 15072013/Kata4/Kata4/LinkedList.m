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

@end
