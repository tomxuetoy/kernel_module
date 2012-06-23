MODULE_NAME := hello
obj-m := $(MODULE_NAME).o

all: modules strip

modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

modules_install:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install

strip:
	$(CROSS_COMPILE)strip $(MODULE_NAME).ko --strip-unneeded

clean:
	rm -rf .tmp_versions *.mod.* *.o *.ko *.order *.symvers .*.cmd
