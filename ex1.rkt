;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname ex1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (count-items lst)
  (if (empty? lst)
      0
      (+ 1 (count-items (cdr lst)))))

(define (sum-numbers lst)
  (if (empty? lst)
      0
      (+ (car lst) (sum-numbers (cdr lst)))))

(define (average lst)
  (if (empty? lst)
      0
      (/ (sum-numbers lst) (count-items lst))))