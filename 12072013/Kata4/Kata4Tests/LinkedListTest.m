//
//  LinkedListTest.m
//  Kata4
//

#import "Kiwi.h"
#import "LinkedList.h"

SPEC_BEGIN(LinkedListSpec)
describe(@"LinkedList test", ^{
    
    context(@"Khoi tao danh sach", ^{
        it(@"Khoi tao danh sach moi, so phan tu tra ve rong", ^{
            LinkedList *sut = [[LinkedList alloc] init];
            [[theValue(sut.size) should] equal:theValue(0)];
        });
        
        it(@"Khoi tao danh sach voi mang cho truoc, so phan tu = so phan tu cua mang", ^{
            NSArray *array = [NSArray arrayWithObjects:@1,@2,@3,@4,@5, nil];
            LinkedList *sut = [[LinkedList alloc] initWithArray:array];
            [[theValue(sut.size) should] equal:theValue(5)];
        });
    });
    
    context(@"Lay tham chieu mot doi tuong trong danh sach", ^{
        it(@"Lay tham chieu doi tuong dau tien trong danh sach khong phai la danh sach rong, doi tuong tra ve la doi tuong dau tien trong danh sach", ^{
            NSArray *array = [NSArray arrayWithObjects:@1,@2,@3,@4,@5, nil];
            LinkedList *sut = [[LinkedList alloc] initWithArray:array];
            id first = [sut first];
            [first shouldNotBeNil];
            [[first should] equal:@1];
        });
        
        it(@"Lay tham chieu doi tuong dau tien trong mot danh sach rong, doi tuong tra ve la doi tuong nil", ^{
            LinkedList *sut = [[LinkedList alloc] init];
            id first = [sut first];
            [first shouldBeNil];
        });
        
        it(@"Lay tham chieu doi tuong cuoi danh sach trong danh sach khong rong, doi tuong tra ve la doi tuong cuoi danh sach", ^{
            NSArray *array = [NSArray arrayWithObjects:@1,@2,@3,@4,@5, nil];
            LinkedList *sut = [[LinkedList alloc] initWithArray:array];
            id first = [sut last];
            [first shouldNotBeNil];
            [[first should] equal:@5];
        });
        
        it(@"Lay tham chieu doi tuong cuoi cung trong mot danh sach rong, doi tuong tra ve la doi tuong nil", ^{
            LinkedList *sut = [[LinkedList alloc] init];
            id first = [sut last];
            [first shouldBeNil];
        });
        
        
    });
        
});
SPEC_END
