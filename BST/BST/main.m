
#import <Foundation/Foundation.h>

#import "BST2.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Binary *btree=[[Binary alloc]init];
        struct Node *get;
        bool state=[btree Insert:9];
          printf("\nState:%d",state);
         state=[btree Insert:6];
        printf("\nState:%d",state);
        get=[btree Search:9];
        
        if(get==NULL){
            printf("\nNode not found !");
        }
        else{
            printf("\nNode %d is found ..",get->data);
        }
    }
    return 0;
}
