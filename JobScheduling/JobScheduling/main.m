
#import <Foundation/Foundation.h>

#define maxi 5
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int larg,location=0,prevfin=0;
        int  T[maxi],D[maxi],M[maxi];
        
        T[0]=2;     D[0]=1;      M[0]=1;
        T[1]=1;     D[1]=2;      M[1]=2;
        T[2]=5;     D[2]=2;      M[2]=1;
        T[3]=3;     D[3]=4;      M[3]=3;
        T[4]=4;     D[4]=10;     M[4]=1;
        
        int start[maxi],finish[maxi],late[maxi];
        
        for (int i=0; i<maxi; i++) {
            start[i]=prevfin;
            finish[i]=start[i]+M[i];
            late[i]=finish[i]-D[i];
            prevfin=finish[i];
        }
  /*
//------------Task 2---------------------------
        start[0]=0;  // start time of first is zero
        finish[0]=start[0]+M[0];
        late[0]=finish[0]-D[0];
//------------Task 1---------------------------
        start[1]=finish[0];
        finish[1]=start[1]+M[1];
        late[1]=finish[1]-D[1];
//------------Task 5---------------------------
        start[2]=finish[1];
        finish[2]=start[2]+M[2];
        late[2]=finish[2]-D[2];

//------------Task 3---------------------------
        start[3]=finish[2];
        finish[3]=start[3]+M[3];
        late[3]=finish[3]-D[3];
//------------Task 4---------------------------
        start[4]=finish[3];
        finish[4]=start[4]+M[4];
        late[4]=finish[4]-D[4];
//---------------------------------------------*/
        larg=late[0];
        for (int i=1; i<maxi; i++) {
            if(larg<late[i])
            {
                larg=late[i];
                location=i;
            }
        }
 //--------------------------------------------
        
        
        
        printf("\n---------------------------------");
        printf("\nTask \t\tOvershootTime");
        printf("\n---------------------------------");
        for (int i=0; i<maxi; i++) {
            printf("\n%d\t\t\t%d",T[i],late[i]);
        }
        printf("\n---------------------------------");
        printf("\nMaximum Overshoot time is %d for Task %d",larg,T[location]);
        printf("\n---------------------------------\n\n");
        
        
    }
    return 0;
}
