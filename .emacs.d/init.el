(org-babel-load-file "~/.emacs.d/configuration.org")
(org-babel-load-file "~/.emacs.d/configuration-reserved.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(cyberpunk))
 '(custom-safe-themes
   '("b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" default))
 '(eshell-visual-commands
   '("vi" "screen" "tmux" "top" "htop" "less" "more" "lynx" "links" "ncftp" "mutt" "pine" "tin" "trn" "elm" "nload" "nmon" "ncdu"))
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(org-agenda-files
   '("/home/CLOUD/syncthing/org/org.org" "/home/CLOUD/syncthing/org/pub.org" "/home/CLOUD/syncthing/org/toPay.org" "/home/CLOUD/syncthing/org/events.org" "/home/CLOUD/syncthing/org/bar.org" "/home/CLOUD/syncthing/org/later.org" "/home/CLOUD/syncthing/org/gcal.org" "/home/CLOUD/syncthing/org/ideas.org"))
 '(package-selected-packages
   '(consult docker-compose-mode dockerfile-mode vlf emojify unicode-fonts corfu orderless pcmpl-args cape org-roam-ui org-roam systemd ansible cyberpunk-theme graphviz-dot-mode plantuml-mode auctex ace-window switch-window expand-region fountain-mode pandoc latex-preview-pane lua-mode company-tern ag xref-js2 js2-refactor hydra elfeed-web org-fancy-priorities calfw-gcal calfw calfw-org org-gcal htmlize elfeed-goodies elfeed-org elfeed js2-mode nodejs-repl multiple-cursors yaml-mode babel fontify-face use-package org-bullets markdown-mode helm fcitx)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
