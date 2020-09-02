//FCFS (FIRST COME FIRST SERVE) scheduling
#include<stdio.h>
void main()
{
  int process[100],burstTime[100],waitingTime[100],turnAroundTime[100],i,j,num_process,avgWaitingTime,totalWaitingTime=0,totalTurnAroundTime;
  waitingTime[0]=0;//intial waitingTime
  turnAroundTime[0]=0;//intial turnAroundTime
  totalTurnAroundTime=0;

  printf("enter the number of process");
  scanf("%d",&num_process);
  
  //taking process
  printf("enter the process");
  for(i=0;i<num_process;i++)
  {
    scanf("%d",&process[i]);
  }
  
  //taking burstTime
  printf("enter the burstTime of process");
   for(i=0;i<num_process;i++)
  { 
    scanf("%d",&burstTime[i]);
  }
  
  //calculate  burstTime
  for(i=1;i<num_process;i++)
  {
      
      waitingTime[i]=waitingTime[i-1]+burstTime[i-1];
  }
  //totalWaitingTime 
  for(i=1;i<num_process;i++)
  {
      
      totalWaitingTime=waitingTime[i]+totalWaitingTime;
  }
  //turn around time
  for(i=0;i<num_process;i++)
  {
      turnAroundTime[i]=waitingTime[i]+burstTime[i];
  }
  //total turnAroundTime
  for(i=0;i<num_process;i++)
  {
      totalTurnAroundTime=turnAroundTime[i]+totalTurnAroundTime;
  }
 
 printf("processes \t |burstTime\t |waitingTime\t |turnAroundTime\n");
 for(i=0;i<num_process;i++)
  {
      printf("%d\t \t |%d\t \t |%d\t \t |%d\n",process[i],burstTime[i],waitingTime[i],turnAroundTime[i]);
  } 
  printf("---------------------------\naverage waitingTime = %d",totalWaitingTime/num_process);
  printf("\naverage turnAroundTime = %d\n----------------------------",totalTurnAroundTime/num_process);
}

