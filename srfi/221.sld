(define-library (srfi 221)
  
  (import 
    (scheme base)
    (scheme case-lambda)
    (srfi 1) ;; lists
    (srfi 41) ;; streams
    (srfi 158)) ;; generators
  
  (export
    accumulate-generated-values
    gdelete-duplicates
    genumerate
    gpeek
    gchain-generators
    gchoice
    generator->stream
    stream->generator)
  
  (include "221-impl.scm"))
