//
//  BST2.m
//  BST
//
//  Created by BridgeLabz Solutions LLP on 27/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BST2.h"

@implementation Binary

struct Node *root;
-(void)createTree:(struct Node *)temp andItem:(int)data{
    
}
-(BOOL)Insert:(int)data{
    struct Node *temp=(struct Node*) malloc(sizeof(struct Node));
   
    temp->data=data;
    temp->right=NULL;
    temp->left=NULL;
    struct Node *current;
    struct Node *parent;
    if(root==NULL){
        root=temp;
    }
    else{
        current=root;
    
    while(current){
        parent=current;
       if (temp->data==current->data)
        {
        return false;
        }
        else if(temp->data>current->data)
        {
            current=current->right;
            if (current==NULL)
            {
                parent->right=temp;
                return TRUE;
            }
        }
        else if(temp->data<=current->data)
        {
            current=current->left;
            if (current==NULL)
            {
                parent->left=temp;
                return true;
            }
        }
    
    };}
    
    return false;
}
-(struct Node *)Search:(int)data{
    struct Node *current=root;
    while (current->data!=data)
    {
        printf("%d",current->data);
        if (current->data>data) {
            current=current->left;
        }
        else{
            current=current->right;
        }
        if (current==NULL) {
            return NULL;
        }
    }
    return current;
}
@end
