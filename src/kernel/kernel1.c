#include <stdint.h>
#include <stdio.h>
volatile uint8_t *uart = (uint8_t *) 0x09000000;
 
void putchar(char c){
	*uart = c;
}
 
void print(const char *s) {
    while(*s != '\0') {
        putchar(*s);
        s++;
    }
}
void input(){
	char input;
	fgets(input, 1000, stdin);
	return input;
}
void kmain(void) {
     print("Real Work sould start NOW!!!!!\n");
     while(input){
     	print(input);
     }
}
