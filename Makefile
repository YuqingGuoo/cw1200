cw1200_core-y := \
		fwio.o \
		txrx.o \
		main.o \
		queue.o \
		hwio.o \
		bh.o \
		wsm.o \
		sta.o \
		scan.o \
		debug.o \
		cw1200_fw_bin.o
#cw1200_core-$(CONFIG_PM)	+= pm.o

EXTRA_AFLAGS := -Xassembler -I$(srctree)/$(src)

#CFLAGS_wsm.o += -DDEBUG
#CFLAGS_sta.o += -DDEBUG
#CFLAGS_scan.o += -DDEBUG
#CFLAGS_cw1200_spi.o += -DDEBUG
#CFLAGS_cw1200_spi_nbs.o += -DDEBUG

cw1200_wlan_sdio-y := cw1200_sdio.o
cw1200_wlan_spi-y := cw1200_spi.o
cw1200_wlan_spi_nbs-y := cw1200_spi_nbs.o

obj-$(CONFIG_CW1200) += cw1200_core.o
obj-$(CONFIG_CW1200_WLAN_SDIO) += cw1200_wlan_sdio.o
obj-$(CONFIG_CW1200_WLAN_SPI) += cw1200_wlan_spi.o
obj-$(CONFIG_CW1200_WLAN_SPI_NBS) += cw1200_wlan_spi_nbs.o
