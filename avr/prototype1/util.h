
#ifndef __UTIL_H__
#define __UTIL_H__

#include <stdint.h>

/** parses hexdec encoded string to integer. simply stops decoding if error
 * encountered
 *
 * \param ptr string representation of number; up to 4 digits long (can be
 *            shorter); does not need to be null terminated
 */
uint16_t parse_hex16(char *ptr);

#endif
