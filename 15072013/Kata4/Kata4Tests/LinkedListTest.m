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
        sut2 = [[LinkedList alloc] initWithGivenArray:@[@0, @1, @2, @3, @4, @5]];
    });
    
    afterEach(^{
        sut = nil;
        sut2 = nil;
    });
    
    context(@"Khoi tao danh sach", ^{
        it(@"Khoi tao danh sach rong", ^{
            [[theValue(sut.size) should] equal:theValue(0)];
        });
        
        it(@"Khoi tao danh sach voi 1 mang cho truoc", ^{
            [[theValue(sut2.size) should] equal:theValue(6)];
            
        });
    });
    
    context(@"Lay tham chieu phan tu dau danh sach", ^{
        it(@"TLay tham chieu phan tu dau tu danh sach rong", ^{
            id first = [sut first];
            [first shouldBeNil];
        });
        
        it(@"TLay tham chieu phan tu dau tu danh sach khac rong", ^{
            id first = [sut2 first];
            [first shouldNotBeNil];
            [[first should] equal:@0];
        });
    });
    
    context(@"Lay tham chieu phan tu cuoi danh sach", ^{
        it(@"TLay tham chieu phan tu cuoi tu danh sach rong", ^{
            id last = [sut last];
            [last shouldBeNil];
        });
        
        it(@"TLay tham chieu phan tu cuoi tu danh sach khac rong", ^{
            id last = [sut2 last];
            [last shouldNotBeNil];
            [[last should] equal:@5];
        });
    });
    
    context(@"Lay tham chieu phan tu giua danh sach", ^{
        it(@"Lay tham chieu phan tu thu n tu danh sach co it hon n phan tu", ^{
            id mid = [sut2 after:6];
            [mid shouldBeNil];
        });
        
        it(@"Lay tham chieu phan tu sau vi tri n tu danh sach co nhieu hon n phan tu", ^{
            id mid = [sut2 after:3];
            [mid shouldNotBeNil];
            [[mid should] equal:@4];           
        });
        
        it(@"Lay tham chieu phan tu dung truoc phan tu thu n trong danh sach co it hon n phan tu", ^{
            id mid = [sut2 before:7];
            [mid shouldBeNil];
        });
        
        it(@"Lay tham chieu phan tu dung truoc phan tu thu n trong danh sach co nhieu hon hoac bang n phan tu", ^{
            id mid = [sut2 before:6];
            [mid shouldNotBeNil];
            [[mid should] equal:@5];
        });
        
        it(@"Lay tham chieu phan tu dung truoc phan tu thu 0 trong danh sach, tra ve nil", ^{
            id mid = [sut2 before:0];
            [mid shouldBeNil];
        });
    });
        
});
SPEC_END