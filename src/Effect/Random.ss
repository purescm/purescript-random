;; -*- mode: scheme -*-

(library (Effect.Random foreign)
  (export random)
  (import (only (rnrs base) define lambda)
          (prefix (purs runtime srfi :27) srfi:27:))

  (define random
    (lambda ()
      (define source (srfi:27:make-random-source))
      (srfi:27:random-source-randomize! source)
      ((srfi:27:random-source-make-reals source))))
)

