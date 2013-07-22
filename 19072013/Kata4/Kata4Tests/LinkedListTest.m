//
//  LinkedListTest.m
//  Kata4
//

#import "Kiwi.h"
#import "LinkedList.h"

SPEC_BEGIN(LinkedListSpec)
describe(@"LinkedList test", ^{
    
    __block LinkedList *sut;
    __block LinkedList *sut2;
    
    beforeEach(^{
        sut = [[LinkedList alloc] init];
        NSArray *array = @[@0, @1, @2, @3, @4];
        sut2 = [[LinkedList alloc] initWithArray:array];
        
    });
    
    afterEach(^{
        sut = nil;
        sut2 = nil;
    });
    
    context(@"init class", ^{
        it(@"init empty list, the size should be zero", ^{
            [[theValue(sut.size) should] equal:theValue(0)];
        });
        
        it(@"init list with given array, the size should be array's size", ^{
            [[theValue(sut2.size) should] equal:theValue(5)];
        });
    });
    
    context(@"first object of list", ^{
        it(@"in empty list, first object should be nil", ^{
            id object = [sut first];
            [object shouldBeNil];
        });
        
        it(@"first object in list is not empty", ^{
            id object = [sut2 first];
            [[object should] equal:@0];
        });
    });
    
    context(@"last object of list", ^{
        it(@"in empty list, last object should be nil", ^{
            id object = [sut last];
            [object shouldBeNil];
        });
        
        it(@"last object in list is not empty", ^{
            id object = [sut2 last];
            [[object should] equal:@4];
        });
    });
    
    context(@"object before node n", ^{
        it(@"if n > size or n == 0 should raise exception BoundaryOut", ^{
            [[theBlock(^{
                [sut2 before:6];
            }) should] raiseWithName:@"BoundaryOut"];
        });
        
        it(@"other case, should return object before index n", ^{
            id object = [sut2 before:2];
            [object shouldNotBeNil];
            [[object should] equal:@1];
        });
    });
    
    context(@"object after node n", ^{
        it(@"if n >= size - 1 should raise exeption BoundaryOut", ^{
            [[theBlock(^{
                [sut2 after:5];
            }) should] raiseWithName:@"BoundaryOut"];
        });
        
        it(@"other case, should return object after index n", ^{
            id object = [sut2 after:3];
            [object shouldNotBeNil];
            [[object should] equal:@4];
        });
    });
    
    context(@"insert at first", ^{
        it(@"size of list should be increase by 1", ^{
            NSInteger sizeBefore = sut.size;
            [sut insertFirst:@0];
            [[theValue(sut.size) should] equal:theValue(sizeBefore + 1)];
        });
        
        it(@"first object should equal object've just inserted", ^{
            [sut insertFirst:@100];
            id first = [sut first];
            [first shouldNotBeNil];
            [[first should] equal:@100];
        });
    });
    
    context(@"insert at end", ^{
        it(@"size of list should be increase by 1", ^{
            NSInteger sizeBefore = sut.size;
            [sut append:@0];
            [[theValue(sut.size) should] equal:theValue(sizeBefore + 1)];
        });
        
        it(@"first object should equal object've just inserted", ^{
            [sut append:@100];
            id last = [sut last];
            [last shouldNotBeNil];
            [[last should] equal:@100];
        });
    });
    
    context(@"insert after index n", ^{
        it(@"n > size - 1 should raise exeption BoundaryOut", ^{
            [[theBlock(^{
                [sut2 insertAfter:5 object:@100];
            }) should] raiseWithName:@"BoundaryOut"];
        });
        
        it(@"size of list should be increase by 1", ^{
            NSInteger sizeBefore = sut2.size;
            [sut2 insertAfter:3 object:@100];
            [[theValue(sut2.size) should] equal:theValue(sizeBefore + 1)];
        });
        
        it(@"object after index n should be object've just inserted", ^{
            [sut2 insertAfter:3 object:@100];
            id object = [sut2 after:3];
            [object shouldNotBeNil];
            [[object should] equal:@100];
        });
    });
});
SPEC_END
