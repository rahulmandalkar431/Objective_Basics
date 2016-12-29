//
//  main.m
//  Hashing
//
//  Created by BridgeLabz Solutions LLP on 22/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//
#include <stdio.h>
#include<stdlib.h>
#define MAX 20
#import <Foundation/Foundation.h>
#import "New.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool
    {   HTable *ht=[[HTable alloc]init];
        const int size=20;
        int pid;
      //  char pname[20];
        struct Record *hashtable[size];//=(struct Record*)malloc(sizeof(struct Record));
        struct Person *precord=(struct Person*)malloc(sizeof(struct Person));
        int count, key, option;
        for(count = 0; count <= size - 1; count++)
        {
            hashtable[count] = NULL;
        }
        while(1)
        {
            printf("1. Insert a Record in Hash Table\n");
            printf("2. Search for a Record\n");
            printf("3. Delete a Record\n");
            printf("4. Show Hash Table\n");
            printf("5. Quit\n");
            printf("Enter your option\n");
            scanf("%d",&option);
            switch(option)
            {
                case 1 :
                    printf("Enter Person Details\n");
                    printf("Person ID:\t");
                    scanf("%d", &pid);
                    precord->pid=pid;
                    printf("Person Name:\t");
                    scanf("%s",precord->name);
                    
                    [ht insert:precord and:hashtable[size]];
                    break;
                    
                case 2 :
                    printf("Enter the element to search:\t");
                    scanf("%d", &key);
                    count=[ht Search:key and:hashtable[size]];
                 
                    if(count == -1)
                    {
                        printf("Element Not Found\n");
                    }
                    else
                    {
                        printf("Element Found in Chain:\t%d\n", count);
                    }
                    break;
                    
                case 3:
                    printf("Enter the element to delete:\t");
                    scanf("%d", &key);
                    [ht deleteRecord:key and:hashtable[size]];
                   
                    break;
                    
                case 4:
                    [ht display:hashtable[size]];
                    break;
                    
                case 5:
                    exit(1);
            }
        }
  
        
        
    }
        return 0;
    }
