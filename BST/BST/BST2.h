//
//  BST2.h
//  BST
//
//  Created by BridgeLabz Solutions LLP on 27/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
struct Node {
    int data;
    struct Node *left;
    struct Node *right;
};
@interface Binary : NSObject
-(void)createTree:(struct Node *)temp andItem:(int)data;
-(struct Node *)Search:(int)data;
-(BOOL)Insert:(int)data;
-(void)delete1:(int)data;
-(void)preOrder:(struct Node *)current;
-(void)inOrder:(struct Node *)current;
-(void)postOrder:(struct Node *)current;
-(struct Node *)getTree;
@end
