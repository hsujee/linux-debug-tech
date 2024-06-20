#include<stdio.h>
#include<stdlib.h>
#include <pthread.h>
 
void* task_entry(void* arg);  
 
int main(){  
    pthread_t pid1,pid2;  
 
    pthread_create(&pid1,NULL,task_entry,(void *)1);  
    pthread_create(&pid2,NULL,task_entry,(void *)2);  
 
    pthread_join(pid1,NULL);  
    pthread_join(pid2,NULL);  
 
    return 0;  
}
  
void* task_entry(void* arg){  
	while(1){
		sleep(1);
	}
}
