.PHONY: all website clean publish
all: website
website:
	/usr/bin/emacs --load ./research-log.el --batch --eval '(org-publish "rlog-website")'
website-force: research-log.el
	/usr/bin/emacs --load ./research-log.el --batch --eval '(org-publish "rlog-website" t)'
publish:
	rsync -avz ~/public/ grads-bc:/var/phy/web/users/dmb60/public
