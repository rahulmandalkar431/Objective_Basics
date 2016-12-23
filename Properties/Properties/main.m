
#import <Foundation/Foundation.h>
#import "Properties.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car =[[Car alloc]init];
        [car startEngine];
        NSLog(@"Value:%d:",car.running);
        car.running=NO;
    }
    return 0;
}
