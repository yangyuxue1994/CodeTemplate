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

;;; --------- CHUNK TYPE ---------
(chunk-type goal-state
    state)

;;; --------- DM ---------
(add-dm
   (state) (wait) (step1) (step2) (step3)
   (wait-for-screen isa goal-state state wait)
)

;;; --------- PRODUCTIONS ---------
(p step1
    =goal>
        ISA goal-state
        state wait
==>
    *goal>
        state step2
    !output! ("in step 1")
     )

(p step2
    =goal>
        ISA goal-state
        state step2
==>
    *goal>
        state step3
    !output! ("in step 2")
     )

(p step3
    =goal>
        ISA goal-state
        state step3
==>
    *goal>
        state end
    !output! ("in step 3")
    )

)
