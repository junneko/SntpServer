############################################################
#	MAKEFILE
############################################################

# 生成HEX名(拡張子なし)
TARGET = kdb-sntp

# 
CC      = avr-gcc
OBJCOPY = avr-objcopy
OBJDUMP = avr-objdump

# メインを一番先にすること
OBJ =	avrntp.o \
	driver/enc28j60.o \
	driver/lcd.o \
	bios/bios.o \
	bios/stime.o \
	stack/ipv4/arp.o \
	stack/ipv4/ethernet.o \
	stack/ipv4/icmp.o \
	stack/ipv4/ip.o \
	stack/ipv4/tcp.o \
	stack/ipv4/udp.o \
	stack/ipv4/dhcp.o \
	stack/ipv4/dns.o \
	stack/ipv4/nbns.o \
	stack/ipv4/resolver.o \
	stack/ipv4/sntp.o \
	stack/ipv4/time.o \
	stack/ipv4/ipv4_constval.o \
	library/utility.o \
	library/netutility.o \
	library/timeutility.o \
	interrupt.o \
	http.o \
	display.o \
	log.o \
	gps.o \
	7segtimer.o \
	command.o \
	parameter.o

# ターゲットのCPU
#MCU = atmega644a
MCU = atmega644p
#MCU = atmega644pa

# インクルードファイル
INCLUDE = -I./include

# Cファイル最適化オプション
OPTIMIZE = -Os -mcall-prologues

# コンパイルオプション
CFLAGS = -Wall $(OPTIMIZE) $(INCLUDE) -mmcu=$(MCU)
ASFLAGS = -Wall -mmcu=$(MCU) -x assembler-with-cpp
LDFLAGS = -Wl,-Map,$(TARGET).map

# 生成ファイル名
TARGETFILE = $(TARGET).hex
ELFFILE = $(TARGET).elf

all: $(TARGETFILE)

$(TARGETFILE) : $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(ELFFILE) $(OBJ)
	$(OBJCOPY) -I elf32-avr -O ihex -R .eeprom -R .fuse -R .lock $(ELFFILE) $(TARGETFILE)
	$(OBJDUMP) -h $(ELFFILE) > memmap.map
	$(OBJDUMP) -S $(ELFFILE) > $(TARGET).s
	del /s /q *.o

clean:
	del /s /q *.o
	del /s /q *.bak
	del /s /q $(TARGET).map $(TARGET).s

# .c -> .o
%.o : %.c %.h
	$(CC) $(CFLAGS) -c $< -o $@

# .s -> .o
%.o : %.s
	$(CC) $(ASFLAGS) -c $< -o $@

# end of makefile
