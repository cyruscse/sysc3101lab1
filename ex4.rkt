;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname ex4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (fahrenheit-to-celsius fahren)
  (* (/ 5 9) (- fahren 32)))

(define (convertFC lst)
  (if (empty? lst)
      '()
      (cons (fahrenheit-to-celsius (car lst)) (convertFC (cdr lst)))))
  