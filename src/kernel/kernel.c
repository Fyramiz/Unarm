#include <stdint.h>
#include <stddef.h>
#include <kernel.h>
#include <unlibs.h>
// Replace these with your microcontroller's UART register definitions
#define UART_DR   ((volatile uint8_t*) 0x09000000)  // UART Data Register
#define UART_SR   ((volatile uint8_t*) 0x09000001)  // UART Status Register (assuming bit for RX status exists)

void putchar(char c) {
    // Wait for transmitter ready (replace with appropriate check based on your UART)
    while (!(UART_SR/* TX ready bit mask */));
    *UART_DR = c;
}

char input() {
    // Wait for receiver ready (replace with appropriate check based on your UART)
    while (!(UART_SR/* RX ready bit mask */));
    return *UART_DR;
}

void kmain(void) {
	print("$>");
        char ch = input();
	while(1){ print(&ch);
	break;	
}
}
