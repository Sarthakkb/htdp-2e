;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex 21 - 30|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "lab8-teachpack.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "lab8-teachpack.rkt" "installed-teachpacks")) #f)))
;; EX 21

(define (ff a)
  (* 10 a))

(ff (ff 1))
(+ (ff 1) (ff 1))

;; EX 22

(define (distance-to-origin x y)
  (sqrt (+ (sqr x) (sqr y))))
(distance-to-origin 3 4)

;; EX 23

(define (string-first s)
  (substring s 0 1))

;; EX 24

(define (==> x y)
  (or (not x) y))

(==> #true #false)

;; EX 25

(define (image-classify img)
  (cond
    [(>= (image-height img) (image-width img)) "tall"]
    [(= (image-height img) (image-width img)) "square"]
    [(<= (image-height img) (image-width img)) "wide"]))

;; EX 26 
(define (string-insert s i)
  (string-append (substring s 0 i)
                 "_"
                 (substring s i)))
 
(string-insert "helloworld" 6)

;; EX 27

(define ATTENDANCE 120)
(define TICKET-PRICE 5)
(define NUMBER_PEOPLE 15)
(define VARIABLE_COST 0.04)

;; EX 28
(define (profit price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
     (+ 180
        (* 0.04
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price)))))))
(profit 1)
(profit 2)
(profit 3)
(profit 4)
(profit 5)

;; Best ticket price is @ $3

;; EX 29
(define (profitt price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
     (+ 0
        (* 1.5
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price)))))))

(profitt 3)
(profitt 4)
(profitt 5)

;; EX 30

(define PEOPLE 15)
(define MONEY .1)











