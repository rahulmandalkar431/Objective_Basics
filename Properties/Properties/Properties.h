#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (readwrite)BOOL running;
-(void)startEngine;
-(void)stopEngine;
@end
