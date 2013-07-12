//
//  LinkedList.m
//  Kata4
//
//  Created by El Nino on 7/12/13.
//  Copyright (c) 2013 El Nino. All rights reserved.
//

#import "LinkedList.h"

@interface LinkedList()

@property (nonatomic, strong) NSMutableArray *items;

@end

@implementation LinkedList

@synthesize size;
@synthesize items;

- (id)init
{
    self = [super init];
    if (self) {
        items = [[NSMutableArray alloc] init];
    }
    return self;
}

-(id)initWithArray:(NSArray *)array {
    if (self = [super init]) {
        items = [array mutableCopy];
    }
    return self;
}

- (NSUInteger)size {
    return items.count;
}

- (id)first {
    id objectReturn = nil;
    if (items.count) {
        objectReturn = [items objectAtIndex:0];
    }
    return objectReturn;
}

-(id)last {
    id objectReturn = nil;
    if (items.count) {
        objectReturn = [items objectAtIndex:items.count - 1];
    }
    return objectReturn;
}

@end
