
#include <stdint.h>

#include "util.h"

uint16_t parse_hex16(char *ptr) {
  uint16_t ret;
  uint8_t i;
  for(i=0,ret=0; i<4 && 
      ((*ptr>='0' && *ptr<='9') || 
       (*ptr>='A' && *ptr<='F') ||
       (*ptr>='a' && *ptr<='f')); i++,ptr++) {
    ret<<=4;
    // '0'-'9' is 0x30-0x39
    // 'A'-'F' is 0x41-0x46
    // 'a'-'f' is 0x61-0x66
    if (*ptr & 0x10)
      ret+= *ptr-'0';
    else
      ret+= (*ptr & 0x0F) +9;
  }
  return ret;
}

