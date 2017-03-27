;; This is the master init file for StumpWM.
;; Someday in the future it will house nothing but very basic config and links to other files.

(in-package :stumpwm)


;;First task is try to set the "Windows Key" as the prefix key.
;; The winkey must first be set to F20 or some such in

;;Run xmodmap. For some reason, it won't run from xinit
(run-shell-command "xmodmap ~/.Xmodmap")

;;The "Ubuntu Key" is mapped to F23 in Xmodmap
(set-prefix-key (kbd "F12")) 

;; Set the mouse policy to focus follows mouse;
(setf *mouse-focus-policy* :sloppy) ;; :click, :ignore, :sloppy



;; Stumpwm-specific options to xkb

;; Enable X11 zap
;; right window key a level 5 switch,
;; capslock a compose key
;; both shifts together a capslock but cancelled by either
;; non-breaking space at level 3 together with a thin one at level 4,
;; and finally adds various miscellaneous typographic symbols.

;;(run-shell-command "setxkbmap -option 
;; terminate:ctrl_alt_bksp,compose:caps,shift:both_capslock_cancel,nbsp:level3n,misc:typo" )


;; More info:
;;https://groups.google.com/forum/#!topic/stumpwm-devel-mirror/xXIcuCaHH4E


;;;;;;;;;;;;;;;;;;;;;
;; Start Up groups ;;
;;;;;;;;;;;;;;;;;;;;;
(run-commands "gnewbg Org"
	      "gnewbg Clojure"
	      "gnewbg Ruby")


(defparameter X-TERM "exec gnome-terminal"
  "X-TERM command definition so we can launch a terminal emulator")

(defparameter WEB-BROWSER "exec conkeror"
  "Set default web browser")

(defparameter CONSOLE "exec gnome-terminal --hide-menubar"
  "X-TERM command definition so we can launch a terminal emulator")

;; Console
(define-key *root-map* (kbd "c")
  CONSOLE)

(define-key *root-map* (kbd "C")
  "exec gnome-terminal --profile r00t --hide-menubar")


;; Browsing
(define-key *root-map* (kbd "f")
  WEB-BROWSER)

(define-key *root-map* (kbd "F")
  "exec firefox")

;;Setup
(define-key *root-map* (kbd "u")
  "exec unity-control-center")


