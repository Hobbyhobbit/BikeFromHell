// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

/**
 * protocol design
 * ---------------
 *
 * speedwise
 *   - 6 Mhz / 57.6 kbaud = 277 instructions/symbol
 *   - ISR : 4+3+4=11 instructions
 *
 * protocol goals
 *   - read in data must be fast : binary
 *   - everything else should be easy to debug : text
 *   - communication both ways
 *   - stability guaranteed using ISR timeouts
 *
 * protocol implementation
 *   - reading in ISR
 *     - reads directly into LED buffer
 *     - reads into command buffer & parses after '\n'
 *   - sent as messages; after first symbol watchdog is started
 *   - cancels transmission if not finished
 *   - message types (first byte) :
 *     - 0x00 : request status
 *     - 0x01 : "image"
 *       - 1 byte : slots / turn
 *       - ... : data bytes to be flushed into SRs
 *   - status messages are sent back as text strings, null-terminated
 */



