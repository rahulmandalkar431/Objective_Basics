//
//  main.m
//  CliniqueManagement
//
//  Created by BridgeLabz Solutions LLP on 27/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Register.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Register *regi=[[Register alloc]init];
        int ch,ptid;
        do{
        printf("\n---------------------------");
        printf("\n1)Register New Patient\n2)Patient Info\n3)Bill Info\n4)Appointment Info\n5)Edit\n6)Report\n7)Exit");
        printf("\n---------------------------");
        printf("\nEnter Option:\n");
        scanf("%d",&ch);
        switch (ch) {
            case 1:
                [regi pregister ];
                
                
                  break;
            case 2:
               
                printf("\nEnter Patient");
                scanf("%d",&ptid);
                
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            default:
                break;
        }
        }while(ch!=7);
    }
    return 0;
}
