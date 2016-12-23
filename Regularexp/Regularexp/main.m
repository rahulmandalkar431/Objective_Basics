//
//  main.m
//  Regularexp
//
//  Created by BridgeLabz Solutions LLP on 17/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Regular.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DataRead *data =[[DataRead alloc]init];
        char name[15];
        char sname[20];
        
        char mob[11];
        printf("\nEnter your name:\n");
        scanf("%s",name);
        printf("\nEnter your surname:\n");
        scanf("%s",sname);
        printf("\nEnter your Mobile No:\n");
        scanf("%s",mob);
        
        NSString *namestr =[NSString stringWithFormat:@"%s",name];
        NSString *fnamestr =[NSString stringWithFormat:@"%s",sname];
        NSString *mobstr =[NSString stringWithFormat:@"%s",mob];
  
        
         NSString *sms =@"Hello <<name>>, We have your full name as <<full name>> in our system. your contact number is 91-xxxxxxxxxx. Please,let us know in case of any clarification Thank you BridgeLabz 01/01/2016.";
        NSLog(@"\nMessage:%@\n",sms);
        [data setData:sms];
        [data dateDetect];
        [data display:namestr andfullname:fnamestr andmob:mobstr];
        
    }
    return 0;
}
