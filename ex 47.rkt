;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex 47|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;; EX 47

;; CONSTANTS

(define BACKGROUND (rectangle 200 200 "solid" "black"))
(define BAR (rectangle 400 10 "solid" "red"))

(define (gauge-prog x)
  (big-bang x
        (on-tick sub01)
        (to-draw render)
        (on-key addx)))


;; WorldState -> WorldState
;; On-tick, reduces the BAR by 0.1
#; (define (sub01 x)
     ...)
(check-expect (sub01 5) 4.9)
(check-expect (sub01 1) 0.9)

#|HOW IS THIS DEALING WITH IT GOING NEGATIVE??|#
(define (sub01 x)
  (- x 0.1))

;; WorldState -> Image
;; places the BAR into the BACKGROUND scene,
;; according to the given world state
(define (render x)
  (place-image BAR x 100 BACKGROUND))


#| ATHARVA'S COMMENTS ARE IN ALL CAPS

THE SIGNATURE FOR ADDX BELOW HAS THE WRONG ORDER
ADD 
|#



;; WorldState Key-Input -> WorldState
;; Increase the "BAR" according to the key pressed
#; (define (addx k l)
     ...)
(check-expect (addx "up" 200) (+ 200 (/ 1 3)))
(check-expect (addx "down" 250) (+ 250 (/ 1 5)))
(define (addx key x)
     (cond
       #|LHS OF THIS COND IS WRONG USE YOUR KEY ARGUMENT|#
       [(key=? "up" "up") (+ x (/ 1 3))]
       [(key=? "down" "down") (+ x (/ 1 5))]))

(gauge-prog 0)

  
        
