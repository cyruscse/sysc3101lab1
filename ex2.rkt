;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname ex2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (occurrences lst match)
  (cond
    [(empty? lst) 0]
    [(= match (car lst)) (+ 1 (occurrences (cdr lst) match))]
    [else (occurrences (cdr lst) match)]))