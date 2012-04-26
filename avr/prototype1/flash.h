
#ifndef __FLASH_H__
#define __FLASH_H__

// A is the CAT further away from the USB port
// (for the small currents)
#define SINA_DDR  	DDRD
#define SINA_PORT 	PORTD
#define SINA_PIN 	2
#define CLKA_DDR  	DDRD
#define CLKA_PORT	PORTD
#define CLKA_PIN	3
#define LATCHA_DDR 	DDRD
#define LATCHA_PORT	PORTD
#define LATCHA_PIN	4

// A is the CAT further closer to the USB port
// (for the large currents)
#define SINB_DDR 	DDRB
#define SINB_PORT	PORTB
#define SINB_PIN	5
#define CLKB_DDR 	DDRB
#define CLKB_PORT	PORTB
#define CLKB_PIN	4
#define LATCHB_DDR 	DDRB
#define LATCHB_PORT	PORTB
#define LATCHB_PIN	3



/**
 * initializes the I/O ports for later invocation of
 * ``flashAB``
 */
void init_flash();

/**
 * sends bits to specified LED driver
 *
 * \param which driver to send to (A=0, B=1)
 * \param value bits to send (MSB sent first)
 */
void flashAB(uint8_t which,uint16_t value);

/**
 * convenience function to send data to driver ``A``
 */
void flashA(int a,int b);
/**
 * convenience function to send data to driver ``B``
 */
void flashB(int a,int b);

#endif
