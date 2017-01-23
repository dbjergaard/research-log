.PHONY: all website clean publish
all: publish
website:
	rsync -az ~/Dropbox/org/research/plots/ ./posts/plots
	emacs --load ./research-log.el --batch --eval '(org-publish "rlog-website")'
website-force: research-log.el
	emacs --load ./research-log.el --batch --eval '(org-publish "rlog-website" t)'
publish: website
	rsync -az ~/public/ grads-bc:/var/phy/web/users/dmb60/public
