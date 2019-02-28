(define (domain grapevine)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_l1)
        (not_at_a_l2)
        (not_at_b_l1)
        (not_at_b_l2)
        (not_at_c_l1)
        (not_at_c_l2)
        (not_connected_l1_l1)
        (not_connected_l1_l2)
        (not_connected_l2_l1)
        (not_connected_l2_l2)
        (not_secret_a)
        (not_secret_b)
        (not_secret_c)
        (Ba_not_secret_a)
        (Ba_not_secret_b)
        (Ba_not_secret_c)
        (Ba_Ba_not_secret_a)
        (Ba_Ba_not_secret_b)
        (Ba_Ba_not_secret_c)
        (Ba_Ba_secret_a)
        (Ba_Ba_secret_b)
        (Ba_Ba_secret_c)
        (Ba_Bb_not_secret_a)
        (Ba_Bb_not_secret_b)
        (Ba_Bb_not_secret_c)
        (Ba_Bb_secret_a)
        (Ba_Bb_secret_b)
        (Ba_Bb_secret_c)
        (Ba_Bc_not_secret_a)
        (Ba_Bc_not_secret_b)
        (Ba_Bc_not_secret_c)
        (Ba_Bc_secret_a)
        (Ba_Bc_secret_b)
        (Ba_Bc_secret_c)
        (Ba_Pa_not_secret_a)
        (Ba_Pa_not_secret_b)
        (Ba_Pa_not_secret_c)
        (Ba_Pa_secret_a)
        (Ba_Pa_secret_b)
        (Ba_Pa_secret_c)
        (Ba_Pb_not_secret_a)
        (Ba_Pb_not_secret_b)
        (Ba_Pb_not_secret_c)
        (Ba_Pb_secret_a)
        (Ba_Pb_secret_b)
        (Ba_Pb_secret_c)
        (Ba_Pc_not_secret_a)
        (Ba_Pc_not_secret_b)
        (Ba_Pc_not_secret_c)
        (Ba_Pc_secret_a)
        (Ba_Pc_secret_b)
        (Ba_Pc_secret_c)
        (Ba_secret_a)
        (Ba_secret_b)
        (Ba_secret_c)
        (Bb_not_secret_a)
        (Bb_not_secret_b)
        (Bb_not_secret_c)
        (Bb_Ba_not_secret_a)
        (Bb_Ba_not_secret_b)
        (Bb_Ba_not_secret_c)
        (Bb_Ba_secret_a)
        (Bb_Ba_secret_b)
        (Bb_Ba_secret_c)
        (Bb_Bb_not_secret_a)
        (Bb_Bb_not_secret_b)
        (Bb_Bb_not_secret_c)
        (Bb_Bb_secret_a)
        (Bb_Bb_secret_b)
        (Bb_Bb_secret_c)
        (Bb_Bc_not_secret_a)
        (Bb_Bc_not_secret_b)
        (Bb_Bc_not_secret_c)
        (Bb_Bc_secret_a)
        (Bb_Bc_secret_b)
        (Bb_Bc_secret_c)
        (Bb_Pa_not_secret_a)
        (Bb_Pa_not_secret_b)
        (Bb_Pa_not_secret_c)
        (Bb_Pa_secret_a)
        (Bb_Pa_secret_b)
        (Bb_Pa_secret_c)
        (Bb_Pb_not_secret_a)
        (Bb_Pb_not_secret_b)
        (Bb_Pb_not_secret_c)
        (Bb_Pb_secret_a)
        (Bb_Pb_secret_b)
        (Bb_Pb_secret_c)
        (Bb_Pc_not_secret_a)
        (Bb_Pc_not_secret_b)
        (Bb_Pc_not_secret_c)
        (Bb_Pc_secret_a)
        (Bb_Pc_secret_b)
        (Bb_Pc_secret_c)
        (Bb_secret_a)
        (Bb_secret_b)
        (Bb_secret_c)
        (Bc_not_secret_a)
        (Bc_not_secret_b)
        (Bc_not_secret_c)
        (Bc_Ba_not_secret_a)
        (Bc_Ba_not_secret_b)
        (Bc_Ba_not_secret_c)
        (Bc_Ba_secret_a)
        (Bc_Ba_secret_b)
        (Bc_Ba_secret_c)
        (Bc_Bb_not_secret_a)
        (Bc_Bb_not_secret_b)
        (Bc_Bb_not_secret_c)
        (Bc_Bb_secret_a)
        (Bc_Bb_secret_b)
        (Bc_Bb_secret_c)
        (Bc_Bc_not_secret_a)
        (Bc_Bc_not_secret_b)
        (Bc_Bc_not_secret_c)
        (Bc_Bc_secret_a)
        (Bc_Bc_secret_b)
        (Bc_Bc_secret_c)
        (Bc_Pa_not_secret_a)
        (Bc_Pa_not_secret_b)
        (Bc_Pa_not_secret_c)
        (Bc_Pa_secret_a)
        (Bc_Pa_secret_b)
        (Bc_Pa_secret_c)
        (Bc_Pb_not_secret_a)
        (Bc_Pb_not_secret_b)
        (Bc_Pb_not_secret_c)
        (Bc_Pb_secret_a)
        (Bc_Pb_secret_b)
        (Bc_Pb_secret_c)
        (Bc_Pc_not_secret_a)
        (Bc_Pc_not_secret_b)
        (Bc_Pc_not_secret_c)
        (Bc_Pc_secret_a)
        (Bc_Pc_secret_b)
        (Bc_Pc_secret_c)
        (Bc_secret_a)
        (Bc_secret_b)
        (Bc_secret_c)
        (Pa_not_secret_a)
        (Pa_not_secret_b)
        (Pa_not_secret_c)
        (Pa_Ba_not_secret_a)
        (Pa_Ba_not_secret_b)
        (Pa_Ba_not_secret_c)
        (Pa_Ba_secret_a)
        (Pa_Ba_secret_b)
        (Pa_Ba_secret_c)
        (Pa_Bb_not_secret_a)
        (Pa_Bb_not_secret_b)
        (Pa_Bb_not_secret_c)
        (Pa_Bb_secret_a)
        (Pa_Bb_secret_b)
        (Pa_Bb_secret_c)
        (Pa_Bc_not_secret_a)
        (Pa_Bc_not_secret_b)
        (Pa_Bc_not_secret_c)
        (Pa_Bc_secret_a)
        (Pa_Bc_secret_b)
        (Pa_Bc_secret_c)
        (Pa_Pa_not_secret_a)
        (Pa_Pa_not_secret_b)
        (Pa_Pa_not_secret_c)
        (Pa_Pa_secret_a)
        (Pa_Pa_secret_b)
        (Pa_Pa_secret_c)
        (Pa_Pb_not_secret_a)
        (Pa_Pb_not_secret_b)
        (Pa_Pb_not_secret_c)
        (Pa_Pb_secret_a)
        (Pa_Pb_secret_b)
        (Pa_Pb_secret_c)
        (Pa_Pc_not_secret_a)
        (Pa_Pc_not_secret_b)
        (Pa_Pc_not_secret_c)
        (Pa_Pc_secret_a)
        (Pa_Pc_secret_b)
        (Pa_Pc_secret_c)
        (Pa_secret_a)
        (Pa_secret_b)
        (Pa_secret_c)
        (Pb_not_secret_a)
        (Pb_not_secret_b)
        (Pb_not_secret_c)
        (Pb_Ba_not_secret_a)
        (Pb_Ba_not_secret_b)
        (Pb_Ba_not_secret_c)
        (Pb_Ba_secret_a)
        (Pb_Ba_secret_b)
        (Pb_Ba_secret_c)
        (Pb_Bb_not_secret_a)
        (Pb_Bb_not_secret_b)
        (Pb_Bb_not_secret_c)
        (Pb_Bb_secret_a)
        (Pb_Bb_secret_b)
        (Pb_Bb_secret_c)
        (Pb_Bc_not_secret_a)
        (Pb_Bc_not_secret_b)
        (Pb_Bc_not_secret_c)
        (Pb_Bc_secret_a)
        (Pb_Bc_secret_b)
        (Pb_Bc_secret_c)
        (Pb_Pa_not_secret_a)
        (Pb_Pa_not_secret_b)
        (Pb_Pa_not_secret_c)
        (Pb_Pa_secret_a)
        (Pb_Pa_secret_b)
        (Pb_Pa_secret_c)
        (Pb_Pb_not_secret_a)
        (Pb_Pb_not_secret_b)
        (Pb_Pb_not_secret_c)
        (Pb_Pb_secret_a)
        (Pb_Pb_secret_b)
        (Pb_Pb_secret_c)
        (Pb_Pc_not_secret_a)
        (Pb_Pc_not_secret_b)
        (Pb_Pc_not_secret_c)
        (Pb_Pc_secret_a)
        (Pb_Pc_secret_b)
        (Pb_Pc_secret_c)
        (Pb_secret_a)
        (Pb_secret_b)
        (Pb_secret_c)
        (Pc_not_secret_a)
        (Pc_not_secret_b)
        (Pc_not_secret_c)
        (Pc_Ba_not_secret_a)
        (Pc_Ba_not_secret_b)
        (Pc_Ba_not_secret_c)
        (Pc_Ba_secret_a)
        (Pc_Ba_secret_b)
        (Pc_Ba_secret_c)
        (Pc_Bb_not_secret_a)
        (Pc_Bb_not_secret_b)
        (Pc_Bb_not_secret_c)
        (Pc_Bb_secret_a)
        (Pc_Bb_secret_b)
        (Pc_Bb_secret_c)
        (Pc_Bc_not_secret_a)
        (Pc_Bc_not_secret_b)
        (Pc_Bc_not_secret_c)
        (Pc_Bc_secret_a)
        (Pc_Bc_secret_b)
        (Pc_Bc_secret_c)
        (Pc_Pa_not_secret_a)
        (Pc_Pa_not_secret_b)
        (Pc_Pa_not_secret_c)
        (Pc_Pa_secret_a)
        (Pc_Pa_secret_b)
        (Pc_Pa_secret_c)
        (Pc_Pb_not_secret_a)
        (Pc_Pb_not_secret_b)
        (Pc_Pb_not_secret_c)
        (Pc_Pb_secret_a)
        (Pc_Pb_secret_b)
        (Pc_Pb_secret_c)
        (Pc_Pc_not_secret_a)
        (Pc_Pc_not_secret_b)
        (Pc_Pc_not_secret_c)
        (Pc_Pc_secret_a)
        (Pc_Pc_secret_b)
        (Pc_Pc_secret_c)
        (Pc_secret_a)
        (Pc_secret_b)
        (Pc_secret_c)
        (at_a_l1)
        (at_a_l2)
        (at_b_l1)
        (at_b_l2)
        (at_c_l1)
        (at_c_l2)
        (connected_l1_l1)
        (connected_l1_l2)
        (connected_l2_l1)
        (connected_l2_l2)
        (secret_a)
        (secret_b)
        (secret_c)
    )

    (:action move_a_l1_l1
        :precondition (and (at_a_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #28974: origin
                    (not_at_a_l1)

                    ; #35234: origin
                    (at_a_l1)

                    ; #28974: <==negation-removal== 35234 (pos)
                    (not (not_at_a_l1))

                    ; #35234: <==negation-removal== 28974 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (at_a_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #28974: origin
                    (not_at_a_l1)

                    ; #35234: origin
                    (at_a_l2)

                    ; #28974: <==negation-removal== 35234 (pos)
                    (not (not_at_a_l2))

                    ; #35234: <==negation-removal== 28974 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #28974: origin
                    (not_at_a_l2)

                    ; #35234: origin
                    (at_a_l1)

                    ; #28974: <==negation-removal== 35234 (pos)
                    (not (not_at_a_l1))

                    ; #35234: <==negation-removal== 28974 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #28974: origin
                    (not_at_a_l2)

                    ; #35234: origin
                    (at_a_l2)

                    ; #28974: <==negation-removal== 35234 (pos)
                    (not (not_at_a_l2))

                    ; #35234: <==negation-removal== 28974 (pos)
                    (not (at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (at_b_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #37570: origin
                    (not_at_b_l1)

                    ; #95745: origin
                    (at_b_l1)

                    ; #37570: <==negation-removal== 95745 (pos)
                    (not (not_at_b_l1))

                    ; #95745: <==negation-removal== 37570 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (at_b_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #37570: origin
                    (not_at_b_l1)

                    ; #95745: origin
                    (at_b_l2)

                    ; #37570: <==negation-removal== 95745 (pos)
                    (not (not_at_b_l2))

                    ; #95745: <==negation-removal== 37570 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #37570: origin
                    (not_at_b_l2)

                    ; #95745: origin
                    (at_b_l1)

                    ; #37570: <==negation-removal== 95745 (pos)
                    (not (not_at_b_l1))

                    ; #95745: <==negation-removal== 37570 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #37570: origin
                    (not_at_b_l2)

                    ; #95745: origin
                    (at_b_l2)

                    ; #37570: <==negation-removal== 95745 (pos)
                    (not (not_at_b_l2))

                    ; #95745: <==negation-removal== 37570 (pos)
                    (not (at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #67431: origin
                    (not_at_c_l1)

                    ; #71975: origin
                    (at_c_l1)

                    ; #67431: <==negation-removal== 71975 (pos)
                    (not (not_at_c_l1))

                    ; #71975: <==negation-removal== 67431 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_c_l1))
        :effect (and
                    ; #67431: origin
                    (not_at_c_l1)

                    ; #71975: origin
                    (at_c_l2)

                    ; #67431: <==negation-removal== 71975 (pos)
                    (not (not_at_c_l2))

                    ; #71975: <==negation-removal== 67431 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #67431: origin
                    (not_at_c_l2)

                    ; #71975: origin
                    (at_c_l1)

                    ; #67431: <==negation-removal== 71975 (pos)
                    (not (not_at_c_l1))

                    ; #71975: <==negation-removal== 67431 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #67431: origin
                    (not_at_c_l2)

                    ; #71975: origin
                    (at_c_l2)

                    ; #67431: <==negation-removal== 71975 (pos)
                    (not (not_at_c_l2))

                    ; #71975: <==negation-removal== 67431 (pos)
                    (not (at_c_l2))))

    (:action share_a_a_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_a))
        :effect (and
                    ; #10130: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Pc_secret_a))

                    ; #10624: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Ba_secret_a))

                    ; #12454: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Pa_secret_a))

                    ; #18665: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Pa_secret_a))

                    ; #18740: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Pc_secret_a))

                    ; #20138: <==commonly_known== 36751 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Bc_secret_a))

                    ; #26924: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Pb_secret_a))

                    ; #29163: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Pc_secret_a))

                    ; #33687: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Pc_secret_a))

                    ; #35850: <==commonly_known== 73836 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Bb_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #41622: <==commonly_known== 36751 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Bc_secret_a))

                    ; #44559: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Ba_secret_a))

                    ; #45669: <==commonly_known== 47734 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Bc_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #52019: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Ba_secret_a))

                    ; #57221: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Pb_secret_a))

                    ; #57790: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Pa_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #66756: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Ba_secret_a))

                    ; #66799: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Pa_secret_a))

                    ; #68563: <==commonly_known== 40173 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Bb_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76496: <==commonly_known== 47734 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Bc_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #77781: <==commonly_known== 40173 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Bb_secret_a))

                    ; #78887: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Pb_secret_a))

                    ; #79839: <==commonly_known== 73836 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Bb_secret_a))

                    ; #90798: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Pb_secret_a))

                    ; #10237: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #10965: <==negation-removal== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Pb_not_secret_a)))

                    ; #17904: <==negation-removal== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Pb_not_secret_a)))

                    ; #19343: <==negation-removal== 52019 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Pa_not_secret_a)))

                    ; #22424: <==negation-removal== 45669 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Pc_not_secret_a)))

                    ; #22585: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #24450: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Bb_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #26015: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Bc_not_secret_a)))

                    ; #26677: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #26856: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Ba_not_secret_a)))

                    ; #28627: <==negation-removal== 79839 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Pb_not_secret_a)))

                    ; #29115: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Bc_not_secret_a)))

                    ; #30840: <==uncertain_firing== 10624 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #32667: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Ba_not_secret_a)))

                    ; #34249: <==uncertain_firing== 41622 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #37493: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #38508: <==uncertain_firing== 66756 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #40494: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Ba_not_secret_a)))

                    ; #40654: <==uncertain_firing== 76496 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #41461: <==negation-removal== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Pc_not_secret_a)))

                    ; #42313: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45172: <==uncertain_firing== 68563 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #46436: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #47961: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Ba_not_secret_a)))

                    ; #50756: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Bc_not_secret_a)))

                    ; #51084: <==negation-removal== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Pc_not_secret_a)))

                    ; #51766: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #55396: <==negation-removal== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Pa_not_secret_a)))

                    ; #55561: <==uncertain_firing== 35850 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #56640: <==negation-removal== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Pa_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #61294: <==uncertain_firing== 52019 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #62068: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Bb_not_secret_a)))

                    ; #64010: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Bb_not_secret_a)))

                    ; #65998: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #66379: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #67611: <==uncertain_firing== 20138 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #71971: <==uncertain_firing== 77781 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #76562: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Bb_not_secret_a)))

                    ; #76976: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78038: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Bc_not_secret_a)))

                    ; #79236: <==negation-removal== 76496 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Pc_not_secret_a)))

                    ; #79236: <==negation-removal== 44559 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Pa_not_secret_a)))

                    ; #82068: <==negation-removal== 35850 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Pb_not_secret_a)))

                    ; #83318: <==uncertain_firing== 45669 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #85731: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87612: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #87801: <==uncertain_firing== 44559 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #90303: <==uncertain_firing== 79839 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pb_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Ba_secret_a)
                           (at_a_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #16315: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Bc_secret_a))

                    ; #18388: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Pa_secret_a))

                    ; #18749: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Pb_secret_a))

                    ; #18943: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Pa_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #24888: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Bc_secret_a))

                    ; #26058: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Pc_secret_a))

                    ; #26357: <==commonly_known== 19915 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Bb_secret_a))

                    ; #30351: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Pc_secret_a))

                    ; #31368: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Pb_secret_a))

                    ; #34145: <==commonly_known== 19915 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Bb_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #35939: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Pb_secret_a))

                    ; #37103: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Pb_secret_a))

                    ; #37489: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Pc_secret_a))

                    ; #42687: <==commonly_known== 44794 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Bb_secret_a))

                    ; #42843: <==commonly_known== 44794 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Bb_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #45797: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Bc_secret_a))

                    ; #60632: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Bc_secret_a))

                    ; #61215: <==commonly_known== 35073 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Ba_secret_a))

                    ; #72018: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Pc_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #74920: <==commonly_known== 61057 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Ba_secret_a))

                    ; #76532: <==commonly_known== 61057 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Ba_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #87100: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Pa_secret_a))

                    ; #87812: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Pa_secret_a))

                    ; #91265: <==commonly_known== 35073 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Ba_secret_a))

                    ; #10068: <==uncertain_firing== 61215 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #12379: <==negation-removal== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Pb_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #14970: <==negation-removal== 42843 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Pb_not_secret_a)))

                    ; #19005: <==negation-removal== 16315 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Pc_not_secret_a)))

                    ; #21322: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Bb_not_secret_a)))

                    ; #22259: <==negation-removal== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Pb_not_secret_a)))

                    ; #22908: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Ba_not_secret_a)))

                    ; #31607: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Bc_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #31896: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Ba_not_secret_a)))

                    ; #34214: <==uncertain_firing== 74920 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #34484: <==uncertain_firing== 16315 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #35759: <==uncertain_firing== 91265 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #37046: <==negation-removal== 76532 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Pa_not_secret_a)))

                    ; #38424: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #39018: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #40043: <==negation-removal== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Pc_not_secret_a)))

                    ; #40102: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #42346: <==uncertain_firing== 76532 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #43872: <==uncertain_firing== 45797 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #45683: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Ba_not_secret_a)))

                    ; #46267: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Bc_not_secret_a)))

                    ; #48078: <==uncertain_firing== 24888 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #48545: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #51389: <==uncertain_firing== 26357 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #51853: <==uncertain_firing== 42687 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #53074: <==negation-removal== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Pc_not_secret_a)))

                    ; #53439: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #53768: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #61731: <==negation-removal== 24888 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Pc_not_secret_a)))

                    ; #64249: <==negation-removal== 74920 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Pa_not_secret_a)))

                    ; #65690: <==uncertain_firing== 34145 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #67124: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Bc_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #67428: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Bb_not_secret_a)))

                    ; #67867: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #72332: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #72564: <==uncertain_firing== 60632 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #72617: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Ba_not_secret_a)))

                    ; #75018: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #77411: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Bb_not_secret_a)))

                    ; #80764: <==uncertain_firing== 42843 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #81013: <==negation-removal== 42687 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Pb_not_secret_a)))

                    ; #82151: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #84784: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Bb_not_secret_a)))

                    ; #85897: <==negation-removal== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Pa_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #89455: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #89944: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Bc_not_secret_a)))

                    ; #89951: <==negation-removal== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Pa_not_secret_a)))

                    ; #91720: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Ba_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_b))
        :effect (and
                    ; #10130: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Pc_secret_b))

                    ; #10624: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Ba_secret_b))

                    ; #12454: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Pa_secret_b))

                    ; #18665: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Pa_secret_b))

                    ; #18740: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Pc_secret_b))

                    ; #20138: <==commonly_known== 36751 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Bc_secret_b))

                    ; #26924: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Pb_secret_b))

                    ; #29163: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Pc_secret_b))

                    ; #33687: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Pc_secret_b))

                    ; #35850: <==commonly_known== 73836 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Bb_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #41622: <==commonly_known== 36751 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Bc_secret_b))

                    ; #44559: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Ba_secret_b))

                    ; #45669: <==commonly_known== 47734 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Bc_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #52019: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Ba_secret_b))

                    ; #57221: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Pb_secret_b))

                    ; #57790: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Pa_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #66756: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Ba_secret_b))

                    ; #66799: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Pa_secret_b))

                    ; #68563: <==commonly_known== 40173 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Bb_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76496: <==commonly_known== 47734 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Bc_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #77781: <==commonly_known== 40173 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Bb_secret_b))

                    ; #78887: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Pb_secret_b))

                    ; #79839: <==commonly_known== 73836 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Bb_secret_b))

                    ; #90798: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Pb_secret_b))

                    ; #10237: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #10965: <==negation-removal== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Pb_not_secret_b)))

                    ; #17904: <==negation-removal== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Pb_not_secret_b)))

                    ; #19343: <==negation-removal== 52019 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Pa_not_secret_b)))

                    ; #22424: <==negation-removal== 45669 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Pc_not_secret_b)))

                    ; #22585: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #24450: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Bb_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #26015: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Bc_not_secret_b)))

                    ; #26677: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #26856: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Ba_not_secret_b)))

                    ; #28627: <==negation-removal== 79839 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Pb_not_secret_b)))

                    ; #29115: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Bc_not_secret_b)))

                    ; #30840: <==uncertain_firing== 10624 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #32667: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Ba_not_secret_b)))

                    ; #34249: <==uncertain_firing== 41622 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #37493: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #38508: <==uncertain_firing== 66756 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #40494: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Ba_not_secret_b)))

                    ; #40654: <==uncertain_firing== 76496 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #41461: <==negation-removal== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Pc_not_secret_b)))

                    ; #42313: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45172: <==uncertain_firing== 68563 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #46436: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #47961: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Ba_not_secret_b)))

                    ; #50756: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Bc_not_secret_b)))

                    ; #51084: <==negation-removal== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Pc_not_secret_b)))

                    ; #51766: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #55396: <==negation-removal== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Pa_not_secret_b)))

                    ; #55561: <==uncertain_firing== 35850 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #56640: <==negation-removal== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Pa_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #61294: <==uncertain_firing== 52019 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #62068: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Bb_not_secret_b)))

                    ; #64010: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Bb_not_secret_b)))

                    ; #65998: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #66379: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #67611: <==uncertain_firing== 20138 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #71971: <==uncertain_firing== 77781 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #76562: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Bb_not_secret_b)))

                    ; #76976: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78038: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Bc_not_secret_b)))

                    ; #79236: <==negation-removal== 44559 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Pa_not_secret_b)))

                    ; #79236: <==negation-removal== 76496 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Pc_not_secret_b)))

                    ; #82068: <==negation-removal== 35850 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Pb_not_secret_b)))

                    ; #83318: <==uncertain_firing== 45669 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #85731: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87612: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #87801: <==uncertain_firing== 44559 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #90303: <==uncertain_firing== 79839 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pb_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Ba_secret_b)
                           (at_a_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #16315: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Bc_secret_b))

                    ; #18388: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Pa_secret_b))

                    ; #18749: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Pb_secret_b))

                    ; #18943: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Pa_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #24888: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Bc_secret_b))

                    ; #26058: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Pc_secret_b))

                    ; #26357: <==commonly_known== 19915 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Bb_secret_b))

                    ; #30351: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Pc_secret_b))

                    ; #31368: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Pb_secret_b))

                    ; #34145: <==commonly_known== 19915 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Bb_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #35939: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Pb_secret_b))

                    ; #37103: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Pb_secret_b))

                    ; #37489: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Pc_secret_b))

                    ; #42687: <==commonly_known== 44794 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Bb_secret_b))

                    ; #42843: <==commonly_known== 44794 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Bb_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #45797: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Bc_secret_b))

                    ; #60632: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Bc_secret_b))

                    ; #61215: <==commonly_known== 35073 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Ba_secret_b))

                    ; #72018: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Pc_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #74920: <==commonly_known== 61057 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Ba_secret_b))

                    ; #76532: <==commonly_known== 61057 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Ba_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #87100: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Pa_secret_b))

                    ; #87812: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Pa_secret_b))

                    ; #91265: <==commonly_known== 35073 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Ba_secret_b))

                    ; #10068: <==uncertain_firing== 61215 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #12379: <==negation-removal== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Pb_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #14970: <==negation-removal== 42843 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Pb_not_secret_b)))

                    ; #19005: <==negation-removal== 16315 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Pc_not_secret_b)))

                    ; #21322: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Bb_not_secret_b)))

                    ; #22259: <==negation-removal== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Pb_not_secret_b)))

                    ; #22908: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Ba_not_secret_b)))

                    ; #31607: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Bc_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #31896: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Ba_not_secret_b)))

                    ; #34214: <==uncertain_firing== 74920 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #34484: <==uncertain_firing== 16315 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #35759: <==uncertain_firing== 91265 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #37046: <==negation-removal== 76532 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Pa_not_secret_b)))

                    ; #38424: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #39018: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #40043: <==negation-removal== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Pc_not_secret_b)))

                    ; #40102: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #42346: <==uncertain_firing== 76532 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #43872: <==uncertain_firing== 45797 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #45683: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Ba_not_secret_b)))

                    ; #46267: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Bc_not_secret_b)))

                    ; #48078: <==uncertain_firing== 24888 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #48545: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #51389: <==uncertain_firing== 26357 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #51853: <==uncertain_firing== 42687 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #53074: <==negation-removal== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Pc_not_secret_b)))

                    ; #53439: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #53768: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #61731: <==negation-removal== 24888 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Pc_not_secret_b)))

                    ; #64249: <==negation-removal== 74920 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Pa_not_secret_b)))

                    ; #65690: <==uncertain_firing== 34145 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #67124: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Bc_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #67428: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Bb_not_secret_b)))

                    ; #67867: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #72332: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #72564: <==uncertain_firing== 60632 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #72617: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Ba_not_secret_b)))

                    ; #75018: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #77411: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Bb_not_secret_b)))

                    ; #80764: <==uncertain_firing== 42843 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #81013: <==negation-removal== 42687 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Pb_not_secret_b)))

                    ; #82151: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #84784: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Bb_not_secret_b)))

                    ; #85897: <==negation-removal== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Pa_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #89455: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #89944: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Bc_not_secret_b)))

                    ; #89951: <==negation-removal== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Pa_not_secret_b)))

                    ; #91720: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Ba_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_c))
        :effect (and
                    ; #10130: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Pc_secret_c))

                    ; #10624: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Ba_secret_c))

                    ; #12454: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Pa_secret_c))

                    ; #18665: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Pa_secret_c))

                    ; #18740: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Pc_secret_c))

                    ; #20138: <==commonly_known== 36751 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Bc_secret_c))

                    ; #26924: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Pb_secret_c))

                    ; #29163: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Pc_secret_c))

                    ; #33687: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Pc_secret_c))

                    ; #35850: <==commonly_known== 73836 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Bb_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #41622: <==commonly_known== 36751 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Bc_secret_c))

                    ; #44559: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Ba_secret_c))

                    ; #45669: <==commonly_known== 47734 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Bc_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #52019: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Ba_secret_c))

                    ; #57221: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Pb_secret_c))

                    ; #57790: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Pa_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #66756: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Ba_secret_c))

                    ; #66799: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Pa_secret_c))

                    ; #68563: <==commonly_known== 40173 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Bb_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76496: <==commonly_known== 47734 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Bc_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #77781: <==commonly_known== 40173 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Bb_secret_c))

                    ; #78887: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Pb_secret_c))

                    ; #79839: <==commonly_known== 73836 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Bb_secret_c))

                    ; #90798: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Pb_secret_c))

                    ; #10237: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #10965: <==negation-removal== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Pb_not_secret_c)))

                    ; #17904: <==negation-removal== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Pb_not_secret_c)))

                    ; #19343: <==negation-removal== 52019 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Pa_not_secret_c)))

                    ; #22424: <==negation-removal== 45669 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Pc_not_secret_c)))

                    ; #22585: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #24450: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Bb_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #26015: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Bc_not_secret_c)))

                    ; #26677: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #26856: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Ba_not_secret_c)))

                    ; #28627: <==negation-removal== 79839 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Pb_not_secret_c)))

                    ; #29115: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Bc_not_secret_c)))

                    ; #30840: <==uncertain_firing== 10624 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #32667: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Ba_not_secret_c)))

                    ; #34249: <==uncertain_firing== 41622 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #37493: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #38508: <==uncertain_firing== 66756 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #40494: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Ba_not_secret_c)))

                    ; #40654: <==uncertain_firing== 76496 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #41461: <==negation-removal== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Pc_not_secret_c)))

                    ; #42313: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45172: <==uncertain_firing== 68563 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #46436: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #47961: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Ba_not_secret_c)))

                    ; #50756: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Bc_not_secret_c)))

                    ; #51084: <==negation-removal== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Pc_not_secret_c)))

                    ; #51766: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #55396: <==negation-removal== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Pa_not_secret_c)))

                    ; #55561: <==uncertain_firing== 35850 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #56640: <==negation-removal== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Pa_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #61294: <==uncertain_firing== 52019 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #62068: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Bb_not_secret_c)))

                    ; #64010: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Bb_not_secret_c)))

                    ; #65998: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #66379: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #67611: <==uncertain_firing== 20138 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #71971: <==uncertain_firing== 77781 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #76562: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Bb_not_secret_c)))

                    ; #76976: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78038: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Bc_not_secret_c)))

                    ; #79236: <==negation-removal== 44559 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Pa_not_secret_c)))

                    ; #79236: <==negation-removal== 76496 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Pc_not_secret_c)))

                    ; #82068: <==negation-removal== 35850 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Pb_not_secret_c)))

                    ; #83318: <==uncertain_firing== 45669 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #85731: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87612: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #87801: <==uncertain_firing== 44559 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #90303: <==uncertain_firing== 79839 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pb_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Ba_secret_c)
                           (at_a_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #16315: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Bc_secret_c))

                    ; #18388: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Pa_secret_c))

                    ; #18749: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Pb_secret_c))

                    ; #18943: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Pa_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #24888: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Bc_secret_c))

                    ; #26058: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Pc_secret_c))

                    ; #26357: <==commonly_known== 19915 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Bb_secret_c))

                    ; #30351: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Pc_secret_c))

                    ; #31368: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Pb_secret_c))

                    ; #34145: <==commonly_known== 19915 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Bb_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #35939: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Pb_secret_c))

                    ; #37103: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Pb_secret_c))

                    ; #37489: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Pc_secret_c))

                    ; #42687: <==commonly_known== 44794 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Bb_secret_c))

                    ; #42843: <==commonly_known== 44794 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Bb_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #45797: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Bc_secret_c))

                    ; #60632: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Bc_secret_c))

                    ; #61215: <==commonly_known== 35073 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Ba_secret_c))

                    ; #72018: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Pc_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #74920: <==commonly_known== 61057 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Ba_secret_c))

                    ; #76532: <==commonly_known== 61057 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Ba_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #87100: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Pa_secret_c))

                    ; #87812: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Pa_secret_c))

                    ; #91265: <==commonly_known== 35073 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Ba_secret_c))

                    ; #10068: <==uncertain_firing== 61215 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #12379: <==negation-removal== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Pb_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #14970: <==negation-removal== 42843 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Pb_not_secret_c)))

                    ; #19005: <==negation-removal== 16315 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Pc_not_secret_c)))

                    ; #21322: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Bb_not_secret_c)))

                    ; #22259: <==negation-removal== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Pb_not_secret_c)))

                    ; #22908: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Ba_not_secret_c)))

                    ; #31607: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Bc_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #31896: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Ba_not_secret_c)))

                    ; #34214: <==uncertain_firing== 74920 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #34484: <==uncertain_firing== 16315 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #35759: <==uncertain_firing== 91265 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #37046: <==negation-removal== 76532 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Pa_not_secret_c)))

                    ; #38424: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #39018: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #40043: <==negation-removal== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Pc_not_secret_c)))

                    ; #40102: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #42346: <==uncertain_firing== 76532 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #43872: <==uncertain_firing== 45797 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #45683: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Ba_not_secret_c)))

                    ; #46267: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Bc_not_secret_c)))

                    ; #48078: <==uncertain_firing== 24888 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #48545: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #51389: <==uncertain_firing== 26357 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #51853: <==uncertain_firing== 42687 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #53074: <==negation-removal== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Pc_not_secret_c)))

                    ; #53439: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #53768: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #61731: <==negation-removal== 24888 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Pc_not_secret_c)))

                    ; #64249: <==negation-removal== 74920 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Pa_not_secret_c)))

                    ; #65690: <==uncertain_firing== 34145 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #67124: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Bc_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #67428: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Bb_not_secret_c)))

                    ; #67867: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #72332: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #72564: <==uncertain_firing== 60632 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #72617: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Ba_not_secret_c)))

                    ; #75018: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #77411: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Bb_not_secret_c)))

                    ; #80764: <==uncertain_firing== 42843 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #81013: <==negation-removal== 42687 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Pb_not_secret_c)))

                    ; #82151: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #84784: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Bb_not_secret_c)))

                    ; #85897: <==negation-removal== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Pa_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #89455: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #89944: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Bc_not_secret_c)))

                    ; #89951: <==negation-removal== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Pa_not_secret_c)))

                    ; #91720: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Ba_not_secret_c)))))

    (:action share_b_a_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_a))
        :effect (and
                    ; #10130: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Pc_secret_a))

                    ; #10624: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Ba_secret_a))

                    ; #12454: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Pa_secret_a))

                    ; #18665: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Pa_secret_a))

                    ; #18740: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Pc_secret_a))

                    ; #20138: <==commonly_known== 36751 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Bc_secret_a))

                    ; #26924: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Pb_secret_a))

                    ; #29163: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Pc_secret_a))

                    ; #33687: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Pc_secret_a))

                    ; #35850: <==commonly_known== 73836 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Bb_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #41622: <==commonly_known== 36751 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Bc_secret_a))

                    ; #44559: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Ba_secret_a))

                    ; #45669: <==commonly_known== 47734 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Bc_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #52019: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Ba_secret_a))

                    ; #57221: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Pb_secret_a))

                    ; #57790: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Pa_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #66756: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Ba_secret_a))

                    ; #66799: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Pa_secret_a))

                    ; #68563: <==commonly_known== 40173 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Bb_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76496: <==commonly_known== 47734 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Bc_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #77781: <==commonly_known== 40173 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Bb_secret_a))

                    ; #78887: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Pb_secret_a))

                    ; #79839: <==commonly_known== 73836 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Bb_secret_a))

                    ; #90798: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Pb_secret_a))

                    ; #10237: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #10965: <==negation-removal== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Pb_not_secret_a)))

                    ; #17904: <==negation-removal== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Pb_not_secret_a)))

                    ; #19343: <==negation-removal== 52019 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Pa_not_secret_a)))

                    ; #22424: <==negation-removal== 45669 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Pc_not_secret_a)))

                    ; #22585: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #24450: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Bb_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #26015: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Bc_not_secret_a)))

                    ; #26677: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #26856: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Ba_not_secret_a)))

                    ; #28627: <==negation-removal== 79839 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Pb_not_secret_a)))

                    ; #29115: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Bc_not_secret_a)))

                    ; #30840: <==uncertain_firing== 10624 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #32667: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Ba_not_secret_a)))

                    ; #34249: <==uncertain_firing== 41622 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #37493: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #38508: <==uncertain_firing== 66756 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #40494: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Ba_not_secret_a)))

                    ; #40654: <==uncertain_firing== 76496 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #41461: <==negation-removal== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Pc_not_secret_a)))

                    ; #42313: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45172: <==uncertain_firing== 68563 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #46436: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #47961: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Ba_not_secret_a)))

                    ; #50756: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Bc_not_secret_a)))

                    ; #51084: <==negation-removal== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Pc_not_secret_a)))

                    ; #51766: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #55396: <==negation-removal== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Pa_not_secret_a)))

                    ; #55561: <==uncertain_firing== 35850 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #56640: <==negation-removal== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Pa_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #61294: <==uncertain_firing== 52019 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #62068: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Bb_not_secret_a)))

                    ; #64010: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Bb_not_secret_a)))

                    ; #65998: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #66379: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #67611: <==uncertain_firing== 20138 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #71971: <==uncertain_firing== 77781 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #76562: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Bb_not_secret_a)))

                    ; #76976: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78038: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Bc_not_secret_a)))

                    ; #79236: <==negation-removal== 76496 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Pc_not_secret_a)))

                    ; #79236: <==negation-removal== 44559 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Pa_not_secret_a)))

                    ; #82068: <==negation-removal== 35850 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Pb_not_secret_a)))

                    ; #83318: <==uncertain_firing== 45669 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #85731: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87612: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #87801: <==uncertain_firing== 44559 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #90303: <==uncertain_firing== 79839 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pb_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_a))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #16315: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Bc_secret_a))

                    ; #18388: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Pa_secret_a))

                    ; #18749: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Pb_secret_a))

                    ; #18943: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Pa_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #24888: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Bc_secret_a))

                    ; #26058: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Pc_secret_a))

                    ; #26357: <==commonly_known== 19915 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Bb_secret_a))

                    ; #30351: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Pc_secret_a))

                    ; #31368: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Pb_secret_a))

                    ; #34145: <==commonly_known== 19915 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Bb_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #35939: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Pb_secret_a))

                    ; #37103: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Pb_secret_a))

                    ; #37489: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Pc_secret_a))

                    ; #42687: <==commonly_known== 44794 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Bb_secret_a))

                    ; #42843: <==commonly_known== 44794 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Bb_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #45797: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Bc_secret_a))

                    ; #60632: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Bc_secret_a))

                    ; #61215: <==commonly_known== 35073 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Ba_secret_a))

                    ; #72018: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Pc_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #74920: <==commonly_known== 61057 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Ba_secret_a))

                    ; #76532: <==commonly_known== 61057 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Ba_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #87100: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Pa_secret_a))

                    ; #87812: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Pa_secret_a))

                    ; #91265: <==commonly_known== 35073 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Ba_secret_a))

                    ; #10068: <==uncertain_firing== 61215 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #12379: <==negation-removal== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Pb_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #14970: <==negation-removal== 42843 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Pb_not_secret_a)))

                    ; #19005: <==negation-removal== 16315 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Pc_not_secret_a)))

                    ; #21322: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Bb_not_secret_a)))

                    ; #22259: <==negation-removal== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Pb_not_secret_a)))

                    ; #22908: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Ba_not_secret_a)))

                    ; #31607: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Bc_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #31896: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Ba_not_secret_a)))

                    ; #34214: <==uncertain_firing== 74920 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #34484: <==uncertain_firing== 16315 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #35759: <==uncertain_firing== 91265 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #37046: <==negation-removal== 76532 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Pa_not_secret_a)))

                    ; #38424: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #39018: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #40043: <==negation-removal== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Pc_not_secret_a)))

                    ; #40102: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #42346: <==uncertain_firing== 76532 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #43872: <==uncertain_firing== 45797 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #45683: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Ba_not_secret_a)))

                    ; #46267: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Bc_not_secret_a)))

                    ; #48078: <==uncertain_firing== 24888 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #48545: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #51389: <==uncertain_firing== 26357 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #51853: <==uncertain_firing== 42687 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #53074: <==negation-removal== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Pc_not_secret_a)))

                    ; #53439: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #53768: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #61731: <==negation-removal== 24888 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Pc_not_secret_a)))

                    ; #64249: <==negation-removal== 74920 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Pa_not_secret_a)))

                    ; #65690: <==uncertain_firing== 34145 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #67124: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Bc_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #67428: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Bb_not_secret_a)))

                    ; #67867: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #72332: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #72564: <==uncertain_firing== 60632 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #72617: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Ba_not_secret_a)))

                    ; #75018: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #77411: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Bb_not_secret_a)))

                    ; #80764: <==uncertain_firing== 42843 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #81013: <==negation-removal== 42687 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Pb_not_secret_a)))

                    ; #82151: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #84784: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Bb_not_secret_a)))

                    ; #85897: <==negation-removal== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Pa_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #89455: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #89944: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Bc_not_secret_a)))

                    ; #89951: <==negation-removal== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Pa_not_secret_a)))

                    ; #91720: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Ba_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_b))
        :effect (and
                    ; #10130: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Pc_secret_b))

                    ; #10624: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Ba_secret_b))

                    ; #12454: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Pa_secret_b))

                    ; #18665: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Pa_secret_b))

                    ; #18740: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Pc_secret_b))

                    ; #20138: <==commonly_known== 36751 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Bc_secret_b))

                    ; #26924: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Pb_secret_b))

                    ; #29163: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Pc_secret_b))

                    ; #33687: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Pc_secret_b))

                    ; #35850: <==commonly_known== 73836 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Bb_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #41622: <==commonly_known== 36751 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Bc_secret_b))

                    ; #44559: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Ba_secret_b))

                    ; #45669: <==commonly_known== 47734 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Bc_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #52019: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Ba_secret_b))

                    ; #57221: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Pb_secret_b))

                    ; #57790: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Pa_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #66756: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Ba_secret_b))

                    ; #66799: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Pa_secret_b))

                    ; #68563: <==commonly_known== 40173 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Bb_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76496: <==commonly_known== 47734 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Bc_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #77781: <==commonly_known== 40173 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Bb_secret_b))

                    ; #78887: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Pb_secret_b))

                    ; #79839: <==commonly_known== 73836 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Bb_secret_b))

                    ; #90798: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Pb_secret_b))

                    ; #10237: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #10965: <==negation-removal== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Pb_not_secret_b)))

                    ; #17904: <==negation-removal== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Pb_not_secret_b)))

                    ; #19343: <==negation-removal== 52019 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Pa_not_secret_b)))

                    ; #22424: <==negation-removal== 45669 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Pc_not_secret_b)))

                    ; #22585: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #24450: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Bb_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #26015: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Bc_not_secret_b)))

                    ; #26677: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #26856: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Ba_not_secret_b)))

                    ; #28627: <==negation-removal== 79839 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Pb_not_secret_b)))

                    ; #29115: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Bc_not_secret_b)))

                    ; #30840: <==uncertain_firing== 10624 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #32667: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Ba_not_secret_b)))

                    ; #34249: <==uncertain_firing== 41622 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #37493: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #38508: <==uncertain_firing== 66756 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #40494: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Ba_not_secret_b)))

                    ; #40654: <==uncertain_firing== 76496 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #41461: <==negation-removal== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Pc_not_secret_b)))

                    ; #42313: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45172: <==uncertain_firing== 68563 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #46436: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #47961: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Ba_not_secret_b)))

                    ; #50756: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Bc_not_secret_b)))

                    ; #51084: <==negation-removal== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Pc_not_secret_b)))

                    ; #51766: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #55396: <==negation-removal== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Pa_not_secret_b)))

                    ; #55561: <==uncertain_firing== 35850 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #56640: <==negation-removal== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Pa_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #61294: <==uncertain_firing== 52019 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #62068: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Bb_not_secret_b)))

                    ; #64010: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Bb_not_secret_b)))

                    ; #65998: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #66379: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #67611: <==uncertain_firing== 20138 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #71971: <==uncertain_firing== 77781 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #76562: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Bb_not_secret_b)))

                    ; #76976: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78038: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Bc_not_secret_b)))

                    ; #79236: <==negation-removal== 44559 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Pa_not_secret_b)))

                    ; #79236: <==negation-removal== 76496 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Pc_not_secret_b)))

                    ; #82068: <==negation-removal== 35850 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Pb_not_secret_b)))

                    ; #83318: <==uncertain_firing== 45669 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #85731: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87612: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #87801: <==uncertain_firing== 44559 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #90303: <==uncertain_firing== 79839 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pb_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #16315: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Bc_secret_b))

                    ; #18388: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Pa_secret_b))

                    ; #18749: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Pb_secret_b))

                    ; #18943: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Pa_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #24888: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Bc_secret_b))

                    ; #26058: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Pc_secret_b))

                    ; #26357: <==commonly_known== 19915 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Bb_secret_b))

                    ; #30351: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Pc_secret_b))

                    ; #31368: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Pb_secret_b))

                    ; #34145: <==commonly_known== 19915 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Bb_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #35939: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Pb_secret_b))

                    ; #37103: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Pb_secret_b))

                    ; #37489: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Pc_secret_b))

                    ; #42687: <==commonly_known== 44794 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Bb_secret_b))

                    ; #42843: <==commonly_known== 44794 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Bb_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #45797: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Bc_secret_b))

                    ; #60632: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Bc_secret_b))

                    ; #61215: <==commonly_known== 35073 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Ba_secret_b))

                    ; #72018: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Pc_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #74920: <==commonly_known== 61057 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Ba_secret_b))

                    ; #76532: <==commonly_known== 61057 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Ba_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #87100: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Pa_secret_b))

                    ; #87812: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Pa_secret_b))

                    ; #91265: <==commonly_known== 35073 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Ba_secret_b))

                    ; #10068: <==uncertain_firing== 61215 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #12379: <==negation-removal== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Pb_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #14970: <==negation-removal== 42843 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Pb_not_secret_b)))

                    ; #19005: <==negation-removal== 16315 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Pc_not_secret_b)))

                    ; #21322: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Bb_not_secret_b)))

                    ; #22259: <==negation-removal== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Pb_not_secret_b)))

                    ; #22908: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Ba_not_secret_b)))

                    ; #31607: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Bc_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #31896: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Ba_not_secret_b)))

                    ; #34214: <==uncertain_firing== 74920 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #34484: <==uncertain_firing== 16315 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #35759: <==uncertain_firing== 91265 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #37046: <==negation-removal== 76532 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Pa_not_secret_b)))

                    ; #38424: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #39018: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #40043: <==negation-removal== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Pc_not_secret_b)))

                    ; #40102: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #42346: <==uncertain_firing== 76532 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #43872: <==uncertain_firing== 45797 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #45683: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Ba_not_secret_b)))

                    ; #46267: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Bc_not_secret_b)))

                    ; #48078: <==uncertain_firing== 24888 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #48545: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #51389: <==uncertain_firing== 26357 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #51853: <==uncertain_firing== 42687 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #53074: <==negation-removal== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Pc_not_secret_b)))

                    ; #53439: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #53768: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #61731: <==negation-removal== 24888 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Pc_not_secret_b)))

                    ; #64249: <==negation-removal== 74920 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Pa_not_secret_b)))

                    ; #65690: <==uncertain_firing== 34145 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #67124: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Bc_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #67428: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Bb_not_secret_b)))

                    ; #67867: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #72332: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #72564: <==uncertain_firing== 60632 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #72617: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Ba_not_secret_b)))

                    ; #75018: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #77411: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Bb_not_secret_b)))

                    ; #80764: <==uncertain_firing== 42843 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #81013: <==negation-removal== 42687 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Pb_not_secret_b)))

                    ; #82151: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #84784: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Bb_not_secret_b)))

                    ; #85897: <==negation-removal== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Pa_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #89455: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #89944: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Bc_not_secret_b)))

                    ; #89951: <==negation-removal== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Pa_not_secret_b)))

                    ; #91720: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Ba_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_c))
        :effect (and
                    ; #10130: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Pc_secret_c))

                    ; #10624: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Ba_secret_c))

                    ; #12454: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Pa_secret_c))

                    ; #18665: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Pa_secret_c))

                    ; #18740: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Pc_secret_c))

                    ; #20138: <==commonly_known== 36751 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Bc_secret_c))

                    ; #26924: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Pb_secret_c))

                    ; #29163: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Pc_secret_c))

                    ; #33687: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Pc_secret_c))

                    ; #35850: <==commonly_known== 73836 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Bb_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #41622: <==commonly_known== 36751 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Bc_secret_c))

                    ; #44559: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Ba_secret_c))

                    ; #45669: <==commonly_known== 47734 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Bc_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #52019: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Ba_secret_c))

                    ; #57221: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Pb_secret_c))

                    ; #57790: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Pa_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #66756: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Ba_secret_c))

                    ; #66799: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Pa_secret_c))

                    ; #68563: <==commonly_known== 40173 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Bb_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76496: <==commonly_known== 47734 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Bc_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #77781: <==commonly_known== 40173 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Bb_secret_c))

                    ; #78887: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Pb_secret_c))

                    ; #79839: <==commonly_known== 73836 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Bb_secret_c))

                    ; #90798: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Pb_secret_c))

                    ; #10237: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #10965: <==negation-removal== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Pb_not_secret_c)))

                    ; #17904: <==negation-removal== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Pb_not_secret_c)))

                    ; #19343: <==negation-removal== 52019 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Pa_not_secret_c)))

                    ; #22424: <==negation-removal== 45669 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Pc_not_secret_c)))

                    ; #22585: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #24450: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Bb_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #26015: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Bc_not_secret_c)))

                    ; #26677: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #26856: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Ba_not_secret_c)))

                    ; #28627: <==negation-removal== 79839 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Pb_not_secret_c)))

                    ; #29115: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Bc_not_secret_c)))

                    ; #30840: <==uncertain_firing== 10624 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #32667: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Ba_not_secret_c)))

                    ; #34249: <==uncertain_firing== 41622 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #37493: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #38508: <==uncertain_firing== 66756 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #40494: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Ba_not_secret_c)))

                    ; #40654: <==uncertain_firing== 76496 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #41461: <==negation-removal== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Pc_not_secret_c)))

                    ; #42313: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45172: <==uncertain_firing== 68563 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #46436: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #47961: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Ba_not_secret_c)))

                    ; #50756: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Bc_not_secret_c)))

                    ; #51084: <==negation-removal== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Pc_not_secret_c)))

                    ; #51766: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #55396: <==negation-removal== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Pa_not_secret_c)))

                    ; #55561: <==uncertain_firing== 35850 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #56640: <==negation-removal== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Pa_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #61294: <==uncertain_firing== 52019 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #62068: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Bb_not_secret_c)))

                    ; #64010: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Bb_not_secret_c)))

                    ; #65998: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #66379: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #67611: <==uncertain_firing== 20138 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #71971: <==uncertain_firing== 77781 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #76562: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Bb_not_secret_c)))

                    ; #76976: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78038: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Bc_not_secret_c)))

                    ; #79236: <==negation-removal== 44559 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Pa_not_secret_c)))

                    ; #79236: <==negation-removal== 76496 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Pc_not_secret_c)))

                    ; #82068: <==negation-removal== 35850 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Pb_not_secret_c)))

                    ; #83318: <==uncertain_firing== 45669 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #85731: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87612: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #87801: <==uncertain_firing== 44559 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #90303: <==uncertain_firing== 79839 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pb_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_c))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #16315: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Bc_secret_c))

                    ; #18388: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Pa_secret_c))

                    ; #18749: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Pb_secret_c))

                    ; #18943: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Pa_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #24888: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Bc_secret_c))

                    ; #26058: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Pc_secret_c))

                    ; #26357: <==commonly_known== 19915 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Bb_secret_c))

                    ; #30351: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Pc_secret_c))

                    ; #31368: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Pb_secret_c))

                    ; #34145: <==commonly_known== 19915 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Bb_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #35939: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Pb_secret_c))

                    ; #37103: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Pb_secret_c))

                    ; #37489: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Pc_secret_c))

                    ; #42687: <==commonly_known== 44794 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Bb_secret_c))

                    ; #42843: <==commonly_known== 44794 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Bb_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #45797: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Bc_secret_c))

                    ; #60632: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Bc_secret_c))

                    ; #61215: <==commonly_known== 35073 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Ba_secret_c))

                    ; #72018: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Pc_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #74920: <==commonly_known== 61057 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Ba_secret_c))

                    ; #76532: <==commonly_known== 61057 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Ba_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #87100: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Pa_secret_c))

                    ; #87812: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Pa_secret_c))

                    ; #91265: <==commonly_known== 35073 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Ba_secret_c))

                    ; #10068: <==uncertain_firing== 61215 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #12379: <==negation-removal== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Pb_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #14970: <==negation-removal== 42843 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Pb_not_secret_c)))

                    ; #19005: <==negation-removal== 16315 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Pc_not_secret_c)))

                    ; #21322: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Bb_not_secret_c)))

                    ; #22259: <==negation-removal== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Pb_not_secret_c)))

                    ; #22908: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Ba_not_secret_c)))

                    ; #31607: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Bc_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #31896: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Ba_not_secret_c)))

                    ; #34214: <==uncertain_firing== 74920 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #34484: <==uncertain_firing== 16315 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #35759: <==uncertain_firing== 91265 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #37046: <==negation-removal== 76532 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Pa_not_secret_c)))

                    ; #38424: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #39018: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #40043: <==negation-removal== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Pc_not_secret_c)))

                    ; #40102: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #42346: <==uncertain_firing== 76532 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #43872: <==uncertain_firing== 45797 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #45683: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Ba_not_secret_c)))

                    ; #46267: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Bc_not_secret_c)))

                    ; #48078: <==uncertain_firing== 24888 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #48545: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #51389: <==uncertain_firing== 26357 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #51853: <==uncertain_firing== 42687 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #53074: <==negation-removal== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Pc_not_secret_c)))

                    ; #53439: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #53768: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #61731: <==negation-removal== 24888 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Pc_not_secret_c)))

                    ; #64249: <==negation-removal== 74920 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Pa_not_secret_c)))

                    ; #65690: <==uncertain_firing== 34145 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #67124: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Bc_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #67428: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Bb_not_secret_c)))

                    ; #67867: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #72332: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #72564: <==uncertain_firing== 60632 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #72617: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Ba_not_secret_c)))

                    ; #75018: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #77411: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Bb_not_secret_c)))

                    ; #80764: <==uncertain_firing== 42843 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #81013: <==negation-removal== 42687 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Pb_not_secret_c)))

                    ; #82151: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #84784: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Bb_not_secret_c)))

                    ; #85897: <==negation-removal== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Pa_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #89455: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #89944: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Bc_not_secret_c)))

                    ; #89951: <==negation-removal== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Pa_not_secret_c)))

                    ; #91720: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Ba_not_secret_c)))))

    (:action share_c_a_l1
        :precondition (and (Bc_secret_a)
                           (at_c_l1))
        :effect (and
                    ; #10130: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Pc_secret_a))

                    ; #10624: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Ba_secret_a))

                    ; #12454: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Pa_secret_a))

                    ; #18665: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Pa_secret_a))

                    ; #18740: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Pc_secret_a))

                    ; #20138: <==commonly_known== 36751 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Bc_secret_a))

                    ; #26924: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Pb_secret_a))

                    ; #29163: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Pc_secret_a))

                    ; #33687: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Pc_secret_a))

                    ; #35850: <==commonly_known== 73836 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Bb_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #41622: <==commonly_known== 36751 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Bc_secret_a))

                    ; #44559: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Ba_secret_a))

                    ; #45669: <==commonly_known== 47734 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Bc_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #52019: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Ba_secret_a))

                    ; #57221: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Pb_secret_a))

                    ; #57790: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Pa_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #66756: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Ba_secret_a))

                    ; #66799: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Pa_secret_a))

                    ; #68563: <==commonly_known== 40173 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Bb_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76496: <==commonly_known== 47734 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Bc_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #77781: <==commonly_known== 40173 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Bb_secret_a))

                    ; #78887: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Pb_secret_a))

                    ; #79839: <==commonly_known== 73836 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Bb_secret_a))

                    ; #90798: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Pb_secret_a))

                    ; #10237: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #10965: <==negation-removal== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Pb_not_secret_a)))

                    ; #17904: <==negation-removal== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Pb_not_secret_a)))

                    ; #19343: <==negation-removal== 52019 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Pa_not_secret_a)))

                    ; #22424: <==negation-removal== 45669 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Pc_not_secret_a)))

                    ; #22585: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #24450: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Bb_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #26015: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Bc_not_secret_a)))

                    ; #26677: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #26856: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Ba_not_secret_a)))

                    ; #28627: <==negation-removal== 79839 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Pb_not_secret_a)))

                    ; #29115: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Bc_not_secret_a)))

                    ; #30840: <==uncertain_firing== 10624 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #32667: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Ba_not_secret_a)))

                    ; #34249: <==uncertain_firing== 41622 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #37493: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #38508: <==uncertain_firing== 66756 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #40494: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Ba_not_secret_a)))

                    ; #40654: <==uncertain_firing== 76496 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #41461: <==negation-removal== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Pc_not_secret_a)))

                    ; #42313: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45172: <==uncertain_firing== 68563 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #46436: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #47961: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Ba_not_secret_a)))

                    ; #50756: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Bc_not_secret_a)))

                    ; #51084: <==negation-removal== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Pc_not_secret_a)))

                    ; #51766: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #55396: <==negation-removal== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Pa_not_secret_a)))

                    ; #55561: <==uncertain_firing== 35850 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #56640: <==negation-removal== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Pa_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #61294: <==uncertain_firing== 52019 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #62068: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Bb_not_secret_a)))

                    ; #64010: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Bb_not_secret_a)))

                    ; #65998: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #66379: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #67611: <==uncertain_firing== 20138 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #71971: <==uncertain_firing== 77781 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #76562: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Bb_not_secret_a)))

                    ; #76976: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78038: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Bc_not_secret_a)))

                    ; #79236: <==negation-removal== 76496 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Pc_not_secret_a)))

                    ; #79236: <==negation-removal== 44559 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Pa_not_secret_a)))

                    ; #82068: <==negation-removal== 35850 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Pb_not_secret_a)))

                    ; #83318: <==uncertain_firing== 45669 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #85731: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87612: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #87801: <==uncertain_firing== 44559 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #90303: <==uncertain_firing== 79839 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pb_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Bc_secret_a)
                           (at_c_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #16315: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Bc_secret_a))

                    ; #18388: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Pa_secret_a))

                    ; #18749: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Pb_secret_a))

                    ; #18943: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Pa_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #24888: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Bc_secret_a))

                    ; #26058: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Pc_secret_a))

                    ; #26357: <==commonly_known== 19915 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Bb_secret_a))

                    ; #30351: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Pc_secret_a))

                    ; #31368: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Pb_secret_a))

                    ; #34145: <==commonly_known== 19915 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Bb_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #35939: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Pb_secret_a))

                    ; #37103: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Pb_secret_a))

                    ; #37489: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Pc_secret_a))

                    ; #42687: <==commonly_known== 44794 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Bb_secret_a))

                    ; #42843: <==commonly_known== 44794 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Bb_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #45797: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Bc_secret_a))

                    ; #60632: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Bc_secret_a))

                    ; #61215: <==commonly_known== 35073 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Ba_secret_a))

                    ; #72018: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Pc_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #74920: <==commonly_known== 61057 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Ba_secret_a))

                    ; #76532: <==commonly_known== 61057 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Ba_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #87100: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Pa_secret_a))

                    ; #87812: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Pa_secret_a))

                    ; #91265: <==commonly_known== 35073 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Ba_secret_a))

                    ; #10068: <==uncertain_firing== 61215 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #12379: <==negation-removal== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Pb_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #14970: <==negation-removal== 42843 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Pb_not_secret_a)))

                    ; #19005: <==negation-removal== 16315 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Pc_not_secret_a)))

                    ; #21322: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Bb_not_secret_a)))

                    ; #22259: <==negation-removal== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Pb_not_secret_a)))

                    ; #22908: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Ba_not_secret_a)))

                    ; #31607: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Bc_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #31896: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Ba_not_secret_a)))

                    ; #34214: <==uncertain_firing== 74920 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #34484: <==uncertain_firing== 16315 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #35759: <==uncertain_firing== 91265 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #37046: <==negation-removal== 76532 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Pa_not_secret_a)))

                    ; #38424: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #39018: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #40043: <==negation-removal== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Pc_not_secret_a)))

                    ; #40102: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #42346: <==uncertain_firing== 76532 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #43872: <==uncertain_firing== 45797 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #45683: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Ba_not_secret_a)))

                    ; #46267: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Bc_not_secret_a)))

                    ; #48078: <==uncertain_firing== 24888 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #48545: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #51389: <==uncertain_firing== 26357 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #51853: <==uncertain_firing== 42687 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #53074: <==negation-removal== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Pc_not_secret_a)))

                    ; #53439: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #53768: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #61731: <==negation-removal== 24888 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Pc_not_secret_a)))

                    ; #64249: <==negation-removal== 74920 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Pa_not_secret_a)))

                    ; #65690: <==uncertain_firing== 34145 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #67124: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Bc_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #67428: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Bb_not_secret_a)))

                    ; #67867: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #72332: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #72564: <==uncertain_firing== 60632 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #72617: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Ba_not_secret_a)))

                    ; #75018: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #77411: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Bb_not_secret_a)))

                    ; #80764: <==uncertain_firing== 42843 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #81013: <==negation-removal== 42687 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Pb_not_secret_a)))

                    ; #82151: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #84784: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Bb_not_secret_a)))

                    ; #85897: <==negation-removal== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Pa_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #89455: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #89944: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Bc_not_secret_a)))

                    ; #89951: <==negation-removal== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Pa_not_secret_a)))

                    ; #91720: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Ba_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_b))
        :effect (and
                    ; #10130: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Pc_secret_b))

                    ; #10624: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Ba_secret_b))

                    ; #12454: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Pa_secret_b))

                    ; #18665: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Pa_secret_b))

                    ; #18740: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Pc_secret_b))

                    ; #20138: <==commonly_known== 36751 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Bc_secret_b))

                    ; #26924: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Pb_secret_b))

                    ; #29163: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Pc_secret_b))

                    ; #33687: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Pc_secret_b))

                    ; #35850: <==commonly_known== 73836 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Bb_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #41622: <==commonly_known== 36751 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Bc_secret_b))

                    ; #44559: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Ba_secret_b))

                    ; #45669: <==commonly_known== 47734 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Bc_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #52019: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Ba_secret_b))

                    ; #57221: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Pb_secret_b))

                    ; #57790: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Pa_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #66756: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Ba_secret_b))

                    ; #66799: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Pa_secret_b))

                    ; #68563: <==commonly_known== 40173 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Bb_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76496: <==commonly_known== 47734 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Bc_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #77781: <==commonly_known== 40173 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Bb_secret_b))

                    ; #78887: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Pb_secret_b))

                    ; #79839: <==commonly_known== 73836 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Bb_secret_b))

                    ; #90798: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Pb_secret_b))

                    ; #10237: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #10965: <==negation-removal== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Pb_not_secret_b)))

                    ; #17904: <==negation-removal== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Pb_not_secret_b)))

                    ; #19343: <==negation-removal== 52019 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Pa_not_secret_b)))

                    ; #22424: <==negation-removal== 45669 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Pc_not_secret_b)))

                    ; #22585: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #24450: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Bb_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #26015: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Bc_not_secret_b)))

                    ; #26677: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #26856: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Ba_not_secret_b)))

                    ; #28627: <==negation-removal== 79839 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Pb_not_secret_b)))

                    ; #29115: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Bc_not_secret_b)))

                    ; #30840: <==uncertain_firing== 10624 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #32667: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Ba_not_secret_b)))

                    ; #34249: <==uncertain_firing== 41622 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #37493: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #38508: <==uncertain_firing== 66756 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #40494: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Ba_not_secret_b)))

                    ; #40654: <==uncertain_firing== 76496 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #41461: <==negation-removal== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Pc_not_secret_b)))

                    ; #42313: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45172: <==uncertain_firing== 68563 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #46436: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #47961: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Ba_not_secret_b)))

                    ; #50756: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Bc_not_secret_b)))

                    ; #51084: <==negation-removal== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Pc_not_secret_b)))

                    ; #51766: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #55396: <==negation-removal== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Pa_not_secret_b)))

                    ; #55561: <==uncertain_firing== 35850 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #56640: <==negation-removal== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Pa_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #61294: <==uncertain_firing== 52019 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #62068: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Bb_not_secret_b)))

                    ; #64010: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Bb_not_secret_b)))

                    ; #65998: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #66379: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #67611: <==uncertain_firing== 20138 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #71971: <==uncertain_firing== 77781 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #76562: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Bb_not_secret_b)))

                    ; #76976: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78038: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Bc_not_secret_b)))

                    ; #79236: <==negation-removal== 44559 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Pa_not_secret_b)))

                    ; #79236: <==negation-removal== 76496 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Pc_not_secret_b)))

                    ; #82068: <==negation-removal== 35850 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Pb_not_secret_b)))

                    ; #83318: <==uncertain_firing== 45669 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #85731: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87612: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #87801: <==uncertain_firing== 44559 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #90303: <==uncertain_firing== 79839 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pb_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_b))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #16315: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Bc_secret_b))

                    ; #18388: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Pa_secret_b))

                    ; #18749: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Pb_secret_b))

                    ; #18943: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Pa_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #24888: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Bc_secret_b))

                    ; #26058: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Pc_secret_b))

                    ; #26357: <==commonly_known== 19915 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Bb_secret_b))

                    ; #30351: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Pc_secret_b))

                    ; #31368: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Pb_secret_b))

                    ; #34145: <==commonly_known== 19915 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Bb_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #35939: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Pb_secret_b))

                    ; #37103: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Pb_secret_b))

                    ; #37489: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Pc_secret_b))

                    ; #42687: <==commonly_known== 44794 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Bb_secret_b))

                    ; #42843: <==commonly_known== 44794 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Bb_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #45797: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Bc_secret_b))

                    ; #60632: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Bc_secret_b))

                    ; #61215: <==commonly_known== 35073 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Ba_secret_b))

                    ; #72018: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Pc_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #74920: <==commonly_known== 61057 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Ba_secret_b))

                    ; #76532: <==commonly_known== 61057 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Ba_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #87100: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Pa_secret_b))

                    ; #87812: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Pa_secret_b))

                    ; #91265: <==commonly_known== 35073 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Ba_secret_b))

                    ; #10068: <==uncertain_firing== 61215 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #12379: <==negation-removal== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Pb_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #14970: <==negation-removal== 42843 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Pb_not_secret_b)))

                    ; #19005: <==negation-removal== 16315 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Pc_not_secret_b)))

                    ; #21322: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Bb_not_secret_b)))

                    ; #22259: <==negation-removal== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Pb_not_secret_b)))

                    ; #22908: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Ba_not_secret_b)))

                    ; #31607: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Bc_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #31896: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Ba_not_secret_b)))

                    ; #34214: <==uncertain_firing== 74920 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #34484: <==uncertain_firing== 16315 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #35759: <==uncertain_firing== 91265 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #37046: <==negation-removal== 76532 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Pa_not_secret_b)))

                    ; #38424: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #39018: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #40043: <==negation-removal== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Pc_not_secret_b)))

                    ; #40102: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #42346: <==uncertain_firing== 76532 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #43872: <==uncertain_firing== 45797 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #45683: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Ba_not_secret_b)))

                    ; #46267: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Bc_not_secret_b)))

                    ; #48078: <==uncertain_firing== 24888 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #48545: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #51389: <==uncertain_firing== 26357 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #51853: <==uncertain_firing== 42687 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #53074: <==negation-removal== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Pc_not_secret_b)))

                    ; #53439: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #53768: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #61731: <==negation-removal== 24888 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Pc_not_secret_b)))

                    ; #64249: <==negation-removal== 74920 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Pa_not_secret_b)))

                    ; #65690: <==uncertain_firing== 34145 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #67124: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Bc_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #67428: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Bb_not_secret_b)))

                    ; #67867: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #72332: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #72564: <==uncertain_firing== 60632 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #72617: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Ba_not_secret_b)))

                    ; #75018: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #77411: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Bb_not_secret_b)))

                    ; #80764: <==uncertain_firing== 42843 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #81013: <==negation-removal== 42687 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Pb_not_secret_b)))

                    ; #82151: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #84784: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Bb_not_secret_b)))

                    ; #85897: <==negation-removal== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Pa_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #89455: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #89944: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Bc_not_secret_b)))

                    ; #89951: <==negation-removal== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Pa_not_secret_b)))

                    ; #91720: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Ba_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_c))
        :effect (and
                    ; #10130: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Pc_secret_c))

                    ; #10624: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Ba_secret_c))

                    ; #12454: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Pa_secret_c))

                    ; #18665: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Pa_secret_c))

                    ; #18740: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Pc_secret_c))

                    ; #20138: <==commonly_known== 36751 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Bc_secret_c))

                    ; #26924: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Pb_secret_c))

                    ; #29163: <==closure== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Pc_secret_c))

                    ; #33687: <==closure== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Ba_Pc_secret_c))

                    ; #35850: <==commonly_known== 73836 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pc_Bb_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #41622: <==commonly_known== 36751 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bb_Bc_secret_c))

                    ; #44559: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pc_Ba_secret_c))

                    ; #45669: <==commonly_known== 47734 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Pa_Bc_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #52019: <==commonly_known== 45173 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pb_Ba_secret_c))

                    ; #57221: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Pb_secret_c))

                    ; #57790: <==closure== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Pa_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #66756: <==commonly_known== 74565 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Bb_Ba_secret_c))

                    ; #66799: <==closure== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (Bc_Pa_secret_c))

                    ; #68563: <==commonly_known== 40173 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Bb_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76496: <==commonly_known== 47734 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Pb_Bc_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #77781: <==commonly_known== 40173 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Bb_secret_c))

                    ; #78887: <==closure== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (Bc_Pb_secret_c))

                    ; #79839: <==commonly_known== 73836 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Pa_Bb_secret_c))

                    ; #90798: <==closure== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (Ba_Pb_secret_c))

                    ; #10237: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #10965: <==negation-removal== 68563 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Pb_not_secret_c)))

                    ; #17904: <==negation-removal== 77781 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Pb_not_secret_c)))

                    ; #19343: <==negation-removal== 52019 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Pa_not_secret_c)))

                    ; #22424: <==negation-removal== 45669 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Pc_not_secret_c)))

                    ; #22585: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #24450: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pa_Bb_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #26015: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Bc_not_secret_c)))

                    ; #26677: <==unclosure== 30840 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #26856: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Ba_not_secret_c)))

                    ; #28627: <==negation-removal== 79839 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Pb_not_secret_c)))

                    ; #29115: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Bc_not_secret_c)))

                    ; #30840: <==uncertain_firing== 10624 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #32667: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Ba_not_secret_c)))

                    ; #34249: <==uncertain_firing== 41622 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #37493: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #38508: <==uncertain_firing== 66756 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #40494: <==unclosure== 56640 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Ba_not_secret_c)))

                    ; #40654: <==uncertain_firing== 76496 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #41461: <==negation-removal== 20138 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pa_Pc_not_secret_c)))

                    ; #42313: <==unclosure== 45172 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45172: <==uncertain_firing== 68563 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #46436: <==unclosure== 67611 (neg)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #47961: <==unclosure== 55396 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Bb_Ba_not_secret_c)))

                    ; #50756: <==unclosure== 51084 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Bc_not_secret_c)))

                    ; #51084: <==negation-removal== 41622 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pb_Pc_not_secret_c)))

                    ; #51766: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #55396: <==negation-removal== 66756 (pos)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Pb_Pa_not_secret_c)))

                    ; #55561: <==uncertain_firing== 35850 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #56640: <==negation-removal== 10624 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Pc_Pa_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #61294: <==uncertain_firing== 52019 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #62068: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Bb_not_secret_c)))

                    ; #64010: <==unclosure== 10965 (neg)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Pc_Bb_not_secret_c)))

                    ; #65998: <==unclosure== 71971 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #66379: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #67611: <==uncertain_firing== 20138 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #71971: <==uncertain_firing== 77781 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #76562: <==unclosure== 17904 (neg)
                    (when (and (at_a_l1)
                               (at_b_l1))
                          (not (Ba_Bb_not_secret_c)))

                    ; #76976: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78038: <==unclosure== 41461 (neg)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Ba_Bc_not_secret_c)))

                    ; #79236: <==negation-removal== 44559 (pos)
                    (when (and (at_a_l1)
                               (at_c_l1))
                          (not (Bc_Pa_not_secret_c)))

                    ; #79236: <==negation-removal== 76496 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bb_Pc_not_secret_c)))

                    ; #82068: <==negation-removal== 35850 (pos)
                    (when (and (at_b_l1)
                               (at_c_l1))
                          (not (Bc_Pb_not_secret_c)))

                    ; #83318: <==uncertain_firing== 45669 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #85731: <==unclosure== 38508 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87612: <==unclosure== 34249 (neg)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_c_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #87801: <==uncertain_firing== 44559 (pos)
                    (when (and (not (not_at_c_l1))
                               (not (not_at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #90303: <==uncertain_firing== 79839 (pos)
                    (when (and (not (not_at_b_l1))
                               (not (not_at_a_l1)))
                          (not (Ba_Pb_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_c))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #16315: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Bc_secret_c))

                    ; #18388: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Pa_secret_c))

                    ; #18749: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Pb_secret_c))

                    ; #18943: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Pa_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #24888: <==commonly_known== 55680 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Bc_secret_c))

                    ; #26058: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Pc_secret_c))

                    ; #26357: <==commonly_known== 19915 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Bb_secret_c))

                    ; #30351: <==closure== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pb_Pc_secret_c))

                    ; #31368: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Pb_secret_c))

                    ; #34145: <==commonly_known== 19915 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Bb_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #35939: <==closure== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Ba_Pb_secret_c))

                    ; #37103: <==closure== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bc_Pb_secret_c))

                    ; #37489: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Pc_secret_c))

                    ; #42687: <==commonly_known== 44794 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Pc_Bb_secret_c))

                    ; #42843: <==commonly_known== 44794 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pa_Bb_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #45797: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Ba_Bc_secret_c))

                    ; #60632: <==commonly_known== 72416 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (Bb_Bc_secret_c))

                    ; #61215: <==commonly_known== 35073 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Ba_secret_c))

                    ; #72018: <==closure== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pa_Pc_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #74920: <==commonly_known== 61057 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Pc_Ba_secret_c))

                    ; #76532: <==commonly_known== 61057 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Pb_Ba_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #87100: <==closure== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Pa_secret_c))

                    ; #87812: <==closure== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (Bc_Pa_secret_c))

                    ; #91265: <==commonly_known== 35073 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (Bb_Ba_secret_c))

                    ; #10068: <==uncertain_firing== 61215 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #12379: <==negation-removal== 26357 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Pb_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #14970: <==negation-removal== 42843 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Pb_not_secret_c)))

                    ; #19005: <==negation-removal== 16315 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Pc_not_secret_c)))

                    ; #21322: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Bb_not_secret_c)))

                    ; #22259: <==negation-removal== 34145 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Pb_not_secret_c)))

                    ; #22908: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Ba_not_secret_c)))

                    ; #31607: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bb_Bc_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #31896: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Ba_not_secret_c)))

                    ; #34214: <==uncertain_firing== 74920 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #34484: <==uncertain_firing== 16315 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #35759: <==uncertain_firing== 91265 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #37046: <==negation-removal== 76532 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Pa_not_secret_c)))

                    ; #38424: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #39018: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #40043: <==negation-removal== 60632 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Pc_not_secret_c)))

                    ; #40102: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #42346: <==uncertain_firing== 76532 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #43872: <==uncertain_firing== 45797 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #45683: <==unclosure== 85897 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Bb_Ba_not_secret_c)))

                    ; #46267: <==unclosure== 40043 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pb_Bc_not_secret_c)))

                    ; #48078: <==uncertain_firing== 24888 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #48545: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #51389: <==uncertain_firing== 26357 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #51853: <==uncertain_firing== 42687 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #53074: <==negation-removal== 45797 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Pc_not_secret_c)))

                    ; #53439: <==unclosure== 35759 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #53768: <==unclosure== 65690 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #61731: <==negation-removal== 24888 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Pc_not_secret_c)))

                    ; #64249: <==negation-removal== 74920 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Pa_not_secret_c)))

                    ; #65690: <==uncertain_firing== 34145 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #67124: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Ba_Bc_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #67428: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pa_Bb_not_secret_c)))

                    ; #67867: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #72332: <==unclosure== 72564 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #72564: <==uncertain_firing== 60632 (pos)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_b_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #72617: <==unclosure== 89951 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Bc_Ba_not_secret_c)))

                    ; #75018: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #77411: <==unclosure== 12379 (neg)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Ba_Bb_not_secret_c)))

                    ; #80764: <==uncertain_firing== 42843 (pos)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #81013: <==negation-removal== 42687 (pos)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Bc_Pb_not_secret_c)))

                    ; #82151: <==unclosure== 43872 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #84784: <==unclosure== 22259 (neg)
                    (when (and (at_c_l2)
                               (at_b_l2))
                          (not (Pc_Bb_not_secret_c)))

                    ; #85897: <==negation-removal== 91265 (pos)
                    (when (and (at_b_l2)
                               (at_a_l2))
                          (not (Pb_Pa_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #89455: <==unclosure== 51389 (neg)
                    (when (and (not (not_at_b_l2))
                               (not (not_at_a_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #89944: <==unclosure== 53074 (neg)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pa_Bc_not_secret_c)))

                    ; #89951: <==negation-removal== 61215 (pos)
                    (when (and (at_c_l2)
                               (at_a_l2))
                          (not (Pc_Pa_not_secret_c)))

                    ; #91720: <==unclosure== 10068 (neg)
                    (when (and (not (not_at_c_l2))
                               (not (not_at_a_l2)))
                          (not (Pc_Ba_not_secret_c)))))

)