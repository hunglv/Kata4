//
//  ExampleTest.m
//  Kata4
//

#import "Kiwi.h"

SPEC_BEGIN(ExampleSpec)
describe(@"Example test", ^{
    it(@"test should fail", ^{
        [[theValue(1) should] equal:theValue(2)];
    });
});
SPEC_END
