;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex 11 - 20|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "lab8-teachpack.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "lab8-teachpack.rkt" "installed-teachpacks")) #f)))
;; Ex 11

;; Number Number -> Number
;; calculates the distance from the origin.

#; (define (cp x y)
     0)

(check-expect (cp 3 4) 5)

(define (cp x y)
  (sqrt (+ (sqr x) (sqr y))))

;; Ex 12
;; Number -> Number
;; calculates the volume of a cube

#; (define (cvolume s) 0)

(check-expect (cvolume 2) 8)

(define (cvolume s)
  (* s s s))

;; Ex 13
;; string -> string
;; Extracts the first string from a non-empty string

#; (define (string1 str) ...)

(check-expect (string1 "Sarthak") "S")

(define (string1 str)
  (substring str 0 1))

;; Ex 14
;; String -> String 
;; Extracts the last string from a non empty string

#; (define (strlast str) ...)

(check-expect (strlast "Cat") "t")

(define (strlast str)
  (substring str (- (string-length str) 1) (string-length str)))

;; Ex 15
;; Boolean Boolean -> Boolean
;; answers true if one is #f and other is #t

#; (define (==> sun fri) ...)

(check-expect (==> #f #t) #t)

(define (==> sun fri)
  (and (boolean=? sun #f) (boolean=? fri #t)))

;; Ex 16
;; Image -> Number
;; counts the number of pixels in a given image.

#; (define (area img)
     ...)

(define (image-area img)
  (* (image-width img) (image-height img)))

;; Ex 17
;; Image -> String
;; tells whether an image is tall, wide, or square

#; (define (image-classify img)
     ...)

(define (image-classify img)
  (if (> (image-height img) (image-width img))
    "tall"
    (if (> (image-width img) (image-height img))
        "wide"
        "square")))

;; Ex 18
;; String String -> String
;;concatenates prefix and suffix and adds "_" between them.

#; (define (string-join pre suf)
     "")

(check-expect (string-join "hello" "world") "hello_world")

(define (string-join pre suf)
  (string-append pre "_" suf))

;; Ex 19
;; String Number -> String
;; create an expression using string primitives that
;; adds "_" at position i

#; (define (string-insert s n)
     "")

(check-expect (string-insert "helloworld" 5) "hello_world")

(define (string-insert str i)
  (string-append (substring str 0 i) (string-append "_" (substring str i (string-length str)))))

;; Ex 20
;; String Number -> String
;; creates an expression that deletes the ith position from str.

#; (define (string-delete str i)
     "")

(check-expect (string-delete "helloworld" 5) "helloorld")

(define (string-delete str i)
  (string-append (substring str 0 i) (substring str (+ 1 i))))
















         