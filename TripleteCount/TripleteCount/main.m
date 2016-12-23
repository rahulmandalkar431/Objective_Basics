//
//  main.m
//  TripleteCount
//
//  Created by BridgeLabz Solutions LLP on 23/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int size,count=0;
        int i,j,k;
        printf("\nEnter Size:\n");
        scanf("\n%d",&size);
        int array[size];
        printf("\nEnter Number:\n");
        for (i=0; i<size; i++) {
             scanf("%d",&array[i]);

        }
       
               
        for(i=0;i<size-2;i++){
            for (j=i+1; j<size-1; j++) {
                for (k=j+1; k<size; k++) {
                    if(array[i]+array[j]+array[k]==0){
                        printf("\nTripletes are:%d\t%d\t%d",array[i],array[j],array[k]);
                        count++;
                    }
                  
                }
               
            }
        }
        if(count==0){
            printf("\nTriplates not found ..!");
        }
        printf("\nTotal triplats are:%d\n",count);
        
    }
    return 0;
}
