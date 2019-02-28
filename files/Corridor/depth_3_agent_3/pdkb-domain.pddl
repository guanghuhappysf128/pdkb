(define (domain corridor)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_l1)
        (not_at_l2)
        (not_at_l3)
        (not_at_l4)
        (not_secret)
        (not_succ_l1_l1)
        (not_succ_l1_l2)
        (not_succ_l1_l3)
        (not_succ_l1_l4)
        (not_succ_l2_l1)
        (not_succ_l2_l2)
        (not_succ_l2_l3)
        (not_succ_l2_l4)
        (not_succ_l3_l1)
        (not_succ_l3_l2)
        (not_succ_l3_l3)
        (not_succ_l3_l4)
        (not_succ_l4_l1)
        (not_succ_l4_l2)
        (not_succ_l4_l3)
        (not_succ_l4_l4)
        (Ba_not_secret)
        (Ba_Ba_not_secret)
        (Ba_Ba_Ba_not_secret)
        (Ba_Ba_Ba_secret)
        (Ba_Ba_Bb_not_secret)
        (Ba_Ba_Bb_secret)
        (Ba_Ba_Bc_not_secret)
        (Ba_Ba_Bc_secret)
        (Ba_Ba_Pa_not_secret)
        (Ba_Ba_Pa_secret)
        (Ba_Ba_Pb_not_secret)
        (Ba_Ba_Pb_secret)
        (Ba_Ba_Pc_not_secret)
        (Ba_Ba_Pc_secret)
        (Ba_Ba_secret)
        (Ba_Bb_not_secret)
        (Ba_Bb_Ba_not_secret)
        (Ba_Bb_Ba_secret)
        (Ba_Bb_Bb_not_secret)
        (Ba_Bb_Bb_secret)
        (Ba_Bb_Bc_not_secret)
        (Ba_Bb_Bc_secret)
        (Ba_Bb_Pa_not_secret)
        (Ba_Bb_Pa_secret)
        (Ba_Bb_Pb_not_secret)
        (Ba_Bb_Pb_secret)
        (Ba_Bb_Pc_not_secret)
        (Ba_Bb_Pc_secret)
        (Ba_Bb_secret)
        (Ba_Bc_not_secret)
        (Ba_Bc_Ba_not_secret)
        (Ba_Bc_Ba_secret)
        (Ba_Bc_Bb_not_secret)
        (Ba_Bc_Bb_secret)
        (Ba_Bc_Bc_not_secret)
        (Ba_Bc_Bc_secret)
        (Ba_Bc_Pa_not_secret)
        (Ba_Bc_Pa_secret)
        (Ba_Bc_Pb_not_secret)
        (Ba_Bc_Pb_secret)
        (Ba_Bc_Pc_not_secret)
        (Ba_Bc_Pc_secret)
        (Ba_Bc_secret)
        (Ba_Pa_not_secret)
        (Ba_Pa_Ba_not_secret)
        (Ba_Pa_Ba_secret)
        (Ba_Pa_Bb_not_secret)
        (Ba_Pa_Bb_secret)
        (Ba_Pa_Bc_not_secret)
        (Ba_Pa_Bc_secret)
        (Ba_Pa_Pa_not_secret)
        (Ba_Pa_Pa_secret)
        (Ba_Pa_Pb_not_secret)
        (Ba_Pa_Pb_secret)
        (Ba_Pa_Pc_not_secret)
        (Ba_Pa_Pc_secret)
        (Ba_Pa_secret)
        (Ba_Pb_not_secret)
        (Ba_Pb_Ba_not_secret)
        (Ba_Pb_Ba_secret)
        (Ba_Pb_Bb_not_secret)
        (Ba_Pb_Bb_secret)
        (Ba_Pb_Bc_not_secret)
        (Ba_Pb_Bc_secret)
        (Ba_Pb_Pa_not_secret)
        (Ba_Pb_Pa_secret)
        (Ba_Pb_Pb_not_secret)
        (Ba_Pb_Pb_secret)
        (Ba_Pb_Pc_not_secret)
        (Ba_Pb_Pc_secret)
        (Ba_Pb_secret)
        (Ba_Pc_not_secret)
        (Ba_Pc_Ba_not_secret)
        (Ba_Pc_Ba_secret)
        (Ba_Pc_Bb_not_secret)
        (Ba_Pc_Bb_secret)
        (Ba_Pc_Bc_not_secret)
        (Ba_Pc_Bc_secret)
        (Ba_Pc_Pa_not_secret)
        (Ba_Pc_Pa_secret)
        (Ba_Pc_Pb_not_secret)
        (Ba_Pc_Pb_secret)
        (Ba_Pc_Pc_not_secret)
        (Ba_Pc_Pc_secret)
        (Ba_Pc_secret)
        (Ba_secret)
        (Bb_not_secret)
        (Bb_Ba_not_secret)
        (Bb_Ba_Ba_not_secret)
        (Bb_Ba_Ba_secret)
        (Bb_Ba_Bb_not_secret)
        (Bb_Ba_Bb_secret)
        (Bb_Ba_Bc_not_secret)
        (Bb_Ba_Bc_secret)
        (Bb_Ba_Pa_not_secret)
        (Bb_Ba_Pa_secret)
        (Bb_Ba_Pb_not_secret)
        (Bb_Ba_Pb_secret)
        (Bb_Ba_Pc_not_secret)
        (Bb_Ba_Pc_secret)
        (Bb_Ba_secret)
        (Bb_Bb_not_secret)
        (Bb_Bb_Ba_not_secret)
        (Bb_Bb_Ba_secret)
        (Bb_Bb_Bb_not_secret)
        (Bb_Bb_Bb_secret)
        (Bb_Bb_Bc_not_secret)
        (Bb_Bb_Bc_secret)
        (Bb_Bb_Pa_not_secret)
        (Bb_Bb_Pa_secret)
        (Bb_Bb_Pb_not_secret)
        (Bb_Bb_Pb_secret)
        (Bb_Bb_Pc_not_secret)
        (Bb_Bb_Pc_secret)
        (Bb_Bb_secret)
        (Bb_Bc_not_secret)
        (Bb_Bc_Ba_not_secret)
        (Bb_Bc_Ba_secret)
        (Bb_Bc_Bb_not_secret)
        (Bb_Bc_Bb_secret)
        (Bb_Bc_Bc_not_secret)
        (Bb_Bc_Bc_secret)
        (Bb_Bc_Pa_not_secret)
        (Bb_Bc_Pa_secret)
        (Bb_Bc_Pb_not_secret)
        (Bb_Bc_Pb_secret)
        (Bb_Bc_Pc_not_secret)
        (Bb_Bc_Pc_secret)
        (Bb_Bc_secret)
        (Bb_Pa_not_secret)
        (Bb_Pa_Ba_not_secret)
        (Bb_Pa_Ba_secret)
        (Bb_Pa_Bb_not_secret)
        (Bb_Pa_Bb_secret)
        (Bb_Pa_Bc_not_secret)
        (Bb_Pa_Bc_secret)
        (Bb_Pa_Pa_not_secret)
        (Bb_Pa_Pa_secret)
        (Bb_Pa_Pb_not_secret)
        (Bb_Pa_Pb_secret)
        (Bb_Pa_Pc_not_secret)
        (Bb_Pa_Pc_secret)
        (Bb_Pa_secret)
        (Bb_Pb_not_secret)
        (Bb_Pb_Ba_not_secret)
        (Bb_Pb_Ba_secret)
        (Bb_Pb_Bb_not_secret)
        (Bb_Pb_Bb_secret)
        (Bb_Pb_Bc_not_secret)
        (Bb_Pb_Bc_secret)
        (Bb_Pb_Pa_not_secret)
        (Bb_Pb_Pa_secret)
        (Bb_Pb_Pb_not_secret)
        (Bb_Pb_Pb_secret)
        (Bb_Pb_Pc_not_secret)
        (Bb_Pb_Pc_secret)
        (Bb_Pb_secret)
        (Bb_Pc_not_secret)
        (Bb_Pc_Ba_not_secret)
        (Bb_Pc_Ba_secret)
        (Bb_Pc_Bb_not_secret)
        (Bb_Pc_Bb_secret)
        (Bb_Pc_Bc_not_secret)
        (Bb_Pc_Bc_secret)
        (Bb_Pc_Pa_not_secret)
        (Bb_Pc_Pa_secret)
        (Bb_Pc_Pb_not_secret)
        (Bb_Pc_Pb_secret)
        (Bb_Pc_Pc_not_secret)
        (Bb_Pc_Pc_secret)
        (Bb_Pc_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_Ba_not_secret)
        (Bc_Ba_Ba_not_secret)
        (Bc_Ba_Ba_secret)
        (Bc_Ba_Bb_not_secret)
        (Bc_Ba_Bb_secret)
        (Bc_Ba_Bc_not_secret)
        (Bc_Ba_Bc_secret)
        (Bc_Ba_Pa_not_secret)
        (Bc_Ba_Pa_secret)
        (Bc_Ba_Pb_not_secret)
        (Bc_Ba_Pb_secret)
        (Bc_Ba_Pc_not_secret)
        (Bc_Ba_Pc_secret)
        (Bc_Ba_secret)
        (Bc_Bb_not_secret)
        (Bc_Bb_Ba_not_secret)
        (Bc_Bb_Ba_secret)
        (Bc_Bb_Bb_not_secret)
        (Bc_Bb_Bb_secret)
        (Bc_Bb_Bc_not_secret)
        (Bc_Bb_Bc_secret)
        (Bc_Bb_Pa_not_secret)
        (Bc_Bb_Pa_secret)
        (Bc_Bb_Pb_not_secret)
        (Bc_Bb_Pb_secret)
        (Bc_Bb_Pc_not_secret)
        (Bc_Bb_Pc_secret)
        (Bc_Bb_secret)
        (Bc_Bc_not_secret)
        (Bc_Bc_Ba_not_secret)
        (Bc_Bc_Ba_secret)
        (Bc_Bc_Bb_not_secret)
        (Bc_Bc_Bb_secret)
        (Bc_Bc_Bc_not_secret)
        (Bc_Bc_Bc_secret)
        (Bc_Bc_Pa_not_secret)
        (Bc_Bc_Pa_secret)
        (Bc_Bc_Pb_not_secret)
        (Bc_Bc_Pb_secret)
        (Bc_Bc_Pc_not_secret)
        (Bc_Bc_Pc_secret)
        (Bc_Bc_secret)
        (Bc_Pa_not_secret)
        (Bc_Pa_Ba_not_secret)
        (Bc_Pa_Ba_secret)
        (Bc_Pa_Bb_not_secret)
        (Bc_Pa_Bb_secret)
        (Bc_Pa_Bc_not_secret)
        (Bc_Pa_Bc_secret)
        (Bc_Pa_Pa_not_secret)
        (Bc_Pa_Pa_secret)
        (Bc_Pa_Pb_not_secret)
        (Bc_Pa_Pb_secret)
        (Bc_Pa_Pc_not_secret)
        (Bc_Pa_Pc_secret)
        (Bc_Pa_secret)
        (Bc_Pb_not_secret)
        (Bc_Pb_Ba_not_secret)
        (Bc_Pb_Ba_secret)
        (Bc_Pb_Bb_not_secret)
        (Bc_Pb_Bb_secret)
        (Bc_Pb_Bc_not_secret)
        (Bc_Pb_Bc_secret)
        (Bc_Pb_Pa_not_secret)
        (Bc_Pb_Pa_secret)
        (Bc_Pb_Pb_not_secret)
        (Bc_Pb_Pb_secret)
        (Bc_Pb_Pc_not_secret)
        (Bc_Pb_Pc_secret)
        (Bc_Pb_secret)
        (Bc_Pc_not_secret)
        (Bc_Pc_Ba_not_secret)
        (Bc_Pc_Ba_secret)
        (Bc_Pc_Bb_not_secret)
        (Bc_Pc_Bb_secret)
        (Bc_Pc_Bc_not_secret)
        (Bc_Pc_Bc_secret)
        (Bc_Pc_Pa_not_secret)
        (Bc_Pc_Pa_secret)
        (Bc_Pc_Pb_not_secret)
        (Bc_Pc_Pb_secret)
        (Bc_Pc_Pc_not_secret)
        (Bc_Pc_Pc_secret)
        (Bc_Pc_secret)
        (Bc_secret)
        (Pa_not_secret)
        (Pa_Ba_not_secret)
        (Pa_Ba_Ba_not_secret)
        (Pa_Ba_Ba_secret)
        (Pa_Ba_Bb_not_secret)
        (Pa_Ba_Bb_secret)
        (Pa_Ba_Bc_not_secret)
        (Pa_Ba_Bc_secret)
        (Pa_Ba_Pa_not_secret)
        (Pa_Ba_Pa_secret)
        (Pa_Ba_Pb_not_secret)
        (Pa_Ba_Pb_secret)
        (Pa_Ba_Pc_not_secret)
        (Pa_Ba_Pc_secret)
        (Pa_Ba_secret)
        (Pa_Bb_not_secret)
        (Pa_Bb_Ba_not_secret)
        (Pa_Bb_Ba_secret)
        (Pa_Bb_Bb_not_secret)
        (Pa_Bb_Bb_secret)
        (Pa_Bb_Bc_not_secret)
        (Pa_Bb_Bc_secret)
        (Pa_Bb_Pa_not_secret)
        (Pa_Bb_Pa_secret)
        (Pa_Bb_Pb_not_secret)
        (Pa_Bb_Pb_secret)
        (Pa_Bb_Pc_not_secret)
        (Pa_Bb_Pc_secret)
        (Pa_Bb_secret)
        (Pa_Bc_not_secret)
        (Pa_Bc_Ba_not_secret)
        (Pa_Bc_Ba_secret)
        (Pa_Bc_Bb_not_secret)
        (Pa_Bc_Bb_secret)
        (Pa_Bc_Bc_not_secret)
        (Pa_Bc_Bc_secret)
        (Pa_Bc_Pa_not_secret)
        (Pa_Bc_Pa_secret)
        (Pa_Bc_Pb_not_secret)
        (Pa_Bc_Pb_secret)
        (Pa_Bc_Pc_not_secret)
        (Pa_Bc_Pc_secret)
        (Pa_Bc_secret)
        (Pa_Pa_not_secret)
        (Pa_Pa_Ba_not_secret)
        (Pa_Pa_Ba_secret)
        (Pa_Pa_Bb_not_secret)
        (Pa_Pa_Bb_secret)
        (Pa_Pa_Bc_not_secret)
        (Pa_Pa_Bc_secret)
        (Pa_Pa_Pa_not_secret)
        (Pa_Pa_Pa_secret)
        (Pa_Pa_Pb_not_secret)
        (Pa_Pa_Pb_secret)
        (Pa_Pa_Pc_not_secret)
        (Pa_Pa_Pc_secret)
        (Pa_Pa_secret)
        (Pa_Pb_not_secret)
        (Pa_Pb_Ba_not_secret)
        (Pa_Pb_Ba_secret)
        (Pa_Pb_Bb_not_secret)
        (Pa_Pb_Bb_secret)
        (Pa_Pb_Bc_not_secret)
        (Pa_Pb_Bc_secret)
        (Pa_Pb_Pa_not_secret)
        (Pa_Pb_Pa_secret)
        (Pa_Pb_Pb_not_secret)
        (Pa_Pb_Pb_secret)
        (Pa_Pb_Pc_not_secret)
        (Pa_Pb_Pc_secret)
        (Pa_Pb_secret)
        (Pa_Pc_not_secret)
        (Pa_Pc_Ba_not_secret)
        (Pa_Pc_Ba_secret)
        (Pa_Pc_Bb_not_secret)
        (Pa_Pc_Bb_secret)
        (Pa_Pc_Bc_not_secret)
        (Pa_Pc_Bc_secret)
        (Pa_Pc_Pa_not_secret)
        (Pa_Pc_Pa_secret)
        (Pa_Pc_Pb_not_secret)
        (Pa_Pc_Pb_secret)
        (Pa_Pc_Pc_not_secret)
        (Pa_Pc_Pc_secret)
        (Pa_Pc_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_Ba_not_secret)
        (Pb_Ba_Ba_not_secret)
        (Pb_Ba_Ba_secret)
        (Pb_Ba_Bb_not_secret)
        (Pb_Ba_Bb_secret)
        (Pb_Ba_Bc_not_secret)
        (Pb_Ba_Bc_secret)
        (Pb_Ba_Pa_not_secret)
        (Pb_Ba_Pa_secret)
        (Pb_Ba_Pb_not_secret)
        (Pb_Ba_Pb_secret)
        (Pb_Ba_Pc_not_secret)
        (Pb_Ba_Pc_secret)
        (Pb_Ba_secret)
        (Pb_Bb_not_secret)
        (Pb_Bb_Ba_not_secret)
        (Pb_Bb_Ba_secret)
        (Pb_Bb_Bb_not_secret)
        (Pb_Bb_Bb_secret)
        (Pb_Bb_Bc_not_secret)
        (Pb_Bb_Bc_secret)
        (Pb_Bb_Pa_not_secret)
        (Pb_Bb_Pa_secret)
        (Pb_Bb_Pb_not_secret)
        (Pb_Bb_Pb_secret)
        (Pb_Bb_Pc_not_secret)
        (Pb_Bb_Pc_secret)
        (Pb_Bb_secret)
        (Pb_Bc_not_secret)
        (Pb_Bc_Ba_not_secret)
        (Pb_Bc_Ba_secret)
        (Pb_Bc_Bb_not_secret)
        (Pb_Bc_Bb_secret)
        (Pb_Bc_Bc_not_secret)
        (Pb_Bc_Bc_secret)
        (Pb_Bc_Pa_not_secret)
        (Pb_Bc_Pa_secret)
        (Pb_Bc_Pb_not_secret)
        (Pb_Bc_Pb_secret)
        (Pb_Bc_Pc_not_secret)
        (Pb_Bc_Pc_secret)
        (Pb_Bc_secret)
        (Pb_Pa_not_secret)
        (Pb_Pa_Ba_not_secret)
        (Pb_Pa_Ba_secret)
        (Pb_Pa_Bb_not_secret)
        (Pb_Pa_Bb_secret)
        (Pb_Pa_Bc_not_secret)
        (Pb_Pa_Bc_secret)
        (Pb_Pa_Pa_not_secret)
        (Pb_Pa_Pa_secret)
        (Pb_Pa_Pb_not_secret)
        (Pb_Pa_Pb_secret)
        (Pb_Pa_Pc_not_secret)
        (Pb_Pa_Pc_secret)
        (Pb_Pa_secret)
        (Pb_Pb_not_secret)
        (Pb_Pb_Ba_not_secret)
        (Pb_Pb_Ba_secret)
        (Pb_Pb_Bb_not_secret)
        (Pb_Pb_Bb_secret)
        (Pb_Pb_Bc_not_secret)
        (Pb_Pb_Bc_secret)
        (Pb_Pb_Pa_not_secret)
        (Pb_Pb_Pa_secret)
        (Pb_Pb_Pb_not_secret)
        (Pb_Pb_Pb_secret)
        (Pb_Pb_Pc_not_secret)
        (Pb_Pb_Pc_secret)
        (Pb_Pb_secret)
        (Pb_Pc_not_secret)
        (Pb_Pc_Ba_not_secret)
        (Pb_Pc_Ba_secret)
        (Pb_Pc_Bb_not_secret)
        (Pb_Pc_Bb_secret)
        (Pb_Pc_Bc_not_secret)
        (Pb_Pc_Bc_secret)
        (Pb_Pc_Pa_not_secret)
        (Pb_Pc_Pa_secret)
        (Pb_Pc_Pb_not_secret)
        (Pb_Pc_Pb_secret)
        (Pb_Pc_Pc_not_secret)
        (Pb_Pc_Pc_secret)
        (Pb_Pc_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_Ba_not_secret)
        (Pc_Ba_Ba_not_secret)
        (Pc_Ba_Ba_secret)
        (Pc_Ba_Bb_not_secret)
        (Pc_Ba_Bb_secret)
        (Pc_Ba_Bc_not_secret)
        (Pc_Ba_Bc_secret)
        (Pc_Ba_Pa_not_secret)
        (Pc_Ba_Pa_secret)
        (Pc_Ba_Pb_not_secret)
        (Pc_Ba_Pb_secret)
        (Pc_Ba_Pc_not_secret)
        (Pc_Ba_Pc_secret)
        (Pc_Ba_secret)
        (Pc_Bb_not_secret)
        (Pc_Bb_Ba_not_secret)
        (Pc_Bb_Ba_secret)
        (Pc_Bb_Bb_not_secret)
        (Pc_Bb_Bb_secret)
        (Pc_Bb_Bc_not_secret)
        (Pc_Bb_Bc_secret)
        (Pc_Bb_Pa_not_secret)
        (Pc_Bb_Pa_secret)
        (Pc_Bb_Pb_not_secret)
        (Pc_Bb_Pb_secret)
        (Pc_Bb_Pc_not_secret)
        (Pc_Bb_Pc_secret)
        (Pc_Bb_secret)
        (Pc_Bc_not_secret)
        (Pc_Bc_Ba_not_secret)
        (Pc_Bc_Ba_secret)
        (Pc_Bc_Bb_not_secret)
        (Pc_Bc_Bb_secret)
        (Pc_Bc_Bc_not_secret)
        (Pc_Bc_Bc_secret)
        (Pc_Bc_Pa_not_secret)
        (Pc_Bc_Pa_secret)
        (Pc_Bc_Pb_not_secret)
        (Pc_Bc_Pb_secret)
        (Pc_Bc_Pc_not_secret)
        (Pc_Bc_Pc_secret)
        (Pc_Bc_secret)
        (Pc_Pa_not_secret)
        (Pc_Pa_Ba_not_secret)
        (Pc_Pa_Ba_secret)
        (Pc_Pa_Bb_not_secret)
        (Pc_Pa_Bb_secret)
        (Pc_Pa_Bc_not_secret)
        (Pc_Pa_Bc_secret)
        (Pc_Pa_Pa_not_secret)
        (Pc_Pa_Pa_secret)
        (Pc_Pa_Pb_not_secret)
        (Pc_Pa_Pb_secret)
        (Pc_Pa_Pc_not_secret)
        (Pc_Pa_Pc_secret)
        (Pc_Pa_secret)
        (Pc_Pb_not_secret)
        (Pc_Pb_Ba_not_secret)
        (Pc_Pb_Ba_secret)
        (Pc_Pb_Bb_not_secret)
        (Pc_Pb_Bb_secret)
        (Pc_Pb_Bc_not_secret)
        (Pc_Pb_Bc_secret)
        (Pc_Pb_Pa_not_secret)
        (Pc_Pb_Pa_secret)
        (Pc_Pb_Pb_not_secret)
        (Pc_Pb_Pb_secret)
        (Pc_Pb_Pc_not_secret)
        (Pc_Pb_Pc_secret)
        (Pc_Pb_secret)
        (Pc_Pc_not_secret)
        (Pc_Pc_Ba_not_secret)
        (Pc_Pc_Ba_secret)
        (Pc_Pc_Bb_not_secret)
        (Pc_Pc_Bb_secret)
        (Pc_Pc_Bc_not_secret)
        (Pc_Pc_Bc_secret)
        (Pc_Pc_Pa_not_secret)
        (Pc_Pc_Pa_secret)
        (Pc_Pc_Pb_not_secret)
        (Pc_Pc_Pb_secret)
        (Pc_Pc_Pc_not_secret)
        (Pc_Pc_Pc_secret)
        (Pc_Pc_secret)
        (Pc_secret)
        (at_l1)
        (at_l2)
        (at_l3)
        (at_l4)
        (secret)
        (succ_l1_l1)
        (succ_l1_l2)
        (succ_l1_l3)
        (succ_l1_l4)
        (succ_l2_l1)
        (succ_l2_l2)
        (succ_l2_l3)
        (succ_l2_l4)
        (succ_l3_l1)
        (succ_l3_l2)
        (succ_l3_l3)
        (succ_l3_l4)
        (succ_l4_l1)
        (succ_l4_l2)
        (succ_l4_l3)
        (succ_l4_l4)
    )

    (:action left_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #35501: origin
                    (not_at_l1)

                    ; #43869: origin
                    (at_l1)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l1))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l1))))

    (:action left_l1_l2
        :precondition (and (at_l2)
                           (succ_l1_l2))
        :effect (and
                    ; #35501: origin
                    (not_at_l2)

                    ; #43869: origin
                    (at_l1)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l1))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #35501: origin
                    (not_at_l3)

                    ; #43869: origin
                    (at_l1)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l1))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l3))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #35501: origin
                    (not_at_l4)

                    ; #43869: origin
                    (at_l1)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l1))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l1))
        :effect (and
                    ; #35501: origin
                    (not_at_l1)

                    ; #43869: origin
                    (at_l2)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l2))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l1))))

    (:action left_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #35501: origin
                    (not_at_l2)

                    ; #43869: origin
                    (at_l2)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l2))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (at_l3)
                           (succ_l2_l3))
        :effect (and
                    ; #35501: origin
                    (not_at_l3)

                    ; #43869: origin
                    (at_l2)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l2))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l4))
        :effect (and
                    ; #35501: origin
                    (not_at_l4)

                    ; #43869: origin
                    (at_l2)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l2))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (at_l1)
                           (succ_l3_l1))
        :effect (and
                    ; #35501: origin
                    (not_at_l1)

                    ; #43869: origin
                    (at_l3)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l3))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l1))))

    (:action left_l3_l2
        :precondition (and (at_l2)
                           (succ_l3_l2))
        :effect (and
                    ; #35501: origin
                    (not_at_l2)

                    ; #43869: origin
                    (at_l3)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l3))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l2))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #35501: origin
                    (not_at_l3)

                    ; #43869: origin
                    (at_l3)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l3))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l3))))

    (:action left_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l4))
        :effect (and
                    ; #35501: origin
                    (not_at_l4)

                    ; #43869: origin
                    (at_l3)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l3))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l4))))

    (:action left_l4_l1
        :precondition (and (at_l1)
                           (succ_l4_l1))
        :effect (and
                    ; #35501: origin
                    (not_at_l1)

                    ; #43869: origin
                    (at_l4)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l4))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l1))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #35501: origin
                    (not_at_l2)

                    ; #43869: origin
                    (at_l4)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l4))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (at_l3)
                           (succ_l4_l3))
        :effect (and
                    ; #35501: origin
                    (not_at_l3)

                    ; #43869: origin
                    (at_l4)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l4))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #35501: origin
                    (not_at_l4)

                    ; #43869: origin
                    (at_l4)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l4))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #35501: origin
                    (not_at_l1)

                    ; #43869: origin
                    (at_l1)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l1))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #35501: origin
                    (not_at_l1)

                    ; #43869: origin
                    (at_l2)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l2))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l1))))

    (:action right_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l1))
        :effect (and
                    ; #35501: origin
                    (not_at_l1)

                    ; #43869: origin
                    (at_l3)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l3))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l1))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #35501: origin
                    (not_at_l1)

                    ; #43869: origin
                    (at_l4)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l4))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l1))))

    (:action right_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l2))
        :effect (and
                    ; #35501: origin
                    (not_at_l2)

                    ; #43869: origin
                    (at_l1)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l1))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #35501: origin
                    (not_at_l2)

                    ; #43869: origin
                    (at_l2)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l2))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (at_l2)
                           (succ_l2_l3))
        :effect (and
                    ; #35501: origin
                    (not_at_l2)

                    ; #43869: origin
                    (at_l3)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l3))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l2))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #35501: origin
                    (not_at_l2)

                    ; #43869: origin
                    (at_l4)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l4))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (at_l3)
                           (succ_l3_l1))
        :effect (and
                    ; #35501: origin
                    (not_at_l3)

                    ; #43869: origin
                    (at_l1)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l1))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l3))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #35501: origin
                    (not_at_l3)

                    ; #43869: origin
                    (at_l2)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l2))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #35501: origin
                    (not_at_l3)

                    ; #43869: origin
                    (at_l3)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l3))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #35501: origin
                    (not_at_l3)

                    ; #43869: origin
                    (at_l4)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l4))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #35501: origin
                    (not_at_l4)

                    ; #43869: origin
                    (at_l1)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l1))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l4))
        :effect (and
                    ; #35501: origin
                    (not_at_l4)

                    ; #43869: origin
                    (at_l2)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l2))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #35501: origin
                    (not_at_l4)

                    ; #43869: origin
                    (at_l3)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l3))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l4))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #35501: origin
                    (not_at_l4)

                    ; #43869: origin
                    (at_l4)

                    ; #35501: <==negation-removal== 43869 (pos)
                    (not (not_at_l4))

                    ; #43869: <==negation-removal== 35501 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #10133: <==commonly_known== 32109 (neg)
                    (Pc_Bb_Ba_secret)

                    ; #10440: <==closure== 47540 (pos)
                    (Pb_Pa_secret)

                    ; #10557: <==commonly_known== 58030 (pos)
                    (Bb_Pc_Ba_secret)

                    ; #12747: <==closure== 55182 (pos)
                    (Pa_secret)

                    ; #16772: <==commonly_known== 41854 (neg)
                    (Pa_Bc_Ba_secret)

                    ; #16801: <==closure== 42625 (pos)
                    (Ba_Pc_Pa_secret)

                    ; #17476: <==closure== 54748 (pos)
                    (Pc_Bb_Pa_secret)

                    ; #22690: <==commonly_known== 87021 (pos)
                    (Bb_Bc_Ba_secret)

                    ; #24154: <==closure== 52886 (pos)
                    (Pa_Pb_Pa_secret)

                    ; #24893: <==closure== 42625 (pos)
                    (Pa_Bc_Pa_secret)

                    ; #29640: <==closure== 42625 (pos)
                    (Ba_Bc_Pa_secret)

                    ; #32261: <==closure== 52886 (pos)
                    (Ba_Bb_Pa_secret)

                    ; #34388: <==closure== 22690 (pos)
                    (Pb_Bc_Pa_secret)

                    ; #42625: <==commonly_known== 87021 (pos)
                    (Ba_Bc_Ba_secret)

                    ; #47492: <==closure== 52886 (pos)
                    (Pa_Bb_Pa_secret)

                    ; #47540: <==commonly_known== 55182 (pos)
                    (Bb_Ba_secret)

                    ; #48850: <==closure== 54748 (pos)
                    (Pc_Pb_Ba_secret)

                    ; #49935: <==closure== 54748 (pos)
                    (Bc_Pb_Pa_secret)

                    ; #50431: <==closure== 22690 (pos)
                    (Bb_Bc_Pa_secret)

                    ; #52886: <==commonly_known== 47540 (pos)
                    (Ba_Bb_Ba_secret)

                    ; #54748: <==commonly_known== 47540 (pos)
                    (Bc_Bb_Ba_secret)

                    ; #55182: origin
                    (Ba_secret)

                    ; #55732: <==commonly_known== 32109 (neg)
                    (Pa_Bb_Ba_secret)

                    ; #57097: <==commonly_known== 41854 (neg)
                    (Pb_Bc_Ba_secret)

                    ; #58030: <==commonly_known== 90982 (neg)
                    (Pc_Ba_secret)

                    ; #58709: <==commonly_known== 58758 (pos)
                    (Bc_Pb_Ba_secret)

                    ; #58758: <==commonly_known== 90982 (neg)
                    (Pb_Ba_secret)

                    ; #70875: <==closure== 54748 (pos)
                    (Pc_Pb_Pa_secret)

                    ; #73197: <==closure== 42625 (pos)
                    (Pa_Pc_Ba_secret)

                    ; #79014: <==commonly_known== 58030 (pos)
                    (Ba_Pc_Ba_secret)

                    ; #79193: <==closure== 54748 (pos)
                    (Bc_Bb_Pa_secret)

                    ; #79910: <==closure== 42625 (pos)
                    (Pa_Pc_Pa_secret)

                    ; #81716: <==closure== 87021 (pos)
                    (Bc_Pa_secret)

                    ; #82557: <==closure== 87021 (pos)
                    (Pc_Pa_secret)

                    ; #83568: <==closure== 52886 (pos)
                    (Pa_Pb_Ba_secret)

                    ; #84330: <==closure== 22690 (pos)
                    (Pb_Pc_Pa_secret)

                    ; #84585: <==closure== 22690 (pos)
                    (Pb_Pc_Ba_secret)

                    ; #85392: <==closure== 52886 (pos)
                    (Ba_Pb_Pa_secret)

                    ; #86104: <==commonly_known== 58758 (pos)
                    (Ba_Pb_Ba_secret)

                    ; #86752: <==closure== 47540 (pos)
                    (Bb_Pa_secret)

                    ; #87021: <==commonly_known== 55182 (pos)
                    (Bc_Ba_secret)

                    ; #91146: <==closure== 22690 (pos)
                    (Bb_Pc_Pa_secret)

                    ; #15133: <==negation-removal== 58758 (pos)
                    (not (Bb_Pa_not_secret))

                    ; #17345: <==unclosure== 25785 (neg)
                    (not (Pa_Bb_Ba_not_secret))

                    ; #18156: <==unclosure== 38838 (neg)
                    (not (Pb_Pc_Ba_not_secret))

                    ; #18443: <==negation-removal== 86104 (pos)
                    (not (Pa_Bb_Pa_not_secret))

                    ; #19874: <==unclosure== 50565 (neg)
                    (not (Pa_Bc_Ba_not_secret))

                    ; #25006: <==unclosure== 38838 (neg)
                    (not (Pb_Bc_Ba_not_secret))

                    ; #25785: <==negation-removal== 52886 (pos)
                    (not (Pa_Pb_Pa_not_secret))

                    ; #25820: <==unclosure== 32109 (neg)
                    (not (Pb_Ba_not_secret))

                    ; #26930: <==unclosure== 50565 (neg)
                    (not (Ba_Bc_Ba_not_secret))

                    ; #32109: <==negation-removal== 47540 (pos)
                    (not (Pb_Pa_not_secret))

                    ; #32371: <==negation-removal== 79014 (pos)
                    (not (Pa_Bc_Pa_not_secret))

                    ; #35265: <==unclosure== 38838 (neg)
                    (not (Bb_Bc_Ba_not_secret))

                    ; #36001: <==unclosure== 90982 (neg)
                    (not (Ba_not_secret))

                    ; #36221: <==unclosure== 79975 (neg)
                    (not (Pc_Pb_Ba_not_secret))

                    ; #38838: <==negation-removal== 22690 (pos)
                    (not (Pb_Pc_Pa_not_secret))

                    ; #39922: <==unclosure== 79975 (neg)
                    (not (Pc_Bb_Ba_not_secret))

                    ; #41854: <==negation-removal== 87021 (pos)
                    (not (Pc_Pa_not_secret))

                    ; #42025: <==unclosure== 50565 (neg)
                    (not (Ba_Pc_Ba_not_secret))

                    ; #43655: <==unclosure== 38838 (neg)
                    (not (Bb_Bc_Pa_not_secret))

                    ; #46071: <==unclosure== 32109 (neg)
                    (not (Bb_Ba_not_secret))

                    ; #50565: <==negation-removal== 42625 (pos)
                    (not (Pa_Pc_Pa_not_secret))

                    ; #56586: <==unclosure== 25785 (neg)
                    (not (Ba_Bb_Ba_not_secret))

                    ; #57467: <==negation-removal== 10133 (pos)
                    (not (Bc_Pb_Pa_not_secret))

                    ; #58194: <==negation-removal== 58709 (pos)
                    (not (Pc_Bb_Pa_not_secret))

                    ; #63580: <==negation-removal== 16772 (pos)
                    (not (Ba_Pc_Pa_not_secret))

                    ; #64517: <==unclosure== 50565 (neg)
                    (not (Pa_Pc_Ba_not_secret))

                    ; #64754: <==unclosure== 38838 (neg)
                    (not (Bb_Pc_Ba_not_secret))

                    ; #64949: <==negation-removal== 10557 (pos)
                    (not (Pb_Bc_Pa_not_secret))

                    ; #66290: <==unclosure== 79975 (neg)
                    (not (Bc_Pb_Ba_not_secret))

                    ; #71504: <==unclosure== 25785 (neg)
                    (not (Ba_Pb_Ba_not_secret))

                    ; #71589: <==negation-removal== 55732 (pos)
                    (not (Ba_Pb_Pa_not_secret))

                    ; #71648: <==negation-removal== 57097 (pos)
                    (not (Bb_Pc_Pa_not_secret))

                    ; #77979: <==unclosure== 50565 (neg)
                    (not (Ba_Bc_Pa_not_secret))

                    ; #79975: <==negation-removal== 54748 (pos)
                    (not (Pc_Pb_Pa_not_secret))

                    ; #81741: <==unclosure== 25785 (neg)
                    (not (Pa_Pb_Ba_not_secret))

                    ; #81866: <==unclosure== 79975 (neg)
                    (not (Bc_Bb_Ba_not_secret))

                    ; #81981: <==negation-removal== 58030 (pos)
                    (not (Bc_Pa_not_secret))

                    ; #86617: <==unclosure== 79975 (neg)
                    (not (Bc_Bb_Pa_not_secret))

                    ; #87761: <==unclosure== 41854 (neg)
                    (not (Bc_Ba_not_secret))

                    ; #89562: <==unclosure== 41854 (neg)
                    (not (Pc_Ba_not_secret))

                    ; #90742: <==unclosure== 25785 (neg)
                    (not (Ba_Bb_Pa_not_secret))

                    ; #90982: <==negation-removal== 55182 (pos)
                    (not (Pa_not_secret))))

    (:action shout-1
        :precondition (and (at_l1)
                           (Ba_secret))
        :effect (and
                    ; #11844: <==closure== 72536 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #15968: <==closure== 70150 (pos)
                    (Bc_Pb_secret)

                    ; #16080: <==commonly_known== 70150 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #16282: <==commonly_known== 80775 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #16580: <==closure== 16080 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #17526: <==closure== 63218 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #18147: <==commonly_known== 53350 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #19771: <==closure== 63218 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #22686: <==commonly_known== 83578 (pos)
                    (Ba_Bb_secret)

                    ; #31027: <==commonly_known== 22686 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #35562: <==commonly_known== 20497 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #37748: <==closure== 22686 (pos)
                    (Pa_Pb_secret)

                    ; #38261: <==closure== 63218 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #42640: <==closure== 31027 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #44413: <==commonly_known== 53350 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #45401: <==closure== 70150 (pos)
                    (Pc_Pb_secret)

                    ; #47239: <==closure== 83578 (pos)
                    (Pb_secret)

                    ; #48717: <==closure== 22686 (pos)
                    (Ba_Pb_secret)

                    ; #49948: <==closure== 72536 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #51956: <==closure== 72536 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #53350: <==commonly_known== 25360 (neg)
                    (Pa_Bb_secret)

                    ; #57625: <==closure== 63218 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #58500: <==commonly_known== 84652 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #58832: <==closure== 31027 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #58993: <==closure== 31027 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #61079: <==closure== 16080 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #63218: <==commonly_known== 22686 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #63639: <==closure== 72536 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #64478: <==closure== 31027 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #67271: <==closure== 63218 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #68760: <==closure== 72536 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #69472: <==closure== 31027 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #70150: <==commonly_known== 83578 (pos)
                    (Bc_Bb_secret)

                    ; #71847: <==closure== 16080 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #72536: <==commonly_known== 70150 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #74436: <==closure== 16080 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #77502: <==closure== 16080 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #80775: <==commonly_known== 25360 (neg)
                    (Pc_Bb_secret)

                    ; #82766: <==commonly_known== 20497 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #83578: origin
                    (Bb_secret)

                    ; #84523: <==commonly_known== 80775 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #87286: <==commonly_known== 84652 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #10263: <==negation-removal== 58500 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #11514: <==negation-removal== 16080 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #15433: <==unclosure== 32511 (neg)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #20497: <==negation-removal== 22686 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #21804: <==unclosure== 20497 (neg)
                    (not (Pa_Bb_not_secret))

                    ; #25360: <==negation-removal== 83578 (pos)
                    (not (Pb_not_secret))

                    ; #25628: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #26937: <==negation-removal== 87286 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #27176: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #29479: <==unclosure== 85775 (neg)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #32511: <==negation-removal== 31027 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #32727: <==unclosure== 78758 (neg)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #33865: <==unclosure== 85775 (neg)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #34249: <==negation-removal== 80775 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #38335: <==negation-removal== 35562 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #39748: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #41562: <==unclosure== 78758 (neg)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #43765: <==unclosure== 84652 (neg)
                    (not (Bc_Bb_not_secret))

                    ; #54197: <==negation-removal== 18147 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #55740: <==unclosure== 85775 (neg)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #56214: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #63173: <==negation-removal== 44413 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #64194: <==unclosure== 11514 (neg)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #64824: <==unclosure== 32511 (neg)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #66556: <==negation-removal== 53350 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #67016: <==unclosure== 32511 (neg)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #67657: <==unclosure== 25360 (neg)
                    (not (Bb_not_secret))

                    ; #68950: <==unclosure== 11514 (neg)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #70605: <==negation-removal== 84523 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #70852: <==unclosure== 11514 (neg)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #71046: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #73110: <==negation-removal== 16282 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #78758: <==negation-removal== 72536 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #79295: <==unclosure== 78758 (neg)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #81750: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #81997: <==unclosure== 20497 (neg)
                    (not (Ba_Bb_not_secret))

                    ; #84652: <==negation-removal== 70150 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #85775: <==negation-removal== 63218 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #86140: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #86899: <==negation-removal== 82766 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #87875: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #92184: <==unclosure== 84652 (neg)
                    (not (Pc_Bb_not_secret))))

    (:action shout-2
        :precondition (and (at_l2)
                           (Ba_secret))
        :effect (and
                    ; #10373: <==commonly_known== 25819 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #11235: <==closure== 76804 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #11844: <==closure== 72536 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #12735: <==closure== 82291 (pos)
                    (Bb_Pc_secret)

                    ; #14643: <==closure== 76804 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #15527: <==closure== 10373 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #15968: <==closure== 70150 (pos)
                    (Bc_Pb_secret)

                    ; #16080: <==commonly_known== 70150 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #16282: <==commonly_known== 80775 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #16580: <==closure== 16080 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #17526: <==closure== 63218 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #18147: <==commonly_known== 53350 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #19489: origin
                    (Bc_secret)

                    ; #19771: <==closure== 63218 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #19938: <==closure== 67546 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #21875: <==commonly_known== 57281 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #22686: <==commonly_known== 83578 (pos)
                    (Ba_Bb_secret)

                    ; #25819: <==commonly_known== 19489 (pos)
                    (Ba_Bc_secret)

                    ; #25825: <==closure== 19489 (pos)
                    (Pc_secret)

                    ; #26451: <==closure== 67546 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #27541: <==commonly_known== 80308 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #31027: <==commonly_known== 22686 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #32110: <==closure== 10373 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #35562: <==commonly_known== 20497 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #35715: <==closure== 76804 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #35829: <==closure== 67546 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #37309: <==closure== 10373 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #37539: <==commonly_known== 80308 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #37748: <==closure== 22686 (pos)
                    (Pa_Pb_secret)

                    ; #38261: <==closure== 63218 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #42247: <==closure== 82801 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #42640: <==closure== 31027 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #44413: <==commonly_known== 53350 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #45401: <==closure== 70150 (pos)
                    (Pc_Pb_secret)

                    ; #45843: <==closure== 82801 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #47239: <==closure== 83578 (pos)
                    (Pb_secret)

                    ; #48717: <==closure== 22686 (pos)
                    (Ba_Pb_secret)

                    ; #49948: <==closure== 72536 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #51956: <==closure== 72536 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #53350: <==commonly_known== 25360 (neg)
                    (Pa_Bb_secret)

                    ; #54650: <==closure== 10373 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #55083: <==commonly_known== 78610 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #57078: <==closure== 25819 (pos)
                    (Pa_Pc_secret)

                    ; #57281: <==commonly_known== 75512 (neg)
                    (Pa_Bc_secret)

                    ; #57625: <==closure== 63218 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #58500: <==commonly_known== 84652 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #58832: <==closure== 31027 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #58993: <==closure== 31027 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #61079: <==closure== 16080 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #61688: <==closure== 67546 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #63218: <==commonly_known== 22686 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #63639: <==closure== 72536 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #63726: <==closure== 10373 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #64478: <==closure== 31027 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #64857: <==commonly_known== 78610 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #64995: <==commonly_known== 12294 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #65579: <==commonly_known== 12294 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #67271: <==closure== 63218 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #67546: <==commonly_known== 82291 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #68760: <==closure== 72536 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #68961: <==closure== 76804 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #69097: <==closure== 82291 (pos)
                    (Pb_Pc_secret)

                    ; #69119: <==closure== 82801 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #69472: <==closure== 31027 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #70150: <==commonly_known== 83578 (pos)
                    (Bc_Bb_secret)

                    ; #71847: <==closure== 16080 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #72536: <==commonly_known== 70150 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #73645: <==closure== 82801 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #73909: <==closure== 76804 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #74436: <==closure== 16080 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #75816: <==closure== 25819 (pos)
                    (Ba_Pc_secret)

                    ; #76804: <==commonly_known== 82291 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #77502: <==closure== 16080 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #78610: <==commonly_known== 75512 (neg)
                    (Pb_Bc_secret)

                    ; #80775: <==commonly_known== 25360 (neg)
                    (Pc_Bb_secret)

                    ; #82291: <==commonly_known== 19489 (pos)
                    (Bb_Bc_secret)

                    ; #82766: <==commonly_known== 20497 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #82801: <==commonly_known== 25819 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #83578: origin
                    (Bb_secret)

                    ; #84229: <==closure== 82801 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #84523: <==commonly_known== 80775 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #87286: <==commonly_known== 84652 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #89302: <==commonly_known== 57281 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #91431: <==closure== 67546 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #10263: <==negation-removal== 58500 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #11514: <==negation-removal== 16080 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #12294: <==negation-removal== 25819 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #12305: <==negation-removal== 27541 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #13087: <==unclosure== 23121 (neg)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #14169: <==negation-removal== 64995 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #15433: <==unclosure== 32511 (neg)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #17749: <==unclosure== 12294 (neg)
                    (not (Ba_Bc_not_secret))

                    ; #17826: <==unclosure== 80308 (neg)
                    (not (Pb_Bc_not_secret))

                    ; #18509: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #19603: <==unclosure== 56698 (neg)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #20497: <==negation-removal== 22686 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #21804: <==unclosure== 20497 (neg)
                    (not (Pa_Bb_not_secret))

                    ; #22437: <==unclosure== 23121 (neg)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #23121: <==negation-removal== 67546 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #25082: <==unclosure== 63669 (neg)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #25360: <==negation-removal== 83578 (pos)
                    (not (Pb_not_secret))

                    ; #25628: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #25780: <==unclosure== 53583 (neg)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #26937: <==negation-removal== 87286 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #27176: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #29479: <==unclosure== 85775 (neg)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #32511: <==negation-removal== 31027 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #32727: <==unclosure== 78758 (neg)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #33865: <==unclosure== 85775 (neg)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #33945: <==unclosure== 56698 (neg)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #33991: <==negation-removal== 37539 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #34249: <==negation-removal== 80775 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #37089: <==negation-removal== 57281 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #38335: <==negation-removal== 35562 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #39257: <==negation-removal== 21875 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #39748: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #40253: <==negation-removal== 89302 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #40805: <==negation-removal== 64857 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #41113: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #41562: <==unclosure== 78758 (neg)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #42651: <==negation-removal== 55083 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #43765: <==unclosure== 84652 (neg)
                    (not (Bc_Bb_not_secret))

                    ; #50190: <==unclosure== 63669 (neg)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #52226: <==unclosure== 63669 (neg)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #53583: <==negation-removal== 10373 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #54197: <==negation-removal== 18147 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #54966: <==unclosure== 23121 (neg)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #55740: <==unclosure== 85775 (neg)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #56214: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #56698: <==negation-removal== 76804 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #57806: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #61154: <==negation-removal== 78610 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #63173: <==negation-removal== 44413 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #63669: <==negation-removal== 82801 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #64194: <==unclosure== 11514 (neg)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #64824: <==unclosure== 32511 (neg)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #66556: <==negation-removal== 53350 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #67016: <==unclosure== 32511 (neg)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #67657: <==unclosure== 25360 (neg)
                    (not (Bb_not_secret))

                    ; #68950: <==unclosure== 11514 (neg)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #70605: <==negation-removal== 84523 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #70852: <==unclosure== 11514 (neg)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #71046: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #71552: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #73045: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #73110: <==negation-removal== 16282 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #73666: <==unclosure== 56698 (neg)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #74285: <==unclosure== 12294 (neg)
                    (not (Pa_Bc_not_secret))

                    ; #74285: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #75512: <==negation-removal== 19489 (pos)
                    (not (Pc_not_secret))

                    ; #77020: <==unclosure== 53583 (neg)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #77788: <==unclosure== 75512 (neg)
                    (not (Bc_not_secret))

                    ; #78758: <==negation-removal== 72536 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #78860: <==unclosure== 53583 (neg)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #79295: <==unclosure== 78758 (neg)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #79686: <==unclosure== 56698 (neg)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #80308: <==negation-removal== 82291 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #81750: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #81997: <==unclosure== 20497 (neg)
                    (not (Ba_Bb_not_secret))

                    ; #83089: <==unclosure== 80308 (neg)
                    (not (Bb_Bc_not_secret))

                    ; #84652: <==negation-removal== 70150 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #85775: <==negation-removal== 63218 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #86140: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #86899: <==negation-removal== 82766 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #87875: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #88089: <==negation-removal== 65579 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #89542: <==unclosure== 56698 (neg)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #92184: <==unclosure== 84652 (neg)
                    (not (Pc_Bb_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Ba_secret))
        :effect (and
                    ; #10373: <==commonly_known== 25819 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #11235: <==closure== 76804 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #11844: <==closure== 72536 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #12735: <==closure== 82291 (pos)
                    (Bb_Pc_secret)

                    ; #14643: <==closure== 76804 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #15527: <==closure== 10373 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #15968: <==closure== 70150 (pos)
                    (Bc_Pb_secret)

                    ; #16080: <==commonly_known== 70150 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #16282: <==commonly_known== 80775 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #16580: <==closure== 16080 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #17526: <==closure== 63218 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #18147: <==commonly_known== 53350 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #19489: origin
                    (Bc_secret)

                    ; #19771: <==closure== 63218 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #19938: <==closure== 67546 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #21875: <==commonly_known== 57281 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #22686: <==commonly_known== 83578 (pos)
                    (Ba_Bb_secret)

                    ; #25819: <==commonly_known== 19489 (pos)
                    (Ba_Bc_secret)

                    ; #25825: <==closure== 19489 (pos)
                    (Pc_secret)

                    ; #26451: <==closure== 67546 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #27541: <==commonly_known== 80308 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #31027: <==commonly_known== 22686 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #32110: <==closure== 10373 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #35562: <==commonly_known== 20497 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #35715: <==closure== 76804 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #35829: <==closure== 67546 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #37309: <==closure== 10373 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #37539: <==commonly_known== 80308 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #37748: <==closure== 22686 (pos)
                    (Pa_Pb_secret)

                    ; #38261: <==closure== 63218 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #42247: <==closure== 82801 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #42640: <==closure== 31027 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #44413: <==commonly_known== 53350 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #45401: <==closure== 70150 (pos)
                    (Pc_Pb_secret)

                    ; #45843: <==closure== 82801 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #47239: <==closure== 83578 (pos)
                    (Pb_secret)

                    ; #48717: <==closure== 22686 (pos)
                    (Ba_Pb_secret)

                    ; #49948: <==closure== 72536 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #51956: <==closure== 72536 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #53350: <==commonly_known== 25360 (neg)
                    (Pa_Bb_secret)

                    ; #54650: <==closure== 10373 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #55083: <==commonly_known== 78610 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #57078: <==closure== 25819 (pos)
                    (Pa_Pc_secret)

                    ; #57281: <==commonly_known== 75512 (neg)
                    (Pa_Bc_secret)

                    ; #57625: <==closure== 63218 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #58500: <==commonly_known== 84652 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #58832: <==closure== 31027 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #58993: <==closure== 31027 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #61079: <==closure== 16080 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #61688: <==closure== 67546 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #63218: <==commonly_known== 22686 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #63639: <==closure== 72536 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #63726: <==closure== 10373 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #64478: <==closure== 31027 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #64857: <==commonly_known== 78610 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #64995: <==commonly_known== 12294 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #65579: <==commonly_known== 12294 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #67271: <==closure== 63218 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #67546: <==commonly_known== 82291 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #68760: <==closure== 72536 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #68961: <==closure== 76804 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #69097: <==closure== 82291 (pos)
                    (Pb_Pc_secret)

                    ; #69119: <==closure== 82801 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #69472: <==closure== 31027 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #70150: <==commonly_known== 83578 (pos)
                    (Bc_Bb_secret)

                    ; #71847: <==closure== 16080 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #72536: <==commonly_known== 70150 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #73645: <==closure== 82801 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #73909: <==closure== 76804 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #74436: <==closure== 16080 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #75816: <==closure== 25819 (pos)
                    (Ba_Pc_secret)

                    ; #76804: <==commonly_known== 82291 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #77502: <==closure== 16080 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #78610: <==commonly_known== 75512 (neg)
                    (Pb_Bc_secret)

                    ; #80775: <==commonly_known== 25360 (neg)
                    (Pc_Bb_secret)

                    ; #82291: <==commonly_known== 19489 (pos)
                    (Bb_Bc_secret)

                    ; #82766: <==commonly_known== 20497 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #82801: <==commonly_known== 25819 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #83578: origin
                    (Bb_secret)

                    ; #84229: <==closure== 82801 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #84523: <==commonly_known== 80775 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #87286: <==commonly_known== 84652 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #89302: <==commonly_known== 57281 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #91431: <==closure== 67546 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #10263: <==negation-removal== 58500 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #11514: <==negation-removal== 16080 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #12294: <==negation-removal== 25819 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #12305: <==negation-removal== 27541 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #13087: <==unclosure== 23121 (neg)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #14169: <==negation-removal== 64995 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #15433: <==unclosure== 32511 (neg)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #17749: <==unclosure== 12294 (neg)
                    (not (Ba_Bc_not_secret))

                    ; #17826: <==unclosure== 80308 (neg)
                    (not (Pb_Bc_not_secret))

                    ; #18509: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #19603: <==unclosure== 56698 (neg)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #20497: <==negation-removal== 22686 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #21804: <==unclosure== 20497 (neg)
                    (not (Pa_Bb_not_secret))

                    ; #22437: <==unclosure== 23121 (neg)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #23121: <==negation-removal== 67546 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #25082: <==unclosure== 63669 (neg)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #25360: <==negation-removal== 83578 (pos)
                    (not (Pb_not_secret))

                    ; #25628: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #25780: <==unclosure== 53583 (neg)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #26937: <==negation-removal== 87286 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #27176: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #29479: <==unclosure== 85775 (neg)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #32511: <==negation-removal== 31027 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #32727: <==unclosure== 78758 (neg)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #33865: <==unclosure== 85775 (neg)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #33945: <==unclosure== 56698 (neg)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #33991: <==negation-removal== 37539 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #34249: <==negation-removal== 80775 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #37089: <==negation-removal== 57281 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #38335: <==negation-removal== 35562 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #39257: <==negation-removal== 21875 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #39748: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #40253: <==negation-removal== 89302 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #40805: <==negation-removal== 64857 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #41113: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #41562: <==unclosure== 78758 (neg)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #42651: <==negation-removal== 55083 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #43765: <==unclosure== 84652 (neg)
                    (not (Bc_Bb_not_secret))

                    ; #50190: <==unclosure== 63669 (neg)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #52226: <==unclosure== 63669 (neg)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #53583: <==negation-removal== 10373 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #54197: <==negation-removal== 18147 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #54966: <==unclosure== 23121 (neg)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #55740: <==unclosure== 85775 (neg)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #56214: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #56698: <==negation-removal== 76804 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #57806: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #61154: <==negation-removal== 78610 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #63173: <==negation-removal== 44413 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #63669: <==negation-removal== 82801 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #64194: <==unclosure== 11514 (neg)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #64824: <==unclosure== 32511 (neg)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #66556: <==negation-removal== 53350 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #67016: <==unclosure== 32511 (neg)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #67657: <==unclosure== 25360 (neg)
                    (not (Bb_not_secret))

                    ; #68950: <==unclosure== 11514 (neg)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #70605: <==negation-removal== 84523 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #70852: <==unclosure== 11514 (neg)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #71046: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #71552: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #73045: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #73110: <==negation-removal== 16282 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #73666: <==unclosure== 56698 (neg)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #74285: <==unclosure== 12294 (neg)
                    (not (Pa_Bc_not_secret))

                    ; #74285: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #75512: <==negation-removal== 19489 (pos)
                    (not (Pc_not_secret))

                    ; #77020: <==unclosure== 53583 (neg)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #77788: <==unclosure== 75512 (neg)
                    (not (Bc_not_secret))

                    ; #78758: <==negation-removal== 72536 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #78860: <==unclosure== 53583 (neg)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #79295: <==unclosure== 78758 (neg)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #79686: <==unclosure== 56698 (neg)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #80308: <==negation-removal== 82291 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #81750: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #81997: <==unclosure== 20497 (neg)
                    (not (Ba_Bb_not_secret))

                    ; #83089: <==unclosure== 80308 (neg)
                    (not (Bb_Bc_not_secret))

                    ; #84652: <==negation-removal== 70150 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #85775: <==negation-removal== 63218 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #86140: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #86899: <==negation-removal== 82766 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #87875: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #88089: <==negation-removal== 65579 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #89542: <==unclosure== 56698 (neg)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #92184: <==unclosure== 84652 (neg)
                    (not (Pc_Bb_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (at_l4))
        :effect (and
                    ; #10373: <==commonly_known== 25819 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #11235: <==closure== 76804 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #12735: <==closure== 82291 (pos)
                    (Bb_Pc_secret)

                    ; #14643: <==closure== 76804 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #15527: <==closure== 10373 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #19489: origin
                    (Bc_secret)

                    ; #19938: <==closure== 67546 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #21875: <==commonly_known== 57281 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #25819: <==commonly_known== 19489 (pos)
                    (Ba_Bc_secret)

                    ; #25825: <==closure== 19489 (pos)
                    (Pc_secret)

                    ; #26451: <==closure== 67546 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #27541: <==commonly_known== 80308 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #32110: <==closure== 10373 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #35715: <==closure== 76804 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #35829: <==closure== 67546 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #37309: <==closure== 10373 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #37539: <==commonly_known== 80308 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #42247: <==closure== 82801 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #45843: <==closure== 82801 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #54650: <==closure== 10373 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #55083: <==commonly_known== 78610 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #57078: <==closure== 25819 (pos)
                    (Pa_Pc_secret)

                    ; #57281: <==commonly_known== 75512 (neg)
                    (Pa_Bc_secret)

                    ; #61688: <==closure== 67546 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #63726: <==closure== 10373 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #64857: <==commonly_known== 78610 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #64995: <==commonly_known== 12294 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #65579: <==commonly_known== 12294 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #67546: <==commonly_known== 82291 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #68961: <==closure== 76804 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #69097: <==closure== 82291 (pos)
                    (Pb_Pc_secret)

                    ; #69119: <==closure== 82801 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #73645: <==closure== 82801 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #73909: <==closure== 76804 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #75816: <==closure== 25819 (pos)
                    (Ba_Pc_secret)

                    ; #76804: <==commonly_known== 82291 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #78610: <==commonly_known== 75512 (neg)
                    (Pb_Bc_secret)

                    ; #82291: <==commonly_known== 19489 (pos)
                    (Bb_Bc_secret)

                    ; #82801: <==commonly_known== 25819 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #84229: <==closure== 82801 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #89302: <==commonly_known== 57281 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #91431: <==closure== 67546 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #12294: <==negation-removal== 25819 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #12305: <==negation-removal== 27541 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #13087: <==unclosure== 23121 (neg)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #14169: <==negation-removal== 64995 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #17749: <==unclosure== 12294 (neg)
                    (not (Ba_Bc_not_secret))

                    ; #17826: <==unclosure== 80308 (neg)
                    (not (Pb_Bc_not_secret))

                    ; #18509: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #19603: <==unclosure== 56698 (neg)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #22437: <==unclosure== 23121 (neg)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #23121: <==negation-removal== 67546 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #25082: <==unclosure== 63669 (neg)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #25780: <==unclosure== 53583 (neg)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #33945: <==unclosure== 56698 (neg)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #33991: <==negation-removal== 37539 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #37089: <==negation-removal== 57281 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #39257: <==negation-removal== 21875 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #40253: <==negation-removal== 89302 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #40805: <==negation-removal== 64857 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #41113: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #42651: <==negation-removal== 55083 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #50190: <==unclosure== 63669 (neg)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #52226: <==unclosure== 63669 (neg)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #53583: <==negation-removal== 10373 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #54966: <==unclosure== 23121 (neg)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #56698: <==negation-removal== 76804 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #57806: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #61154: <==negation-removal== 78610 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #63669: <==negation-removal== 82801 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #71552: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #73045: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #73666: <==unclosure== 56698 (neg)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #74285: <==unclosure== 12294 (neg)
                    (not (Pa_Bc_not_secret))

                    ; #74285: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #75512: <==negation-removal== 19489 (pos)
                    (not (Pc_not_secret))

                    ; #77020: <==unclosure== 53583 (neg)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #77788: <==unclosure== 75512 (neg)
                    (not (Bc_not_secret))

                    ; #78860: <==unclosure== 53583 (neg)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #79686: <==unclosure== 56698 (neg)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #80308: <==negation-removal== 82291 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #83089: <==unclosure== 80308 (neg)
                    (not (Bb_Bc_not_secret))

                    ; #88089: <==negation-removal== 65579 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #89542: <==unclosure== 56698 (neg)
                    (not (Pa_Pb_Bc_not_secret))))

)