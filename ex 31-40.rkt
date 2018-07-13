;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex 31-40|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "lab8-teachpack.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "lab8-teachpack.rkt" "installed-teachpacks")) #f)))
;; EX 31

(define (letter fst lst signature-name) 
  (string-append
   (opening fst)
   "\n\n"
   (body fst lst) 
   "\n\n"
   (closing signature-name)))

(define (opening fst)
  (string-append "Dear " fst ","))

(define (body fst lst)
  (string-append 
   "We have discovered that all people with the"  "\n"
   "last name " lst " have won our lottery. So, " "\n"
   fst ", " "hurry and pick up your prize."))

(define (closing signature-name)
  (string-append
   "Sincerely,"
   "\n\n"
   signature-name
   "\n"))

(letter "sarthak" "bhandari" "sarthak")

;; EX 32

;; Ten different forms of events that software applications will have to deal with:

; Location
; Temperature
; Heart rate
; hand movement
; eye movement
; incoming call / message alert
; noise levels
; emergency alert
; motion alert
; unusual activity alert

;; EX 33

;; YEAR 2000 PROBLEM
;; Year 2000 problem is a class of computer bugs related to the formatting and storage
;; of calendar data for dates beginning in the year 2000.

;; EX 34

;; String -> String
;; Extracts the first character from a non-empty string
#; (define (string-first s)
     ...)

(check-expect (string-first "Sarthak") "S")
(check-expect (string-first "Ronaldo") "R")

(define (string-first s)
  (substring s 0 1))


;; EX 35

;; String -> String
;; Extracts the last character from a non-empty string
#; (define (string-last s)
     ...)

(check-expect (string-last "Sarthak") "k")
(check-expect (string-last "Ronaldo") "o")

(define (string-last s)
  (substring s (- (string-length s) 1)))

;; EX 36

;; Image -> number
;; Counts the number of pixels in a given image
#; (define (image-area img)
     ...)

(check-expect (image-area (rectangle 10 5 "solid" "blue")) 50)
(check-expect (image-area (square 5 "solid" "blue")) 25)

(define (image-area img)
  (* (image-width img) (image-height img)))

;; EX 37

;; String -> String
;; produces a string like the given one with the first character removed.
#; (define (string-rest str)
     ...)

(check-expect (string-rest "Sarthak") "arthak")
(check-expect (string-rest "Hey") "ey")

(define (string-rest str)
  (substring str 1 (string-length str)))

;; EX 38

;; String -> String
;; produces a string like the given one with the last character removed.
#; (define (string-remove-last str)
     ...)

(check-expect (string-remove-last "Sarthak") "Sartha")
(check-expect (string-remove-last "hey") "he")

(define (string-remove-last str)
  (substring str 0 (- (string-length str) 1)))

;; EX 39
(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))

(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))

(define SPACE
  (rectangle 10 WHEEL-RADIUS "solid" "red"))
(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))

;; EX 40
(check-expect (string-remove-last "Sarthak") "Sartha")
(check-expect (string-remove-last "hey") "he")






