#include <8051.h>
#include "preemptive.h"

/*
    * @@@ [2pt]
    * declare your global variables here, for the shared buffer
    * between the producer and consumer.
    * Hint: you may want to manually designate the location for the
    * variable. you can use
    * __data __at (0x30) type var;
    * to declare a variable var of the type
*/
// Semaphores
__data __at (0x20) int mutex;
__data __at (0x22) int full;
__data __at (0x24) int empty;

__data __at (0x3D) char buffer [3];
__data __at (0x30) char buffer_head;
__data __at (0x31) char buffer_tail;



/* [8 pts] for this function
    * the producer in this test program generates one characters at a
    * time from 'A' to 'Z' and starts from 'A' again. The shared buffer
    * must be empty in order for the Producer to write.
*/
void Producer(void) {
    /*
        * @@@ [2 pt]
        * initialize producer data structure, and then enter
        * an infinite loop (does not return)
    */
    static __data __at (0x33) char buffer_next = 'A';

    while (1) {
        /* 
            * @@@ [6 pt]
            * wait for the buffer to be available,
            * and then write the new data into the buffer 
        */
        SemaphoreWait(empty);
        SemaphoreWait(mutex);

        __critical{
            buffer[buffer_tail] = buffer_next;
            buffer_tail++;
            if (buffer_tail > 2) buffer_tail = 0;  
            buffer_next++;
            if(buffer_next > 'Z') buffer_next = 'A';
        }

        SemaphoreSignal(mutex);
        SemaphoreSignal(full);
    }
}

/* [10 pts for this function]
    * the consumer in this test program gets the next item from
    * the queue and consume it and writes it to the serial port.
    * The Consumer also does not return.
*/
void Consumer(void) {
    /* @@@ [2 pt] initialize Tx for polling */
    EA = 0;
        TMOD |= 0x20;
        TH1 = -6;
        SCON = 0x50;
        TR1 = 1;
        TI = 1;
    EA = 1;
    while (1) {
        /* 
            * @@@ [2 pt] wait for new data from producer
            * @@@ [6 pt] write data to serial port Tx,
            * poll for Tx to finish writing (TI),
            * then clear the flag
        */
        SemaphoreWait(full);
        SemaphoreWait(mutex);

        while (!TI);
        __critical{
            SBUF = buffer[buffer_head];
            buffer[buffer_head] = ' ';
            buffer_head++;
            if(buffer_head > 2) buffer_head = 0;
            TI = 0;
        }

        SemaphoreSignal(mutex);
        SemaphoreSignal(empty);
    }
}

/* [5 pts for this function]
    * main() is started by the thread bootstrapper as thread-0.
    * It can create more thread(s) as needed:
    * one thread can act as producer and another as consumer.
*/
void main(void) {
    /*
        * @@@ [1 pt] initialize globals
        * @@@ [4 pt] set up Producer and Consumer.
        * Because both are infinite loops, there is no loop
        * in this function and no return.
    */
    // create semaphore
    SemaphoreCreate(mutex, 1);
    SemaphoreCreate(full, 0);
    SemaphoreCreate(empty,3);

    //initialize buffer, head&tail
    buffer[0] = ' ';
    buffer[1] = ' ';
    buffer[2] = ' ';
    buffer_head = 0;
    buffer_tail = 0;
    
    ThreadCreate(Producer);
    Consumer();
}

void _sdcc_gsinit_startup(void) {
    __asm
        ljmp _Bootstrap
    __endasm;
}
void _mcs51_genRAMCLEAR(void) {}
void _mcs51_genXINIT(void) {}
void _mcs51_genXRAMCLEAR(void) {}

void timer0_ISR(void) __interrupt(1) {
    __asm
        ljmp _myTimer0Handler
    __endasm;
}