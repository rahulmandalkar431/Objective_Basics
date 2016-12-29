
#import <Foundation/Foundation.h>
#import "JSON.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        JSON *js=[[JSON alloc]init];
        [js getData];
       int a= [js calculateRice];
       int b= [js calculatePulse];
       int c= [js calculateWheat];
        printf("\n----------------------------------------------");
        printf("\nTotal Inventory Value:%d",a+b+c);
        [js writetojson];
    }
    return 0;
}
