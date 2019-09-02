pam_keyctl.so: pam_keyctl.c
	gcc -Wall -Wextra -Wconversion -fPIC -shared -o $@ $< -lpam -lkeyutils

install: pam_keyctl.so
	sudo install -g root -o root -m 755 -d             /lib/security/
	sudo install -g root -o root -m 0755 pam_keyctl.so /lib/security/

clean:
	rm -rf pam_keyctl.so

.PHONY: install clean
