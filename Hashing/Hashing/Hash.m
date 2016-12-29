//
//  Hash.m
//  Hashing
//
//  Created by BridgeLabz Solutions LLP on 22/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hash.h"

@implementation Hash
struct hash *hashTable = NULL;
int eleCount = 128;



-(struct node*)createNode:(int)key andValue:(int)value;{
    struct node *newnode;
    newnode = (struct node *) malloc(sizeof(struct node));
    newnode->key = key;
    newnode->value =value;
    newnode->next = NULL;
    return newnode;
}

-(void) insertToHash:(int)key andValue:(int)value{
    int hashIndex = key % eleCount;
    struct node *newnode =[self  createNode:key andValue:value];
    /* head of list for the bucket with index "hashIndex" */
    if (!hashTable[hashIndex].head) {
        hashTable[hashIndex].head = newnode;
        hashTable[hashIndex].count = 1;
        return;
    }
    /* adding new node to the list */
    newnode->next = (hashTable[hashIndex].head);
    /*
     * update the head of the list and no of
     * nodes in the current bucket
     */
    hashTable[hashIndex].head = newnode;
    hashTable[hashIndex].count++;
    return;
}
-(void) display{
    struct node *myNode;
    int i;
    for (i = 0; i < eleCount; i++) {
        if (hashTable[i].count == 0)
            continue;
        myNode = hashTable[i].head;
        if (!myNode)
            continue;
        printf("\nData at index %d in Hash Table:\n", i);
        printf("Key  Value \n");
        printf("--------------------------------\n");
        
        while (myNode != NULL)
        {
            printf("%d", myNode->key);
            printf("%d", myNode->value);
            myNode = myNode->next;
        }
    }
    return;
}
-(void)searchInHash:(int)key {
    int hashIndex = key % eleCount, flag = 0;
    struct node *myNode;
    myNode = hashTable[hashIndex].head;
    
    if (!myNode) {
        printf("Search element unavailable in hash table\n");
        return;
    }
    while (myNode != NULL) {
        if (myNode->key == key) {
            printf("Key  : %d\n", myNode->key);
            printf("Value     : %d\n", myNode->value);
        
            flag = 1;
            break;
        }
        myNode = myNode->next;
    }
    if (!flag)
        printf("Search element unavailable in hash table\n");
    return;
}

@end
