
#import <Foundation/Foundation.h>
#import "JobOvershoot.h"
#define maxi 5
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Job1 *job=[[Job1 alloc]init];
        [job readFromFile];
        [job schedule];
        [job display];


               
    }
    return 0;
}
