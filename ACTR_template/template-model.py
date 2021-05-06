###################### ACT-R + PYTHON TEMPLATE #######################
#   Author: Cher Yang
#   Date: 09/24/2020
# This template provides a init python code for building an ACT-R model

import actr

actr.load_act_r_model ("template-model.lisp")   # load the model
actr.goal_focus('wait-for-screen')      # set init goal

# prompt stimulus info
#prime_sentence = actr.define_chunks(['isa', 'sentence', 'string', 'the nun chases the sailor'])
#actr.set_buffer_chunk('visual', prime_sentence[0])

actr.run(2)