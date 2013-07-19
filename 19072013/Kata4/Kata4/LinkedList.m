//
//  LinkedList.m
//  Kata4
//
//  Created by El Nino on 7/19/13.
//  Copyright (c) 2013 El Nino. All rights reserved.
//

#import "LinkedList.h"

@interface Note : NSObject

@property (nonatomic, strong) Note *next;
@property (nonatomic, strong) id data;

@end

@implementation Note

@synthesize next;
@synthesize data;

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end

@interface LinkedList()

@property (nonatomic, strong) Note *head;
@property (nonatomic, strong) Note *tail;

@end

@implementation LinkedList

@synthesize size;
@synthesize head;
@synthesize tail;

-(id)initWithArray:(NSArray *)array {
    if (self = [super init]) {
        if (array) {
            size = array.count;
            Note *current;
            for (int i = 0; i < size; i ++) {
                id object = [array objectAtIndex:i];
                Note *note = [[Note alloc] init];
                note.data = object;
                if (!head) {
                    head = note;
                    current = head;
                } else {
                    current.next = note;
                    current = note;
                }
            }
        }
    }
    return self;
}

- (id)first {
    return head.data;
}

- (id)last {
    return tail.data;
}

-(id)before:(NSUInteger)index {
    id object = nil;
    if (index > size || index == 0) {
        @throw [NSException exceptionWithName:@"BoundaryOut" reason:nil userInfo:nil];
    } else {
        int i = 0;
        Note *current = head;
        while (i < index - 1) {
            Note *next = current.next;
            current = next;
            i ++;
        }
        object = current.data;
    }
    return object;
}

-(id)after:(NSUInteger)index {
    id object = nil;
    if (index >= size - 1) {
        @throw [NSException exceptionWithName:@"BoundaryOut" reason:nil userInfo:nil];
    } else {
        int i = 0;
        Note *current = head;
        while (i < index) {
            Note *next = current.next;
            current = next;
            i ++;
        }
        object = current.next.data;
    }
    return object;
}

@end
