;;;  -*- mode: LISP; Syntax: COMMON-LISP;  Base: 10 -*-
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 
;;; Author      :
;;; Date        :
;;; 
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 
;;; Filename    : 
;;; Version     : 
;;; 
;;; Description : 
;;; 
;;; Bugs        : 
;;;
;;; To do       : 
;;; 
;;; ----- History -----
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General Docs:
;;; 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Public API:
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Design Choices:
;;; 
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 
;;; The code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(clear-all)
(define-model template-model

;;; --------- PARAMETERS ---------
(sgp :seed (1 2)            ; Fixed Randomness
     :er t                  ; Enable randomness
     :esc t                 ; Subsymbolic computations
     :v t
     :trace-detail low
     :ult nil               ; Utility Learning Trace
     :act nil               ; Activation trace
     ;---------- activation parameters ----------
     :rt nil                ; Retrieval Threshold
     :bll nil               ; Base-Level-Learning
     :blc nil               ; Base-Level-Constant
     :ol nil                ; Optimal Learning
     :ans
     ;---------- production parameters ----------
     :ul t                  ; Utility learning
     :ult t                 ; Utility learning trace
     :cst t                 ; Conflict set trace
     :ppm nil               ; Partial matching
     :alpha 0.2             ; Learning rate
     :egs 0.01               ; Utility noises
     )
)

