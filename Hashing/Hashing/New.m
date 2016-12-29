//
//  New.m
//  Hashing
//
//  Created by BridgeLabz Solutions LLP on 25/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "New.h"
#define MAX 20

@implementation HTable
const int size=20;
-(int)getHash:(int)key{
    return key%size;
}
-(void)insert:(struct Person *)precord and:(struct Record *)hashtable{
    int key, h;
    struct Record *temp;
    key = precord->pid;
    if([self Search:key and:&hashtable[key]] != -1)
    {
        printf("Duplicate Key\n");
        return;
    }
    h = [self getHash:key];
    temp = malloc(sizeof(struct Record));
    temp->data = precord;
    temp->next = &hashtable[h];
    hashtable[h] = *temp;
}
-(int)Search:(int)key and:(struct Record *)hashtable{
    int h;
    struct Record *ptr;
    h = [self getHash:key];
    ptr = &hashtable[h];
    while(ptr != NULL)
    {
        if(ptr->data->pid == key)
        {
            return h;
        }
        ptr = ptr->next;
    }
    return -1;
}
-(void)display:(struct Record *)hashtable{
    int count;
    struct Record *ptr;
    for(count = 0; count <size; count++)
    {
        printf("\n[%d]", count);
        if(&hashtable[count]!= NULL)
        {
            ptr = &hashtable[count];
            while(ptr != NULL)
            {
                printf("%d %s\t", ptr->data->pid, ptr->data->name);
                ptr=ptr->next;
            }
        }
    }
    printf("\n");
}
-(void)deleteRecord:(int)key and:(struct Record *)hashtable{
    int h;
    struct Record *temp, *ptr;
    h = [self getHash:key];
    if(&hashtable[h]==NULL)
    {
        printf("Key %d Not Found\n", key);
        return;
    }
    if(hashtable[h].data->pid == key)
    {
        temp = &hashtable[h];
        hashtable[h] = *hashtable[h].next;
        free(temp);
        return;
    }
    ptr = &hashtable[h];
    while(ptr->next != NULL)
    {
        if(ptr->next->data->pid == key)
        {
            temp = ptr->next;
            ptr->next = temp->next;
            free(temp);
            return;
        }
        ptr = ptr->next;
    }
    printf("Key %d Not Found\n", key);
}

@end



