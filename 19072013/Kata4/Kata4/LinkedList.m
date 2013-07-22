//
//  LinkedList.m
//  Kata4
//
//  Created by El Nino on 7/19/13.
//  Copyright (c) 2013 El Nino. All rights reserved.
//

#import "LinkedList.h"

@interface Node : NSObject

@property (nonatomic, strong) Node *next;
@property (nonatomic, strong) id data;

@end

@implementation Node

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

@property (nonatomic, strong) Node *head;
@property (nonatomic, strong) Node *tail;

@end

@implementation LinkedList

@synthesize size;
@synthesize head;
@synthesize tail;

-(id)initWithArray:(NSArray *)array {
    if (self = [super init]) {
        if (array) {
            size = array.count;
            Node *current;
            for (int i = 0; i < size; i ++) {
                id object = [array objectAtIndex:i];
                Node *note = [[Node alloc] init];
                note.data = object;
                if (!head) {
                    head = note;
                    current = head;
                } else {
                    current.next = note;
                    current = note;
                }
                if (!note.next) {
                    tail = note;
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
        Node *current = head;
        while (i < index - 1) {
            Node *next = current.next;
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
        Node *current = head;
        while (i < index) {
            Node *next = current.next;
            current = next;
            i ++;
        }
        object = current.next.data;
    }
    return object;
}

-(void)insertFirst:(id)object {
    size ++;
    Node *node = [[Node alloc] init];
    node.data = object;
    if (head) {
        node.next = head;
    }
    head = node;
}

-(void)append:(id)object {
    size ++;
    Node *node = [[Node alloc] init];
    node.data = object;
    if (!head) {
        head = node;
        tail =node;
    } else {
        tail.next = node;
        tail = node;
    }
}

-(void)insertAfter:(NSUInteger)index object:(id)data {
    if (index > size - 1) {
         @throw [NSException exceptionWithName:@"BoundaryOut" reason:nil userInfo:nil];
    } else {
        size ++;
        NSUInteger i = 0;
        Node *current = head;
        while (i < index) {
            Node *next = current.next;
            current = next;
            i ++;
        }
        Node *currentNext = current.next;
        
        Node *newNode = [[Node alloc] init];
        newNode.data = data;
        
        current.next = newNode;
        if (currentNext) {
            newNode.next = currentNext;
        }
    }
}

@end
