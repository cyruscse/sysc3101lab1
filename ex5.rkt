;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname ex5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (eliminate-threshold lst threshold)
  (cond
    [(empty? lst) '()]
    [(> (car lst) threshold) (eliminate-threshold (cdr lst) threshold)]
    [else (cons (car lst) (eliminate-threshold (cdr lst) threshold))]))

  