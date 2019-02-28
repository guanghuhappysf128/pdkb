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
        (Ba_secret)
        (Bb_not_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_secret)
        (Bd_not_secret)
        (Bd_secret)
        (Be_not_secret)
        (Be_secret)
        (Bf_not_secret)
        (Bf_secret)
        (Bg_not_secret)
        (Bg_secret)
        (Pa_not_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_secret)
        (Pd_not_secret)
        (Pd_secret)
        (Pe_not_secret)
        (Pe_secret)
        (Pf_not_secret)
        (Pf_secret)
        (Pg_not_secret)
        (Pg_secret)
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
                    ; #12747: <==closure== 55182 (pos)
                    (Pa_secret)

                    ; #55182: origin
                    (Ba_secret)

                    ; #36001: <==unclosure== 90982 (neg)
                    (not (Ba_not_secret))

                    ; #90982: <==negation-removal== 55182 (pos)
                    (not (Pa_not_secret))))

    (:action shout-1
        :precondition (and (at_l1)
                           (Ba_secret))
        :effect (and
                    ; #47239: <==closure== 83578 (pos)
                    (Pb_secret)

                    ; #60113: <==closure== 84048 (pos)
                    (Pf_secret)

                    ; #78511: origin
                    (Bd_secret)

                    ; #83578: origin
                    (Bb_secret)

                    ; #84048: origin
                    (Bf_secret)

                    ; #86703: <==closure== 78511 (pos)
                    (Pd_secret)

                    ; #21142: <==negation-removal== 84048 (pos)
                    (not (Pf_not_secret))

                    ; #22854: <==unclosure== 21142 (neg)
                    (not (Bf_not_secret))

                    ; #25360: <==negation-removal== 83578 (pos)
                    (not (Pb_not_secret))

                    ; #31493: <==unclosure== 33796 (neg)
                    (not (Bd_not_secret))

                    ; #33796: <==negation-removal== 78511 (pos)
                    (not (Pd_not_secret))

                    ; #67657: <==unclosure== 25360 (neg)
                    (not (Bb_not_secret))))

    (:action shout-2
        :precondition (and (at_l2)
                           (Ba_secret))
        :effect (and
                    ; #19489: origin
                    (Bc_secret)

                    ; #25825: <==closure== 19489 (pos)
                    (Pc_secret)

                    ; #27596: origin
                    (Be_secret)

                    ; #44241: origin
                    (Bg_secret)

                    ; #47239: <==closure== 83578 (pos)
                    (Pb_secret)

                    ; #55508: <==closure== 27596 (pos)
                    (Pe_secret)

                    ; #60113: <==closure== 84048 (pos)
                    (Pf_secret)

                    ; #78511: origin
                    (Bd_secret)

                    ; #83578: origin
                    (Bb_secret)

                    ; #84048: origin
                    (Bf_secret)

                    ; #84650: <==closure== 44241 (pos)
                    (Pg_secret)

                    ; #86703: <==closure== 78511 (pos)
                    (Pd_secret)

                    ; #21142: <==negation-removal== 84048 (pos)
                    (not (Pf_not_secret))

                    ; #22854: <==unclosure== 21142 (neg)
                    (not (Bf_not_secret))

                    ; #25084: <==negation-removal== 27596 (pos)
                    (not (Pe_not_secret))

                    ; #25360: <==negation-removal== 83578 (pos)
                    (not (Pb_not_secret))

                    ; #28598: <==unclosure== 25084 (neg)
                    (not (Be_not_secret))

                    ; #31493: <==unclosure== 33796 (neg)
                    (not (Bd_not_secret))

                    ; #33796: <==negation-removal== 78511 (pos)
                    (not (Pd_not_secret))

                    ; #38686: <==negation-removal== 44241 (pos)
                    (not (Pg_not_secret))

                    ; #62804: <==unclosure== 38686 (neg)
                    (not (Bg_not_secret))

                    ; #67657: <==unclosure== 25360 (neg)
                    (not (Bb_not_secret))

                    ; #75512: <==negation-removal== 19489 (pos)
                    (not (Pc_not_secret))

                    ; #77788: <==unclosure== 75512 (neg)
                    (not (Bc_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Ba_secret))
        :effect (and
                    ; #19489: origin
                    (Bc_secret)

                    ; #25825: <==closure== 19489 (pos)
                    (Pc_secret)

                    ; #27596: origin
                    (Be_secret)

                    ; #44241: origin
                    (Bg_secret)

                    ; #47239: <==closure== 83578 (pos)
                    (Pb_secret)

                    ; #55508: <==closure== 27596 (pos)
                    (Pe_secret)

                    ; #60113: <==closure== 84048 (pos)
                    (Pf_secret)

                    ; #78511: origin
                    (Bd_secret)

                    ; #83578: origin
                    (Bb_secret)

                    ; #84048: origin
                    (Bf_secret)

                    ; #84650: <==closure== 44241 (pos)
                    (Pg_secret)

                    ; #86703: <==closure== 78511 (pos)
                    (Pd_secret)

                    ; #21142: <==negation-removal== 84048 (pos)
                    (not (Pf_not_secret))

                    ; #22854: <==unclosure== 21142 (neg)
                    (not (Bf_not_secret))

                    ; #25084: <==negation-removal== 27596 (pos)
                    (not (Pe_not_secret))

                    ; #25360: <==negation-removal== 83578 (pos)
                    (not (Pb_not_secret))

                    ; #28598: <==unclosure== 25084 (neg)
                    (not (Be_not_secret))

                    ; #31493: <==unclosure== 33796 (neg)
                    (not (Bd_not_secret))

                    ; #33796: <==negation-removal== 78511 (pos)
                    (not (Pd_not_secret))

                    ; #38686: <==negation-removal== 44241 (pos)
                    (not (Pg_not_secret))

                    ; #62804: <==unclosure== 38686 (neg)
                    (not (Bg_not_secret))

                    ; #67657: <==unclosure== 25360 (neg)
                    (not (Bb_not_secret))

                    ; #75512: <==negation-removal== 19489 (pos)
                    (not (Pc_not_secret))

                    ; #77788: <==unclosure== 75512 (neg)
                    (not (Bc_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (at_l4))
        :effect (and
                    ; #19489: origin
                    (Bc_secret)

                    ; #25825: <==closure== 19489 (pos)
                    (Pc_secret)

                    ; #27596: origin
                    (Be_secret)

                    ; #44241: origin
                    (Bg_secret)

                    ; #55508: <==closure== 27596 (pos)
                    (Pe_secret)

                    ; #84650: <==closure== 44241 (pos)
                    (Pg_secret)

                    ; #25084: <==negation-removal== 27596 (pos)
                    (not (Pe_not_secret))

                    ; #28598: <==unclosure== 25084 (neg)
                    (not (Be_not_secret))

                    ; #38686: <==negation-removal== 44241 (pos)
                    (not (Pg_not_secret))

                    ; #62804: <==unclosure== 38686 (neg)
                    (not (Bg_not_secret))

                    ; #75512: <==negation-removal== 19489 (pos)
                    (not (Pc_not_secret))

                    ; #77788: <==unclosure== 75512 (neg)
                    (not (Bc_not_secret))))

)