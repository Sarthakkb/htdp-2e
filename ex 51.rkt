;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex 51|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "lab8-teachpack.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "lab8-teachpack.rkt" "installed-teachpacks")) #f)))
;; EX 51

;; A TrafficLight is one of:
;; - red
;; - yellow
;; - green
;; interp. A TrafficLight is one of these colors. 

;; GLOBAL CONSTANTS
(define BACKGROUND (rectangle 100 100 "solid" "white"))
(define (my-circle c)
  (circle 10 "solid" c))


(define (main c)
  (big-bang c
    (on-tick change-color)
    (to-draw render)))

;; String -> Image
;; on the clock-tick, changes color of the traffic light.
#; (define (change-color ...)
     ...)
(check-expect (change-color "red") (my-circle "yellow"))
(check-expect (change-color "yellow") (my-circle "green"))
(check-expect (change-color "green") (my-circle "red"))

(define (change-color c)
  (cond
    ((string=? "red" c) (my-circle "yellow"))
    ((string=? "yellow" c) (my-circle "green"))
    ((string=? "green" c) (my-circle "red"))))
    
;; WorldState -> Image
;; Places the traffic light in the center of the BACKGROUND
(define (render c)
  (place-image (my-circle "red") 50 50 BACKGROUND))

(main "red")