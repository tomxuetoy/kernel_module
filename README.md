trial_kernel-module
___

to show how to make a simple kernel module


How to run it on Android phone
    Compile
        sudo make CROSS_COMPILE=/usr/local/arm/arm-2009q1/bin/arm-none-linux-gnueabi- -C /home/tomxue/Tom/Source_Code/HTC/pyramid-ics-crc-3.0.16-c764bfb  M=$(pwd) modules

    Replace
        Copy the zImage and *.ko files to the zip archive


For SGS3 kernel compilation, please refer to the post: 
    http://stackoverflow.com/questions/13046010/why-my-kernel-module-make-gives-this-error-bus-error-core-dumped#comment17715978_13046010
