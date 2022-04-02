;; emacs -Q --script build.el

;; TODO: For some reason emacs makes backup files when running this script
;; even though my config has the option already disabled
(setq make-backup-files nil)

(require 'ox-publish)
(require 'ox-html)

(defvar website-name "zakariyaoulhadj.com")

(defvar html-head
  "<link rel='icon' type='image/x-icon' href='assets/images/favicon.ico'/>
   <link rel='stylesheet' href='assets/css/simple.min.css'>
   <link rel='stylesheet' href='assets/css/styles.css' type='text/css'/>")

(defvar html-preamble
  "<center>
       <a href='index.html'>Home</a> |
       <a href='about.html'>About</a> |
       <a href='portfolio.html'>Porfolio</a> |
       <a href='blog.html'>Blog</a> |
       <a href='guides.html'>Guides</a> |
       <a href='travel.html'>Travel</a> |
       <a href='contact.html'>Contact</a>
   </center>")

(defvar html-postamble
  "<center>
       zakariyaoulhadj.com
       <span>2020-2022</span>
   </center>")


(setq
 org-export-html-style-include-scripts nil
 org-export-html-style-include-default nil
 org-publish-use-timestamps-flag nil
 org-html-doctype "html5"
 org-html-head-include-default-style nil
 org-html-validation-link nil
 org-html-html5-fancy t
 org-html-htmlize-output-type 'css
 org-image-actual-width nil
 org-link-file-path-type 'relative)


(setq org-publish-project-alist
      `(("pages"
         :recursive t
         :base-directory "./org"
         :base-extension "org"
         :publishing-directory "."
         :publishing-function org-html-publish-to-html
         :html-head ,html-head
         :html-preamble ,html-preamble
         :html-postamble ,html-postamble
         :with-author nil
         :with-creator nil
         :with-toc nil
         :with-date nil
         :section-numbers nil
         :time-stamp-file t
         :auto-sitemap nil)

        ;; ("css"
        ;;  :recursive t
        ;;  :base-directory "./assets/css/"
        ;;  :base-extension "css"
        ;;  :publishing-directory "./public/css/"
        ;;  :publishing-function org-publish-attachment)
        
        ;; ("images"
        ;;  :recursive t
        ;;  :base-directory "./assets/images/"
        ;;  :base-extension "ico\\|jpg\\|png\\|gif"
        ;;  :publishing-directory "./public/images/"
        ;;  :publishing-function org-publish-attachment)
        
        (,website-name :components ("pages"))))



(org-publish-project website-name)
(message "Build complete")
