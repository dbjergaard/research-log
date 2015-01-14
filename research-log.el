(require 'org)
(setq org-html-metadata-timestamp-format "%m/%d/%Y"
      org-publish-project-alist
      '(("rlog-orgfiles"
	 :base-directory "~/research-log/"
	 :base-extension "org"
	 :publishing-directory "~/public/"
	 :recursive t
	 :publishing-function org-publish-org-to-html
	 :headline-levels 3
	 :auto-preamble t
	 :section-numbers nil
	 :table-of-contents nil
	 :style-include-default nil
	 :style "<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/style.css\" />"
	 :html-preamble t
	 :html-postamble "<p class=\"postamble\"> Written by: %a. Last updated %d. </p>")
	("rlog-images"
	 :base-directory "~/research-log/images/"
	 :base-extension "jpg\\|gif\\|png"
	 :publishing-directory "~/public/images/"
	 :recursive t
	 :publishing-function org-publish-attachment)
	("rlog-plots"
	 :base-directory "~/research-log/posts/plots/"
	 :base-extension "jpg\\|gif\\|png"
	 :publishing-directory "~/public/posts/plots/"
	 :recursive t
	 :publishing-function org-publish-attachment)
	("rlog-css"
	 :base-directory "~/research-log/css/"
	 :base-extension "css\\|el"
	 :recursive t
	 :publishing-directory "~/public/"
	 :publishing-function org-publish-attachment)
	("rlog-website" :components ("rlog-orgfiles" "rlog-images" "rlog-plots" "rlog-other" "rlog-css"))))
