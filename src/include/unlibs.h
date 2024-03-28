#include <kernel.h>
#if !defined(_UART_H)
#define  _UART_H 
#include <stdint.h>

void uart_putc(const char c);
void uart_puthex(uint64_t n);
void print(const char *s);

#endif  /*  _UART_H   */
void print(const char *s);

