;;;; Chicken module
(module (srfi 221) ()

  (import
    (r5rs)
    (only (chicken base) unless error include case-lambda)
    (only (chicken module) export)
    (srfi 1) ;; lists
    (srfi 41) ;; streams
    (srfi 158)) ;; generators

  (export
    accumulate-generated-values
    gdelete-duplicates
    genumerate
    gchain-generators
    gchoice
    generator->stream
    stream->generator)

  (begin
    (define (eof-object) #!eof))

  (include "srfi/221-impl.scm"))
