        .syntax unified
        .global _start
        .text

        .equ    PCC_BASE, 0x40065000
        .equ    PCC_PORTD_OFFSET, 0x130
        .equ    PCC_CGC_BIT, 30

        .equ    PORTD_BASE, 0x4004C000
        .equ    PORT_PCR_MUX_BITS, 0x8
        .equ    PORTD_PCR7_OFFSET, 0x1C
        .equ    PORTD_PCR6_OFFSET, 0x18

        .equ    GPIOD_BASE, 0x400FF0C0
        .equ    GPIOD7_OFFSET, 7
        .equ    GPIO_DDR, 0x14
        .equ    GPIO_PDOR, 0x0
        .equ    GPIO_PDIR, 0x10

        .thumb_func

_start:
    bl  init_clks
    bl  init_ports
    bl  init_gpio

main_loop:
    bl  leer_pulsador
    bl  escribir_led
    b   main_loop

init_clks:
    ldr     r4, =#PCC_BASE
    ldr     r5, =#PCC_PORTD_OFFSET
    mov     r0, #1
    lsl     r0, #PCC_CGC_BIT
    str     r0, [r4, r5]
    bx      lr

init_ports:
    ldr     r4, =#PORTD_BASE
    mov     r0, #1
    lsl     r0, #PORT_PCR_MUX_BITS
    ldr     r5, =#PORTD_PCR7_OFFSET
    str     r0, [r4, r5]
    ldr     r5, =#PORTD_PCR6_OFFSET
    orr     r0, #3
    str     r0, [r4, r5]
    bx      lr

init_gpio:
    ldr     r4, =#GPIOD_BASE
    mov     r0, #1
    lsl     r0, #GPIOD7_OFFSET
    ldr     r5, =#GPIO_DDR
    ldr     r1, [r4, r5]
    orr     r0, r1
    str     r0, [r4, r5]
    bx      lr

leer_pulsador:
    ldr     r4, =#GPIOD_BASE
    ldr     r0, [r4, #GPIO_PDIR]
    lsr     r0, #GPIOD7_OFFSET
    ands    r0, #1
    bx      lr

escribir_led:
    ldr     r4, =#GPIOD_BASE
    ldr     r1, [r4, #GPIO_PDOR]
    lsl     r0, #GPIOD7_OFFSET
    orr     r0, r1
    str     r0, [r4, #GPIO_PDOR]
    bx      lr
