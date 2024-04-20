#ifndef __PREEMPTIVE_H__
#define __PREEMPTIVE_H__

#define MAXTHREADS 4
#define CNAME(s) _ ## s
#define LABELNAME(label) label ## $

// create a counting semaphore s that is initialized to n
#define SemaphoreCreate(s, n) \
    s = n \

// do (busy-)wait() on semaphore s
#define SemaphoreWaitBody(s, label) \
    { \
        __asm \
            LABELNAME(label): \
                MOV A, CNAME(s) \
                JZ LABELNAME(label) \
                JB ACC.7, LABELNAME(label) \
                DEC CNAME(s) \
        __endasm; \
    }

#define SemaphoreWait(s) SemaphoreWaitBody(s, __COUNTER__) 


 // signal() semaphore s
#define SemaphoreSignal(s) \
    { \
        __asm \
            INC CNAME(s) \
        __endasm; \
    }


typedef char ThreadID;
typedef void (*FunctionPtr)(void);

ThreadID ThreadCreate(FunctionPtr);
void ThreadYield(void);
void ThreadExit(void);
void myTimer0Handler(void);

#endif