#ifndef __TIMER_H__
#define __TIMER_H__

#include <stdint.h>

/**
 * set a timeout. deletes a previously set timeout.
 *
 * @param ms delay in milliseconds
 * @param cb callback to be called when time's up
 */
void timeout_set(uint16_t ms,void(*cb)());

/**
 * reset the previously set timeout. equivalent to a second
 * call to ``timeout_set`` with the same time as before
 */
void timeout_clear();

/**
 * stops the timer
 */
void timeout_delete();

#endif
