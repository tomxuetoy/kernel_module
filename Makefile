obj-m += hello.o

ARCH = arm
CROSS_COMPILE = /home/tomxue/Tom/Source_Code/Android/Samsung/toolchain/android_prebuilt_toolchains/arm-eabi-4.4.3/bin/arm-eabi-
KSRC = /home/tomxue/Tom/Source_Code/Android/Samsung/GT-I9300_Kernel

all: modules

modules:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KSRC) M=$(shell pwd) modules

clean:
	rm -rf *.mod.* *.o *.ko *.order *.symvers
