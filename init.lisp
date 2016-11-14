;; This is the master init file for StumpWM.
;; Someday in the future it will house nothing but very basic config and links to other files.

(in-package :stumpwm)


;;First task is try to set the "Windows Key" as the prefix key.
;; The winkey must first be set to F20 or some such in

(set-prefix-key (kbd "F12")) 

;; Set the mouse policy to focus follows mouse;
(setf *mouse-focus-policy* :sloppy) ;; :click, :ignore, :sloppy

