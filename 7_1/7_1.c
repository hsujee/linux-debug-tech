#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");

static int __init init_oops(void) {
    *((int*)0x00) = 0x19910415;
    printk("init oops!\n");
    return 0;
}

static void __exit exit_oops(void) {
    printk("exit oops!\n");
}

module_init(init_oops);

module_exit(exit_oops);