KDIR := /lib/modules/$(shell uname -r)/build
PWD  := $(CURDIR)

# Default rule: build mandatory
all: mandatory

mandatory:
	$(MAKE) -C $(KDIR) M=$(PWD)/mandatory modules

bonus:
	$(MAKE) -C $(KDIR) M=$(PWD)/bonus modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD)/mandatory clean
	$(MAKE) -C $(KDIR) M=$(PWD)/bonus clean
	# The kernel "clean" often leaves some junk, let's be thorough
	rm -rf mandatory/*.o mandatory/.*.cmd mandatory/*.mod.c mandatory/*.mod mandatory/*.o.d
	rm -rf bonus/*.o bonus/.*.cmd bonus/*.mod.c bonus/*.mod bonus/*.o.d

.PHONY: all mandatory bonus clean
