(define (domain grapevine)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_l1)
        (not_at_a_l2)
        (not_at_b_l1)
        (not_at_b_l2)
        (not_at_c_l1)
        (not_at_c_l2)
        (not_at_d_l1)
        (not_at_d_l2)
        (not_at_e_l1)
        (not_at_e_l2)
        (not_at_f_l1)
        (not_at_f_l2)
        (not_at_g_l1)
        (not_at_g_l2)
        (not_at_h_l1)
        (not_at_h_l2)
        (not_connected_l1_l1)
        (not_connected_l1_l2)
        (not_connected_l2_l1)
        (not_connected_l2_l2)
        (not_secret_a)
        (not_secret_b)
        (not_secret_c)
        (not_secret_d)
        (not_secret_e)
        (not_secret_f)
        (not_secret_g)
        (not_secret_h)
        (Ba_not_secret_a)
        (Ba_not_secret_b)
        (Ba_not_secret_c)
        (Ba_not_secret_d)
        (Ba_not_secret_e)
        (Ba_not_secret_f)
        (Ba_not_secret_g)
        (Ba_not_secret_h)
        (Ba_secret_a)
        (Ba_secret_b)
        (Ba_secret_c)
        (Ba_secret_d)
        (Ba_secret_e)
        (Ba_secret_f)
        (Ba_secret_g)
        (Ba_secret_h)
        (Bb_not_secret_a)
        (Bb_not_secret_b)
        (Bb_not_secret_c)
        (Bb_not_secret_d)
        (Bb_not_secret_e)
        (Bb_not_secret_f)
        (Bb_not_secret_g)
        (Bb_not_secret_h)
        (Bb_secret_a)
        (Bb_secret_b)
        (Bb_secret_c)
        (Bb_secret_d)
        (Bb_secret_e)
        (Bb_secret_f)
        (Bb_secret_g)
        (Bb_secret_h)
        (Bc_not_secret_a)
        (Bc_not_secret_b)
        (Bc_not_secret_c)
        (Bc_not_secret_d)
        (Bc_not_secret_e)
        (Bc_not_secret_f)
        (Bc_not_secret_g)
        (Bc_not_secret_h)
        (Bc_secret_a)
        (Bc_secret_b)
        (Bc_secret_c)
        (Bc_secret_d)
        (Bc_secret_e)
        (Bc_secret_f)
        (Bc_secret_g)
        (Bc_secret_h)
        (Bd_not_secret_a)
        (Bd_not_secret_b)
        (Bd_not_secret_c)
        (Bd_not_secret_d)
        (Bd_not_secret_e)
        (Bd_not_secret_f)
        (Bd_not_secret_g)
        (Bd_not_secret_h)
        (Bd_secret_a)
        (Bd_secret_b)
        (Bd_secret_c)
        (Bd_secret_d)
        (Bd_secret_e)
        (Bd_secret_f)
        (Bd_secret_g)
        (Bd_secret_h)
        (Be_not_secret_a)
        (Be_not_secret_b)
        (Be_not_secret_c)
        (Be_not_secret_d)
        (Be_not_secret_e)
        (Be_not_secret_f)
        (Be_not_secret_g)
        (Be_not_secret_h)
        (Be_secret_a)
        (Be_secret_b)
        (Be_secret_c)
        (Be_secret_d)
        (Be_secret_e)
        (Be_secret_f)
        (Be_secret_g)
        (Be_secret_h)
        (Bf_not_secret_a)
        (Bf_not_secret_b)
        (Bf_not_secret_c)
        (Bf_not_secret_d)
        (Bf_not_secret_e)
        (Bf_not_secret_f)
        (Bf_not_secret_g)
        (Bf_not_secret_h)
        (Bf_secret_a)
        (Bf_secret_b)
        (Bf_secret_c)
        (Bf_secret_d)
        (Bf_secret_e)
        (Bf_secret_f)
        (Bf_secret_g)
        (Bf_secret_h)
        (Bg_not_secret_a)
        (Bg_not_secret_b)
        (Bg_not_secret_c)
        (Bg_not_secret_d)
        (Bg_not_secret_e)
        (Bg_not_secret_f)
        (Bg_not_secret_g)
        (Bg_not_secret_h)
        (Bg_secret_a)
        (Bg_secret_b)
        (Bg_secret_c)
        (Bg_secret_d)
        (Bg_secret_e)
        (Bg_secret_f)
        (Bg_secret_g)
        (Bg_secret_h)
        (Bh_not_secret_a)
        (Bh_not_secret_b)
        (Bh_not_secret_c)
        (Bh_not_secret_d)
        (Bh_not_secret_e)
        (Bh_not_secret_f)
        (Bh_not_secret_g)
        (Bh_not_secret_h)
        (Bh_secret_a)
        (Bh_secret_b)
        (Bh_secret_c)
        (Bh_secret_d)
        (Bh_secret_e)
        (Bh_secret_f)
        (Bh_secret_g)
        (Bh_secret_h)
        (Pa_not_secret_a)
        (Pa_not_secret_b)
        (Pa_not_secret_c)
        (Pa_not_secret_d)
        (Pa_not_secret_e)
        (Pa_not_secret_f)
        (Pa_not_secret_g)
        (Pa_not_secret_h)
        (Pa_secret_a)
        (Pa_secret_b)
        (Pa_secret_c)
        (Pa_secret_d)
        (Pa_secret_e)
        (Pa_secret_f)
        (Pa_secret_g)
        (Pa_secret_h)
        (Pb_not_secret_a)
        (Pb_not_secret_b)
        (Pb_not_secret_c)
        (Pb_not_secret_d)
        (Pb_not_secret_e)
        (Pb_not_secret_f)
        (Pb_not_secret_g)
        (Pb_not_secret_h)
        (Pb_secret_a)
        (Pb_secret_b)
        (Pb_secret_c)
        (Pb_secret_d)
        (Pb_secret_e)
        (Pb_secret_f)
        (Pb_secret_g)
        (Pb_secret_h)
        (Pc_not_secret_a)
        (Pc_not_secret_b)
        (Pc_not_secret_c)
        (Pc_not_secret_d)
        (Pc_not_secret_e)
        (Pc_not_secret_f)
        (Pc_not_secret_g)
        (Pc_not_secret_h)
        (Pc_secret_a)
        (Pc_secret_b)
        (Pc_secret_c)
        (Pc_secret_d)
        (Pc_secret_e)
        (Pc_secret_f)
        (Pc_secret_g)
        (Pc_secret_h)
        (Pd_not_secret_a)
        (Pd_not_secret_b)
        (Pd_not_secret_c)
        (Pd_not_secret_d)
        (Pd_not_secret_e)
        (Pd_not_secret_f)
        (Pd_not_secret_g)
        (Pd_not_secret_h)
        (Pd_secret_a)
        (Pd_secret_b)
        (Pd_secret_c)
        (Pd_secret_d)
        (Pd_secret_e)
        (Pd_secret_f)
        (Pd_secret_g)
        (Pd_secret_h)
        (Pe_not_secret_a)
        (Pe_not_secret_b)
        (Pe_not_secret_c)
        (Pe_not_secret_d)
        (Pe_not_secret_e)
        (Pe_not_secret_f)
        (Pe_not_secret_g)
        (Pe_not_secret_h)
        (Pe_secret_a)
        (Pe_secret_b)
        (Pe_secret_c)
        (Pe_secret_d)
        (Pe_secret_e)
        (Pe_secret_f)
        (Pe_secret_g)
        (Pe_secret_h)
        (Pf_not_secret_a)
        (Pf_not_secret_b)
        (Pf_not_secret_c)
        (Pf_not_secret_d)
        (Pf_not_secret_e)
        (Pf_not_secret_f)
        (Pf_not_secret_g)
        (Pf_not_secret_h)
        (Pf_secret_a)
        (Pf_secret_b)
        (Pf_secret_c)
        (Pf_secret_d)
        (Pf_secret_e)
        (Pf_secret_f)
        (Pf_secret_g)
        (Pf_secret_h)
        (Pg_not_secret_a)
        (Pg_not_secret_b)
        (Pg_not_secret_c)
        (Pg_not_secret_d)
        (Pg_not_secret_e)
        (Pg_not_secret_f)
        (Pg_not_secret_g)
        (Pg_not_secret_h)
        (Pg_secret_a)
        (Pg_secret_b)
        (Pg_secret_c)
        (Pg_secret_d)
        (Pg_secret_e)
        (Pg_secret_f)
        (Pg_secret_g)
        (Pg_secret_h)
        (Ph_not_secret_a)
        (Ph_not_secret_b)
        (Ph_not_secret_c)
        (Ph_not_secret_d)
        (Ph_not_secret_e)
        (Ph_not_secret_f)
        (Ph_not_secret_g)
        (Ph_not_secret_h)
        (Ph_secret_a)
        (Ph_secret_b)
        (Ph_secret_c)
        (Ph_secret_d)
        (Ph_secret_e)
        (Ph_secret_f)
        (Ph_secret_g)
        (Ph_secret_h)
        (at_a_l1)
        (at_a_l2)
        (at_b_l1)
        (at_b_l2)
        (at_c_l1)
        (at_c_l2)
        (at_d_l1)
        (at_d_l2)
        (at_e_l1)
        (at_e_l2)
        (at_f_l1)
        (at_f_l2)
        (at_g_l1)
        (at_g_l2)
        (at_h_l1)
        (at_h_l2)
        (connected_l1_l1)
        (connected_l1_l2)
        (connected_l2_l1)
        (connected_l2_l2)
        (secret_a)
        (secret_b)
        (secret_c)
        (secret_d)
        (secret_e)
        (secret_f)
        (secret_g)
        (secret_h)
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

    (:action move_d_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_d_l1))
        :effect (and
                    ; #61247: origin
                    (at_d_l1)

                    ; #78542: origin
                    (not_at_d_l1)

                    ; #61247: <==negation-removal== 78542 (pos)
                    (not (at_d_l1))

                    ; #78542: <==negation-removal== 61247 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_d_l1))
        :effect (and
                    ; #61247: origin
                    (at_d_l2)

                    ; #78542: origin
                    (not_at_d_l1)

                    ; #61247: <==negation-removal== 78542 (pos)
                    (not (at_d_l1))

                    ; #78542: <==negation-removal== 61247 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l2_l1
        :precondition (and (at_d_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #61247: origin
                    (at_d_l1)

                    ; #78542: origin
                    (not_at_d_l2)

                    ; #61247: <==negation-removal== 78542 (pos)
                    (not (at_d_l2))

                    ; #78542: <==negation-removal== 61247 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l2_l2
        :precondition (and (at_d_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #61247: origin
                    (at_d_l2)

                    ; #78542: origin
                    (not_at_d_l2)

                    ; #61247: <==negation-removal== 78542 (pos)
                    (not (at_d_l2))

                    ; #78542: <==negation-removal== 61247 (pos)
                    (not (not_at_d_l2))))

    (:action move_e_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_e_l1))
        :effect (and
                    ; #60964: origin
                    (not_at_e_l1)

                    ; #62720: origin
                    (at_e_l1)

                    ; #60964: <==negation-removal== 62720 (pos)
                    (not (not_at_e_l1))

                    ; #62720: <==negation-removal== 60964 (pos)
                    (not (at_e_l1))))

    (:action move_e_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_e_l1))
        :effect (and
                    ; #60964: origin
                    (not_at_e_l1)

                    ; #62720: origin
                    (at_e_l2)

                    ; #60964: <==negation-removal== 62720 (pos)
                    (not (not_at_e_l2))

                    ; #62720: <==negation-removal== 60964 (pos)
                    (not (at_e_l1))))

    (:action move_e_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_e_l2))
        :effect (and
                    ; #60964: origin
                    (not_at_e_l2)

                    ; #62720: origin
                    (at_e_l1)

                    ; #60964: <==negation-removal== 62720 (pos)
                    (not (not_at_e_l1))

                    ; #62720: <==negation-removal== 60964 (pos)
                    (not (at_e_l2))))

    (:action move_e_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_e_l2))
        :effect (and
                    ; #60964: origin
                    (not_at_e_l2)

                    ; #62720: origin
                    (at_e_l2)

                    ; #60964: <==negation-removal== 62720 (pos)
                    (not (not_at_e_l2))

                    ; #62720: <==negation-removal== 60964 (pos)
                    (not (at_e_l2))))

    (:action move_f_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_f_l1))
        :effect (and
                    ; #29966: origin
                    (not_at_f_l1)

                    ; #86280: origin
                    (at_f_l1)

                    ; #29966: <==negation-removal== 86280 (pos)
                    (not (not_at_f_l1))

                    ; #86280: <==negation-removal== 29966 (pos)
                    (not (at_f_l1))))

    (:action move_f_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_f_l1))
        :effect (and
                    ; #29966: origin
                    (not_at_f_l1)

                    ; #86280: origin
                    (at_f_l2)

                    ; #29966: <==negation-removal== 86280 (pos)
                    (not (not_at_f_l2))

                    ; #86280: <==negation-removal== 29966 (pos)
                    (not (at_f_l1))))

    (:action move_f_l2_l1
        :precondition (and (at_f_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #29966: origin
                    (not_at_f_l2)

                    ; #86280: origin
                    (at_f_l1)

                    ; #29966: <==negation-removal== 86280 (pos)
                    (not (not_at_f_l1))

                    ; #86280: <==negation-removal== 29966 (pos)
                    (not (at_f_l2))))

    (:action move_f_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_f_l2))
        :effect (and
                    ; #29966: origin
                    (not_at_f_l2)

                    ; #86280: origin
                    (at_f_l2)

                    ; #29966: <==negation-removal== 86280 (pos)
                    (not (not_at_f_l2))

                    ; #86280: <==negation-removal== 29966 (pos)
                    (not (at_f_l2))))

    (:action move_g_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_g_l1))
        :effect (and
                    ; #33125: origin
                    (at_g_l1)

                    ; #94100: origin
                    (not_at_g_l1)

                    ; #33125: <==negation-removal== 94100 (pos)
                    (not (at_g_l1))

                    ; #94100: <==negation-removal== 33125 (pos)
                    (not (not_at_g_l1))))

    (:action move_g_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_g_l1))
        :effect (and
                    ; #33125: origin
                    (at_g_l2)

                    ; #94100: origin
                    (not_at_g_l1)

                    ; #33125: <==negation-removal== 94100 (pos)
                    (not (at_g_l1))

                    ; #94100: <==negation-removal== 33125 (pos)
                    (not (not_at_g_l2))))

    (:action move_g_l2_l1
        :precondition (and (at_g_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #33125: origin
                    (at_g_l1)

                    ; #94100: origin
                    (not_at_g_l2)

                    ; #33125: <==negation-removal== 94100 (pos)
                    (not (at_g_l2))

                    ; #94100: <==negation-removal== 33125 (pos)
                    (not (not_at_g_l1))))

    (:action move_g_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_g_l2))
        :effect (and
                    ; #33125: origin
                    (at_g_l2)

                    ; #94100: origin
                    (not_at_g_l2)

                    ; #33125: <==negation-removal== 94100 (pos)
                    (not (at_g_l2))

                    ; #94100: <==negation-removal== 33125 (pos)
                    (not (not_at_g_l2))))

    (:action move_h_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_h_l1))
        :effect (and
                    ; #25509: origin
                    (not_at_h_l1)

                    ; #29888: origin
                    (at_h_l1)

                    ; #25509: <==negation-removal== 29888 (pos)
                    (not (not_at_h_l1))

                    ; #29888: <==negation-removal== 25509 (pos)
                    (not (at_h_l1))))

    (:action move_h_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_h_l1))
        :effect (and
                    ; #25509: origin
                    (not_at_h_l1)

                    ; #29888: origin
                    (at_h_l2)

                    ; #25509: <==negation-removal== 29888 (pos)
                    (not (not_at_h_l2))

                    ; #29888: <==negation-removal== 25509 (pos)
                    (not (at_h_l1))))

    (:action move_h_l2_l1
        :precondition (and (at_h_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #25509: origin
                    (not_at_h_l2)

                    ; #29888: origin
                    (at_h_l1)

                    ; #25509: <==negation-removal== 29888 (pos)
                    (not (not_at_h_l1))

                    ; #29888: <==negation-removal== 25509 (pos)
                    (not (at_h_l2))))

    (:action move_h_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_h_l2))
        :effect (and
                    ; #25509: origin
                    (not_at_h_l2)

                    ; #29888: origin
                    (at_h_l2)

                    ; #25509: <==negation-removal== 29888 (pos)
                    (not (not_at_h_l2))

                    ; #29888: <==negation-removal== 25509 (pos)
                    (not (at_h_l2))))

    (:action share_a_a_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_a))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_a))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_a))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_a))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_a))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_a))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_a)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_a)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_a)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_a)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_a)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_a)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_a)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_a)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_a)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_a)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Ba_secret_a)
                           (at_a_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_a))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_a))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_a))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_a))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_a)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_a)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_a)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_a)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_a)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_a)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_b))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_b))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_b))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_b))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_b))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_b))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_b)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_b)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_b)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_b)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_b)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_b)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_b)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_b)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_b)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_b)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Ba_secret_b)
                           (at_a_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_b))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_b))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_b))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_b))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_b)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_b)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_b)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_b)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_b)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_b)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_c))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_c))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_c))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_c))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_c))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_c))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_c)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_c)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_c)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_c)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_c)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_c)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_c)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_c)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_c)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_c)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Ba_secret_c)
                           (at_a_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_c))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_c))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_c))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_c))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_c)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_c)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_c)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_c)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_c)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_c)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_d))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_d))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_d))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_d))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_d))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_d))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_d))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_d))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_d))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_d)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_d)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_d)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_d)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_d)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_d)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_d)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_d)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_d)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_d)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_d)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_d)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_d)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_d)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_d)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_d))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_d))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_d))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_d))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_d))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_d))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_d))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_d))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_d))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_d)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_d)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_d)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_d)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_d)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_d)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_d)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_d)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_d)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_d)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_d)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_d)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_d)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_d)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_d)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_d)))))

    (:action share_a_e_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_e))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_e))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_e))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_e))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_e))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_e))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_e))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_e))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_e))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_e))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_e))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_e))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_e))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_e))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_e))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_e))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_e))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_e)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_e)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_e)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_e)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_e)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_e)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_e)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_e)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_e)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_e)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_e)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_e)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_e)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_e)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_e)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_e)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_e)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_e)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_e)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_e)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_e)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_e)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_e)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_e)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_e)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_e)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_e)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_e)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_e)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_e)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_e)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_e)))))

    (:action share_a_e_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_e))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_e))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_e))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_e))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_e))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_e))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_e))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_e))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_e))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_e))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_e))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_e))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_e))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_e))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_e))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_e))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_e))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_e)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_e)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_e)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_e)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_e)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_e)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_e)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_e)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_e)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_e)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_e)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_e)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_e)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_e)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_e)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_e)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_e)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_e)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_e)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_e)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_e)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_e)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_e)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_e)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_e)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_e)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_e)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_e)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_e)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_e)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_e)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_e)))))

    (:action share_a_f_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_f))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_f))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_f))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_f))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_f))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_f))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_f))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_f))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_f))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_f))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_f))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_f))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_f))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_f))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_f))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_f))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_f))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_f)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_f)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_f)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_f)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_f)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_f)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_f)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_f)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_f)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_f)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_f)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_f)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_f)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_f)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_f)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_f)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_f)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_f)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_f)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_f)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_f)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_f)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_f)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_f)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_f)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_f)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_f)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_f)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_f)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_f)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_f)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_f)))))

    (:action share_a_f_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_f))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_f))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_f))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_f))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_f))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_f))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_f))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_f))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_f))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_f))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_f))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_f))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_f))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_f))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_f))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_f))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_f))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_f)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_f)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_f)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_f)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_f)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_f)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_f)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_f)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_f)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_f)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_f)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_f)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_f)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_f)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_f)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_f)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_f)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_f)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_f)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_f)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_f)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_f)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_f)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_f)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_f)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_f)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_f)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_f)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_f)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_f)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_f)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_f)))))

    (:action share_a_g_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_g))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_g))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_g))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_g))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_g))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_g))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_g))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_g))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_g))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_g))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_g))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_g))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_g))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_g))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_g))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_g))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_g))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_g)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_g)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_g)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_g)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_g)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_g)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_g)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_g)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_g)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_g)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_g)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_g)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_g)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_g)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_g)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_g)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_g)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_g)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_g)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_g)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_g)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_g)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_g)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_g)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_g)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_g)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_g)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_g)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_g)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_g)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_g)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_g)))))

    (:action share_a_g_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_g))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_g))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_g))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_g))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_g))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_g))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_g))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_g))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_g))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_g))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_g))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_g))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_g))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_g))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_g))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_g))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_g))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_g)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_g)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_g)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_g)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_g)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_g)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_g)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_g)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_g)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_g)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_g)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_g)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_g)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_g)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_g)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_g)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_g)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_g)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_g)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_g)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_g)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_g)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_g)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_g)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_g)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_g)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_g)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_g)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_g)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_g)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_g)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_g)))))

    (:action share_a_h_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_h))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_h))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_h))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_h))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_h))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_h))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_h))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_h))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_h))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_h))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_h))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_h))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_h))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_h))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_h))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_h))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_h))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_h)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_h)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_h)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_h)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_h)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_h)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_h)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_h)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_h)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_h)))

                    ; #45374: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_h)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_h)))

                    ; #47558: <==unclosure== 45374 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_h)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_h)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_h)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_h)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_h)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_h)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_h)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_h)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_h)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_h)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_h)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_h)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_h)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_h)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_h)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_h)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_h)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_h)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_h)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_h)))))

    (:action share_a_h_l2
        :precondition (and (Ba_secret_h)
                           (at_a_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_h))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_h))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_h))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_h))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_h))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_h))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_h))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_h))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_h))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_h))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_h))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_h))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_h))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_h))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_h))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_h))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_h)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_h)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_h)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_h)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_h)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_h)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_h)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_h)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_h)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_h)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_h)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_h)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_h)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_h)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_h)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_h)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_h)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_h)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_h)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_h)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_h)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_h)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_h)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_h)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_h)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_h)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_h)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_h)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_h)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_h)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_h)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_h)))))

    (:action share_b_a_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_a))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_a))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_a))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_a))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_a))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_a))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_a)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_a)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_a)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_a)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_a)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_a)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_a)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_a)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_a)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_a)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_a))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_a))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_a))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_a))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_a))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_a)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_a)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_a)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_a)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_a)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_a)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_b))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_b))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_b))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_b))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_b))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_b))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_b)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_b)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_b)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_b)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_b)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_b)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_b)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_b)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_b)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_b)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_b))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_b))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_b))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_b))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_b)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_b)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_b)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_b)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_b)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_b)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_c))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_c))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_c))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_c))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_c))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_c))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_c)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_c)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_c)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_c)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_c)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_c)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_c)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_c)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_c)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_c)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_c))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_c))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_c))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_c))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_c))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_c)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_c)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_c)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_c)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_c)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_c)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_d))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_d))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_d))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_d))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_d))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_d))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_d))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_d))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_d))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_d)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_d)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_d)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_d)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_d)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_d)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_d)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_d)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_d)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_d)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_d)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_d)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_d)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_d)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_d)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_d))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_d))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_d))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_d))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_d))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_d))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_d))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_d))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_d))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_d)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_d)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_d)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_d)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_d)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_d)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_d)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_d)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_d)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_d)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_d)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_d)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_d)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_d)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_d)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_d)))))

    (:action share_b_e_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_e))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_e))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_e))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_e))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_e))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_e))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_e))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_e))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_e))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_e))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_e))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_e))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_e))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_e))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_e))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_e))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_e))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_e)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_e)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_e)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_e)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_e)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_e)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_e)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_e)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_e)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_e)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_e)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_e)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_e)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_e)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_e)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_e)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_e)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_e)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_e)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_e)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_e)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_e)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_e)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_e)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_e)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_e)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_e)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_e)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_e)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_e)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_e)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_e)))))

    (:action share_b_e_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_e))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_e))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_e))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_e))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_e))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_e))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_e))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_e))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_e))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_e))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_e))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_e))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_e))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_e))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_e))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_e))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_e))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_e)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_e)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_e)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_e)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_e)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_e)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_e)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_e)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_e)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_e)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_e)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_e)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_e)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_e)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_e)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_e)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_e)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_e)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_e)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_e)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_e)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_e)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_e)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_e)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_e)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_e)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_e)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_e)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_e)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_e)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_e)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_e)))))

    (:action share_b_f_l1
        :precondition (and (Bb_secret_f)
                           (at_b_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_f))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_f))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_f))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_f))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_f))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_f))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_f))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_f))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_f))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_f))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_f))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_f))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_f))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_f))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_f))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_f))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_f)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_f)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_f)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_f)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_f)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_f)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_f)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_f)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_f)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_f)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_f)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_f)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_f)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_f)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_f)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_f)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_f)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_f)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_f)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_f)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_f)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_f)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_f)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_f)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_f)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_f)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_f)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_f)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_f)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_f)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_f)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_f)))))

    (:action share_b_f_l2
        :precondition (and (Bb_secret_f)
                           (at_b_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_f))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_f))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_f))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_f))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_f))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_f))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_f))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_f))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_f))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_f))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_f))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_f))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_f))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_f))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_f))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_f))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_f)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_f)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_f)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_f)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_f)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_f)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_f)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_f)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_f)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_f)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_f)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_f)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_f)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_f)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_f)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_f)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_f)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_f)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_f)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_f)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_f)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_f)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_f)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_f)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_f)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_f)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_f)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_f)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_f)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_f)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_f)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_f)))))

    (:action share_b_g_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_g))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_g))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_g))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_g))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_g))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_g))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_g))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_g))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_g))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_g))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_g))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_g))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_g))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_g))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_g))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_g))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_g))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_g)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_g)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_g)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_g)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_g)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_g)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_g)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_g)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_g)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_g)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_g)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_g)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_g)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_g)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_g)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_g)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_g)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_g)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_g)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_g)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_g)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_g)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_g)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_g)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_g)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_g)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_g)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_g)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_g)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_g)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_g)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_g)))))

    (:action share_b_g_l2
        :precondition (and (Bb_secret_g)
                           (at_b_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_g))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_g))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_g))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_g))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_g))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_g))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_g))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_g))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_g))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_g))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_g))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_g))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_g))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_g))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_g))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_g))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_g)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_g)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_g)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_g)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_g)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_g)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_g)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_g)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_g)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_g)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_g)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_g)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_g)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_g)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_g)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_g)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_g)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_g)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_g)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_g)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_g)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_g)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_g)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_g)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_g)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_g)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_g)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_g)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_g)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_g)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_g)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_g)))))

    (:action share_b_h_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_h))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_h))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_h))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_h))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_h))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_h))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_h))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_h))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_h))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_h))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_h))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_h))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_h))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_h))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_h))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_h))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_h))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_h)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_h)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_h)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_h)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_h)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_h)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_h)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_h)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_h)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_h)))

                    ; #45374: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_h)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_h)))

                    ; #47558: <==unclosure== 45374 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_h)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_h)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_h)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_h)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_h)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_h)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_h)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_h)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_h)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_h)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_h)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_h)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_h)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_h)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_h)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_h)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_h)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_h)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_h)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_h)))))

    (:action share_b_h_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_h))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_h))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_h))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_h))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_h))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_h))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_h))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_h))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_h))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_h))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_h))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_h))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_h))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_h))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_h))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_h))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_h))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_h)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_h)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_h)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_h)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_h)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_h)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_h)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_h)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_h)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_h)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_h)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_h)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_h)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_h)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_h)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_h)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_h)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_h)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_h)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_h)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_h)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_h)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_h)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_h)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_h)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_h)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_h)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_h)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_h)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_h)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_h)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_h)))))

    (:action share_c_a_l1
        :precondition (and (Bc_secret_a)
                           (at_c_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_a))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_a))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_a))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_a))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_a))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_a)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_a)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_a)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_a)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_a)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_a)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_a)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_a)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_a)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_a)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Bc_secret_a)
                           (at_c_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_a))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_a))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_a))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_a))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_a)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_a)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_a)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_a)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_a)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_a)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_b))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_b))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_b))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_b))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_b))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_b))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_b)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_b)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_b)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_b)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_b)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_b)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_b)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_b)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_b)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_b)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_b))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_b))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_b))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_b))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_b))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_b)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_b)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_b)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_b)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_b)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_b)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_c))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_c))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_c))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_c))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_c))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_c))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_c)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_c)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_c)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_c)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_c)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_c)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_c)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_c)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_c)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_c)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_c))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_c))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_c))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_c))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_c))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_c)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_c)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_c)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_c)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_c)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_c)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_d))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_d))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_d))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_d))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_d))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_d))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_d))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_d))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_d))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_d)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_d)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_d)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_d)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_d)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_d)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_d)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_d)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_d)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_d)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_d)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_d)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_d)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_d)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_d)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_d))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_d))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_d))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_d))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_d))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_d))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_d))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_d))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_d))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_d)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_d)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_d)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_d)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_d)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_d)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_d)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_d)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_d)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_d)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_d)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_d)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_d)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_d)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_d)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_d)))))

    (:action share_c_e_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_e))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_e))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_e))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_e))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_e))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_e))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_e))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_e))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_e))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_e))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_e))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_e))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_e))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_e))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_e))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_e))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_e))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_e)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_e)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_e)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_e)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_e)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_e)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_e)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_e)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_e)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_e)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_e)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_e)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_e)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_e)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_e)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_e)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_e)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_e)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_e)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_e)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_e)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_e)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_e)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_e)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_e)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_e)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_e)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_e)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_e)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_e)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_e)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_e)))))

    (:action share_c_e_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_e))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_e))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_e))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_e))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_e))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_e))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_e))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_e))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_e))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_e))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_e))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_e))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_e))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_e))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_e))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_e))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_e))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_e)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_e)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_e)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_e)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_e)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_e)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_e)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_e)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_e)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_e)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_e)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_e)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_e)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_e)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_e)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_e)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_e)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_e)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_e)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_e)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_e)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_e)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_e)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_e)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_e)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_e)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_e)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_e)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_e)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_e)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_e)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_e)))))

    (:action share_c_f_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_f))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_f))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_f))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_f))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_f))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_f))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_f))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_f))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_f))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_f))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_f))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_f))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_f))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_f))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_f))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_f))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_f))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_f)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_f)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_f)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_f)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_f)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_f)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_f)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_f)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_f)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_f)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_f)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_f)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_f)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_f)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_f)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_f)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_f)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_f)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_f)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_f)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_f)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_f)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_f)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_f)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_f)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_f)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_f)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_f)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_f)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_f)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_f)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_f)))))

    (:action share_c_f_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_f))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_f))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_f))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_f))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_f))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_f))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_f))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_f))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_f))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_f))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_f))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_f))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_f))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_f))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_f))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_f))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_f))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_f)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_f)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_f)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_f)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_f)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_f)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_f)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_f)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_f)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_f)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_f)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_f)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_f)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_f)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_f)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_f)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_f)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_f)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_f)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_f)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_f)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_f)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_f)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_f)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_f)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_f)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_f)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_f)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_f)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_f)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_f)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_f)))))

    (:action share_c_g_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_g))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_g))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_g))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_g))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_g))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_g))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_g))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_g))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_g))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_g))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_g))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_g))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_g))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_g))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_g))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_g))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_g))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_g)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_g)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_g)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_g)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_g)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_g)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_g)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_g)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_g)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_g)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_g)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_g)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_g)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_g)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_g)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_g)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_g)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_g)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_g)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_g)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_g)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_g)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_g)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_g)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_g)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_g)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_g)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_g)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_g)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_g)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_g)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_g)))))

    (:action share_c_g_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_g))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_g))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_g))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_g))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_g))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_g))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_g))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_g))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_g))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_g))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_g))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_g))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_g))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_g))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_g))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_g))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_g))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_g)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_g)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_g)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_g)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_g)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_g)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_g)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_g)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_g)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_g)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_g)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_g)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_g)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_g)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_g)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_g)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_g)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_g)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_g)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_g)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_g)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_g)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_g)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_g)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_g)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_g)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_g)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_g)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_g)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_g)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_g)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_g)))))

    (:action share_c_h_l1
        :precondition (and (Bc_secret_h)
                           (at_c_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_h))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_h))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_h))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_h))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_h))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_h))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_h))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_h))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_h))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_h))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_h))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_h))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_h))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_h))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_h))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_h))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_h)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_h)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_h)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_h)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_h)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_h)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_h)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_h)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_h)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_h)))

                    ; #45374: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_h)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_h)))

                    ; #47558: <==unclosure== 45374 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_h)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_h)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_h)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_h)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_h)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_h)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_h)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_h)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_h)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_h)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_h)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_h)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_h)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_h)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_h)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_h)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_h)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_h)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_h)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_h)))))

    (:action share_c_h_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_h))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_h))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_h))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_h))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_h))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_h))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_h))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_h))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_h))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_h))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_h))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_h))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_h))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_h))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_h))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_h))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_h))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_h)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_h)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_h)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_h)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_h)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_h)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_h)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_h)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_h)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_h)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_h)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_h)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_h)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_h)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_h)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_h)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_h)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_h)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_h)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_h)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_h)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_h)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_h)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_h)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_h)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_h)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_h)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_h)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_h)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_h)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_h)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_h)))))

    (:action share_d_a_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_a))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_a))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_a))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_a))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_a))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_a))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_a)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_a)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_a)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_a)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_a)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_a)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_a)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_a)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_a)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_a)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_a))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_a))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_a))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_a))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_a))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_a)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_a)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_a)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_a)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_a)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_a)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_b))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_b))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_b))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_b))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_b))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_b))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_b)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_b)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_b)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_b)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_b)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_b)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_b)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_b)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_b)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_b)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_b))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_b))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_b))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_b))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_b))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_b)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_b)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_b)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_b)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_b)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_b)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_c))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_c))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_c))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_c))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_c))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_c))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_c)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_c)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_c)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_c)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_c)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_c)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_c)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_c)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_c)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_c)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_c))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_c))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_c))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_c))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_c))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_c)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_c)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_c)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_c)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_c)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_c)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (Bd_secret_d)
                           (at_d_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_d))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_d))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_d))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_d))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_d))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_d))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_d))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_d))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_d)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_d)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_d)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_d)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_d)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_d)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_d)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_d)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_d)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_d)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_d)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_d)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_d)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_d)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_d)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_d))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_d))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_d))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_d))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_d))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_d))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_d))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_d))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_d))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_d)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_d)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_d)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_d)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_d)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_d)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_d)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_d)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_d)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_d)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_d)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_d)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_d)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_d)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_d)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_d)))))

    (:action share_d_e_l1
        :precondition (and (Bd_secret_e)
                           (at_d_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_e))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_e))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_e))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_e))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_e))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_e))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_e))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_e))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_e))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_e))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_e))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_e))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_e))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_e))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_e))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_e))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_e)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_e)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_e)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_e)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_e)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_e)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_e)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_e)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_e)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_e)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_e)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_e)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_e)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_e)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_e)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_e)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_e)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_e)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_e)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_e)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_e)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_e)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_e)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_e)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_e)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_e)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_e)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_e)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_e)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_e)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_e)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_e)))))

    (:action share_d_e_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_e))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_e))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_e))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_e))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_e))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_e))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_e))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_e))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_e))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_e))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_e))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_e))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_e))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_e))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_e))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_e))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_e))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_e)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_e)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_e)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_e)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_e)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_e)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_e)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_e)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_e)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_e)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_e)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_e)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_e)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_e)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_e)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_e)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_e)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_e)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_e)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_e)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_e)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_e)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_e)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_e)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_e)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_e)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_e)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_e)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_e)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_e)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_e)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_e)))))

    (:action share_d_f_l1
        :precondition (and (Bd_secret_f)
                           (at_d_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_f))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_f))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_f))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_f))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_f))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_f))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_f))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_f))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_f))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_f))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_f))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_f))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_f))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_f))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_f))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_f))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_f)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_f)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_f)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_f)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_f)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_f)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_f)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_f)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_f)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_f)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_f)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_f)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_f)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_f)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_f)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_f)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_f)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_f)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_f)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_f)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_f)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_f)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_f)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_f)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_f)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_f)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_f)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_f)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_f)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_f)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_f)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_f)))))

    (:action share_d_f_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_f))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_f))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_f))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_f))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_f))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_f))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_f))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_f))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_f))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_f))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_f))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_f))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_f))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_f))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_f))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_f))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_f))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_f)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_f)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_f)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_f)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_f)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_f)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_f)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_f)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_f)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_f)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_f)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_f)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_f)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_f)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_f)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_f)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_f)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_f)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_f)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_f)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_f)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_f)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_f)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_f)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_f)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_f)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_f)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_f)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_f)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_f)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_f)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_f)))))

    (:action share_d_g_l1
        :precondition (and (Bd_secret_g)
                           (at_d_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_g))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_g))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_g))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_g))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_g))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_g))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_g))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_g))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_g))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_g))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_g))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_g))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_g))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_g))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_g))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_g))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_g)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_g)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_g)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_g)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_g)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_g)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_g)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_g)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_g)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_g)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_g)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_g)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_g)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_g)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_g)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_g)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_g)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_g)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_g)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_g)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_g)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_g)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_g)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_g)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_g)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_g)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_g)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_g)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_g)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_g)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_g)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_g)))))

    (:action share_d_g_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_g))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_g))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_g))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_g))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_g))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_g))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_g))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_g))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_g))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_g))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_g))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_g))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_g))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_g))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_g))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_g))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_g))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_g)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_g)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_g)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_g)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_g)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_g)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_g)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_g)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_g)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_g)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_g)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_g)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_g)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_g)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_g)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_g)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_g)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_g)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_g)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_g)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_g)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_g)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_g)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_g)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_g)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_g)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_g)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_g)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_g)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_g)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_g)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_g)))))

    (:action share_d_h_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_h))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_h))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_h))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_h))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_h))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_h))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_h))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_h))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_h))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_h))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_h))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_h))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_h))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_h))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_h))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_h))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_h))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_h)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_h)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_h)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_h)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_h)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_h)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_h)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_h)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_h)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_h)))

                    ; #45374: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_h)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_h)))

                    ; #47558: <==unclosure== 45374 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_h)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_h)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_h)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_h)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_h)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_h)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_h)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_h)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_h)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_h)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_h)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_h)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_h)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_h)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_h)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_h)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_h)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_h)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_h)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_h)))))

    (:action share_d_h_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_h))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_h))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_h))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_h))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_h))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_h))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_h))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_h))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_h))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_h))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_h))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_h))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_h))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_h))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_h))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_h))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_h))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_h)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_h)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_h)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_h)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_h)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_h)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_h)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_h)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_h)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_h)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_h)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_h)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_h)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_h)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_h)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_h)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_h)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_h)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_h)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_h)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_h)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_h)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_h)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_h)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_h)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_h)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_h)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_h)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_h)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_h)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_h)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_h)))))

    (:action share_e_a_l1
        :precondition (and (at_e_l1)
                           (Be_secret_a))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_a))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_a))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_a))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_a))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_a))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_a)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_a)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_a)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_a)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_a)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_a)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_a)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_a)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_a)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_a)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_a)))))

    (:action share_e_a_l2
        :precondition (and (Be_secret_a)
                           (at_e_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_a))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_a))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_a))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_a))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_a)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_a)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_a)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_a)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_a)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_a)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_a)))))

    (:action share_e_b_l1
        :precondition (and (at_e_l1)
                           (Be_secret_b))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_b))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_b))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_b))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_b))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_b))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_b)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_b)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_b)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_b)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_b)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_b)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_b)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_b)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_b)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_b)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_b)))))

    (:action share_e_b_l2
        :precondition (and (Be_secret_b)
                           (at_e_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_b))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_b))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_b))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_b))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_b)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_b)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_b)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_b)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_b)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_b)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_b)))))

    (:action share_e_c_l1
        :precondition (and (Be_secret_c)
                           (at_e_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_c))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_c))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_c))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_c))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_c))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_c)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_c)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_c)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_c)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_c)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_c)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_c)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_c)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_c)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_c)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_c)))))

    (:action share_e_c_l2
        :precondition (and (Be_secret_c)
                           (at_e_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_c))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_c))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_c))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_c))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_c)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_c)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_c)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_c)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_c)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_c)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_c)))))

    (:action share_e_d_l1
        :precondition (and (Be_secret_d)
                           (at_e_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_d))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_d))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_d))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_d))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_d))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_d))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_d))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_d))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_d)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_d)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_d)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_d)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_d)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_d)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_d)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_d)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_d)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_d)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_d)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_d)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_d)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_d)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_d)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_d)))))

    (:action share_e_d_l2
        :precondition (and (Be_secret_d)
                           (at_e_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_d))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_d))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_d))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_d))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_d))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_d))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_d))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_d))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_d)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_d)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_d)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_d)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_d)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_d)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_d)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_d)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_d)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_d)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_d)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_d)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_d)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_d)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_d)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_d)))))

    (:action share_e_e_l1
        :precondition (and (Be_secret_e)
                           (at_e_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_e))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_e))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_e))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_e))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_e))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_e))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_e))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_e))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_e))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_e))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_e))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_e))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_e))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_e))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_e))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_e))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_e)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_e)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_e)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_e)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_e)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_e)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_e)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_e)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_e)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_e)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_e)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_e)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_e)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_e)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_e)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_e)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_e)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_e)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_e)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_e)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_e)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_e)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_e)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_e)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_e)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_e)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_e)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_e)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_e)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_e)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_e)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_e)))))

    (:action share_e_e_l2
        :precondition (and (Be_secret_e)
                           (at_e_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_e))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_e))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_e))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_e))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_e))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_e))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_e))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_e))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_e))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_e))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_e))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_e))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_e))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_e))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_e))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_e))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_e)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_e)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_e)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_e)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_e)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_e)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_e)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_e)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_e)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_e)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_e)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_e)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_e)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_e)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_e)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_e)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_e)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_e)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_e)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_e)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_e)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_e)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_e)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_e)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_e)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_e)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_e)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_e)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_e)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_e)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_e)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_e)))))

    (:action share_e_f_l1
        :precondition (and (Be_secret_f)
                           (at_e_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_f))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_f))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_f))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_f))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_f))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_f))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_f))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_f))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_f))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_f))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_f))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_f))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_f))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_f))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_f))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_f))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_f)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_f)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_f)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_f)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_f)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_f)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_f)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_f)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_f)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_f)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_f)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_f)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_f)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_f)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_f)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_f)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_f)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_f)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_f)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_f)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_f)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_f)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_f)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_f)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_f)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_f)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_f)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_f)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_f)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_f)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_f)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_f)))))

    (:action share_e_f_l2
        :precondition (and (Be_secret_f)
                           (at_e_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_f))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_f))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_f))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_f))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_f))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_f))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_f))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_f))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_f))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_f))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_f))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_f))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_f))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_f))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_f))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_f))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_f)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_f)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_f)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_f)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_f)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_f)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_f)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_f)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_f)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_f)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_f)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_f)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_f)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_f)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_f)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_f)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_f)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_f)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_f)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_f)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_f)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_f)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_f)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_f)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_f)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_f)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_f)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_f)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_f)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_f)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_f)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_f)))))

    (:action share_e_g_l1
        :precondition (and (Be_secret_g)
                           (at_e_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_g))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_g))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_g))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_g))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_g))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_g))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_g))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_g))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_g))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_g))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_g))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_g))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_g))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_g))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_g))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_g))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_g)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_g)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_g)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_g)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_g)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_g)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_g)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_g)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_g)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_g)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_g)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_g)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_g)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_g)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_g)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_g)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_g)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_g)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_g)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_g)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_g)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_g)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_g)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_g)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_g)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_g)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_g)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_g)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_g)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_g)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_g)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_g)))))

    (:action share_e_g_l2
        :precondition (and (Be_secret_g)
                           (at_e_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_g))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_g))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_g))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_g))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_g))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_g))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_g))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_g))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_g))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_g))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_g))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_g))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_g))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_g))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_g))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_g))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_g)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_g)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_g)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_g)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_g)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_g)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_g)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_g)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_g)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_g)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_g)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_g)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_g)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_g)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_g)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_g)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_g)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_g)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_g)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_g)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_g)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_g)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_g)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_g)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_g)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_g)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_g)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_g)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_g)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_g)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_g)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_g)))))

    (:action share_e_h_l1
        :precondition (and (at_e_l1)
                           (Be_secret_h))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_h))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_h))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_h))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_h))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_h))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_h))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_h))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_h))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_h))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_h))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_h))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_h))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_h))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_h))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_h))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_h))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_h)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_h)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_h)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_h)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_h)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_h)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_h)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_h)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_h)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_h)))

                    ; #45374: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_h)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_h)))

                    ; #47558: <==unclosure== 45374 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_h)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_h)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_h)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_h)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_h)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_h)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_h)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_h)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_h)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_h)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_h)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_h)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_h)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_h)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_h)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_h)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_h)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_h)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_h)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_h)))))

    (:action share_e_h_l2
        :precondition (and (Be_secret_h)
                           (at_e_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_h))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_h))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_h))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_h))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_h))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_h))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_h))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_h))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_h))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_h))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_h))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_h))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_h))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_h))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_h))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_h))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_h)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_h)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_h)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_h)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_h)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_h)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_h)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_h)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_h)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_h)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_h)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_h)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_h)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_h)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_h)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_h)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_h)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_h)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_h)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_h)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_h)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_h)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_h)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_h)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_h)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_h)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_h)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_h)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_h)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_h)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_h)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_h)))))

    (:action share_f_a_l1
        :precondition (and (Bf_secret_a)
                           (at_f_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_a))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_a))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_a))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_a))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_a))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_a)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_a)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_a)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_a)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_a)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_a)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_a)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_a)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_a)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_a)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_a)))))

    (:action share_f_a_l2
        :precondition (and (Bf_secret_a)
                           (at_f_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_a))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_a))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_a))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_a))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_a)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_a)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_a)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_a)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_a)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_a)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_a)))))

    (:action share_f_b_l1
        :precondition (and (Bf_secret_b)
                           (at_f_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_b))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_b))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_b))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_b))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_b))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_b)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_b)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_b)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_b)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_b)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_b)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_b)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_b)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_b)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_b)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_b)))))

    (:action share_f_b_l2
        :precondition (and (Bf_secret_b)
                           (at_f_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_b))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_b))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_b))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_b))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_b)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_b)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_b)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_b)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_b)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_b)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_b)))))

    (:action share_f_c_l1
        :precondition (and (Bf_secret_c)
                           (at_f_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_c))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_c))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_c))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_c))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_c))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_c)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_c)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_c)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_c)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_c)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_c)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_c)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_c)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_c)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_c)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_c)))))

    (:action share_f_c_l2
        :precondition (and (Bf_secret_c)
                           (at_f_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_c))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_c))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_c))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_c))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_c)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_c)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_c)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_c)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_c)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_c)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_c)))))

    (:action share_f_d_l1
        :precondition (and (at_f_l1)
                           (Bf_secret_d))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_d))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_d))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_d))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_d))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_d))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_d))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_d))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_d))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_d)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_d)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_d)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_d)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_d)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_d)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_d)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_d)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_d)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_d)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_d)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_d)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_d)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_d)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_d)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_d)))))

    (:action share_f_d_l2
        :precondition (and (Bf_secret_d)
                           (at_f_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_d))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_d))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_d))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_d))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_d))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_d))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_d))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_d))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_d)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_d)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_d)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_d)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_d)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_d)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_d)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_d)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_d)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_d)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_d)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_d)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_d)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_d)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_d)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_d)))))

    (:action share_f_e_l1
        :precondition (and (at_f_l1)
                           (Bf_secret_e))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_e))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_e))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_e))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_e))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_e))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_e))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_e))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_e))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_e))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_e))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_e))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_e))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_e))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_e))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_e))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_e))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_e)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_e)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_e)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_e)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_e)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_e)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_e)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_e)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_e)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_e)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_e)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_e)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_e)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_e)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_e)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_e)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_e)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_e)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_e)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_e)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_e)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_e)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_e)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_e)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_e)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_e)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_e)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_e)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_e)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_e)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_e)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_e)))))

    (:action share_f_e_l2
        :precondition (and (at_f_l2)
                           (Bf_secret_e))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_e))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_e))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_e))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_e))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_e))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_e))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_e))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_e))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_e))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_e))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_e))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_e))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_e))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_e))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_e))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_e))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_e)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_e)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_e)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_e)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_e)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_e)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_e)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_e)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_e)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_e)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_e)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_e)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_e)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_e)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_e)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_e)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_e)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_e)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_e)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_e)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_e)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_e)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_e)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_e)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_e)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_e)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_e)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_e)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_e)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_e)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_e)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_e)))))

    (:action share_f_f_l1
        :precondition (and (Bf_secret_f)
                           (at_f_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_f))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_f))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_f))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_f))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_f))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_f))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_f))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_f))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_f))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_f))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_f))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_f))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_f))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_f))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_f))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_f))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_f)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_f)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_f)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_f)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_f)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_f)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_f)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_f)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_f)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_f)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_f)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_f)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_f)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_f)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_f)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_f)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_f)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_f)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_f)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_f)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_f)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_f)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_f)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_f)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_f)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_f)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_f)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_f)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_f)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_f)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_f)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_f)))))

    (:action share_f_f_l2
        :precondition (and (Bf_secret_f)
                           (at_f_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_f))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_f))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_f))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_f))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_f))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_f))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_f))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_f))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_f))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_f))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_f))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_f))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_f))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_f))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_f))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_f))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_f)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_f)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_f)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_f)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_f)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_f)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_f)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_f)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_f)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_f)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_f)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_f)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_f)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_f)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_f)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_f)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_f)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_f)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_f)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_f)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_f)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_f)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_f)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_f)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_f)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_f)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_f)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_f)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_f)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_f)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_f)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_f)))))

    (:action share_f_g_l1
        :precondition (and (at_f_l1)
                           (Bf_secret_g))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_g))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_g))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_g))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_g))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_g))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_g))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_g))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_g))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_g))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_g))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_g))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_g))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_g))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_g))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_g))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_g))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_g)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_g)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_g)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_g)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_g)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_g)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_g)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_g)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_g)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_g)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_g)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_g)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_g)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_g)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_g)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_g)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_g)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_g)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_g)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_g)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_g)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_g)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_g)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_g)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_g)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_g)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_g)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_g)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_g)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_g)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_g)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_g)))))

    (:action share_f_g_l2
        :precondition (and (Bf_secret_g)
                           (at_f_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_g))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_g))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_g))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_g))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_g))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_g))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_g))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_g))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_g))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_g))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_g))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_g))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_g))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_g))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_g))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_g))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_g)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_g)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_g)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_g)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_g)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_g)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_g)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_g)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_g)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_g)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_g)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_g)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_g)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_g)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_g)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_g)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_g)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_g)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_g)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_g)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_g)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_g)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_g)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_g)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_g)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_g)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_g)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_g)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_g)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_g)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_g)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_g)))))

    (:action share_f_h_l1
        :precondition (and (Bf_secret_h)
                           (at_f_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_h))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_h))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_h))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_h))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_h))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_h))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_h))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_h))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_h))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_h))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_h))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_h))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_h))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_h))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_h))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_h))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_h)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_h)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_h)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_h)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_h)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_h)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_h)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_h)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_h)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_h)))

                    ; #45374: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_h)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_h)))

                    ; #47558: <==unclosure== 45374 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_h)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_h)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_h)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_h)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_h)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_h)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_h)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_h)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_h)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_h)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_h)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_h)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_h)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_h)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_h)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_h)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_h)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_h)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_h)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_h)))))

    (:action share_f_h_l2
        :precondition (and (Bf_secret_h)
                           (at_f_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_h))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_h))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_h))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_h))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_h))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_h))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_h))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_h))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_h))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_h))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_h))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_h))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_h))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_h))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_h))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_h))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_h)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_h)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_h)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_h)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_h)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_h)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_h)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_h)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_h)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_h)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_h)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_h)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_h)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_h)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_h)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_h)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_h)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_h)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_h)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_h)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_h)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_h)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_h)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_h)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_h)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_h)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_h)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_h)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_h)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_h)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_h)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_h)))))

    (:action share_g_a_l1
        :precondition (and (Bg_secret_a)
                           (at_g_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_a))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_a))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_a))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_a))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_a))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_a)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_a)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_a)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_a)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_a)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_a)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_a)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_a)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_a)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_a)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_a)))))

    (:action share_g_a_l2
        :precondition (and (Bg_secret_a)
                           (at_g_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_a))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_a))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_a))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_a))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_a)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_a)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_a)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_a)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_a)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_a)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_a)))))

    (:action share_g_b_l1
        :precondition (and (at_g_l1)
                           (Bg_secret_b))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_b))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_b))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_b))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_b))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_b))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_b)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_b)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_b)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_b)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_b)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_b)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_b)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_b)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_b)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_b)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_b)))))

    (:action share_g_b_l2
        :precondition (and (at_g_l2)
                           (Bg_secret_b))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_b))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_b))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_b))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_b))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_b)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_b)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_b)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_b)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_b)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_b)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_b)))))

    (:action share_g_c_l1
        :precondition (and (Bg_secret_c)
                           (at_g_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_c))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_c))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_c))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_c))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_c))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_c)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_c)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_c)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_c)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_c)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_c)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_c)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_c)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_c)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_c)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_c)))))

    (:action share_g_c_l2
        :precondition (and (at_g_l2)
                           (Bg_secret_c))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_c))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_c))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_c))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_c))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_c)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_c)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_c)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_c)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_c)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_c)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_c)))))

    (:action share_g_d_l1
        :precondition (and (Bg_secret_d)
                           (at_g_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_d))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_d))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_d))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_d))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_d))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_d))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_d))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_d))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_d)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_d)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_d)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_d)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_d)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_d)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_d)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_d)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_d)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_d)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_d)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_d)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_d)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_d)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_d)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_d)))))

    (:action share_g_d_l2
        :precondition (and (Bg_secret_d)
                           (at_g_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_d))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_d))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_d))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_d))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_d))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_d))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_d))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_d))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_d)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_d)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_d)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_d)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_d)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_d)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_d)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_d)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_d)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_d)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_d)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_d)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_d)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_d)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_d)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_d)))))

    (:action share_g_e_l1
        :precondition (and (Bg_secret_e)
                           (at_g_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_e))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_e))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_e))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_e))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_e))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_e))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_e))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_e))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_e))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_e))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_e))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_e))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_e))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_e))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_e))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_e))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_e)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_e)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_e)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_e)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_e)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_e)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_e)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_e)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_e)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_e)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_e)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_e)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_e)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_e)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_e)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_e)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_e)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_e)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_e)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_e)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_e)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_e)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_e)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_e)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_e)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_e)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_e)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_e)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_e)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_e)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_e)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_e)))))

    (:action share_g_e_l2
        :precondition (and (Bg_secret_e)
                           (at_g_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_e))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_e))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_e))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_e))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_e))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_e))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_e))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_e))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_e))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_e))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_e))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_e))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_e))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_e))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_e))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_e))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_e)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_e)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_e)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_e)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_e)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_e)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_e)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_e)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_e)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_e)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_e)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_e)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_e)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_e)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_e)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_e)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_e)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_e)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_e)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_e)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_e)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_e)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_e)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_e)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_e)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_e)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_e)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_e)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_e)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_e)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_e)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_e)))))

    (:action share_g_f_l1
        :precondition (and (Bg_secret_f)
                           (at_g_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_f))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_f))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_f))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_f))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_f))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_f))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_f))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_f))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_f))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_f))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_f))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_f))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_f))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_f))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_f))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_f))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_f)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_f)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_f)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_f)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_f)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_f)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_f)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_f)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_f)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_f)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_f)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_f)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_f)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_f)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_f)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_f)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_f)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_f)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_f)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_f)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_f)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_f)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_f)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_f)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_f)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_f)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_f)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_f)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_f)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_f)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_f)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_f)))))

    (:action share_g_f_l2
        :precondition (and (Bg_secret_f)
                           (at_g_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_f))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_f))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_f))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_f))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_f))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_f))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_f))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_f))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_f))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_f))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_f))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_f))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_f))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_f))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_f))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_f))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_f)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_f)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_f)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_f)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_f)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_f)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_f)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_f)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_f)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_f)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_f)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_f)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_f)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_f)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_f)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_f)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_f)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_f)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_f)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_f)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_f)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_f)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_f)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_f)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_f)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_f)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_f)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_f)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_f)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_f)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_f)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_f)))))

    (:action share_g_g_l1
        :precondition (and (Bg_secret_g)
                           (at_g_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_g))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_g))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_g))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_g))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_g))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_g))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_g))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_g))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_g))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_g))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_g))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_g))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_g))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_g))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_g))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_g))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_g)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_g)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_g)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_g)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_g)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_g)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_g)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_g)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_g)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_g)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_g)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_g)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_g)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_g)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_g)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_g)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_g)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_g)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_g)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_g)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_g)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_g)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_g)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_g)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_g)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_g)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_g)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_g)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_g)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_g)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_g)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_g)))))

    (:action share_g_g_l2
        :precondition (and (Bg_secret_g)
                           (at_g_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_g))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_g))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_g))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_g))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_g))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_g))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_g))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_g))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_g))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_g))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_g))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_g))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_g))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_g))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_g))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_g))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_g)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_g)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_g)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_g)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_g)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_g)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_g)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_g)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_g)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_g)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_g)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_g)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_g)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_g)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_g)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_g)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_g)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_g)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_g)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_g)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_g)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_g)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_g)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_g)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_g)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_g)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_g)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_g)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_g)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_g)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_g)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_g)))))

    (:action share_g_h_l1
        :precondition (and (Bg_secret_h)
                           (at_g_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_h))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_h))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_h))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_h))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_h))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_h))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_h))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_h))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_h))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_h))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_h))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_h))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_h))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_h))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_h))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_h))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_h)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_h)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_h)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_h)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_h)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_h)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_h)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_h)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_h)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_h)))

                    ; #45374: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_h)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_h)))

                    ; #47558: <==unclosure== 45374 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_h)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_h)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_h)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_h)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_h)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_h)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_h)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_h)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_h)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_h)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_h)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_h)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_h)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_h)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_h)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_h)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_h)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_h)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_h)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_h)))))

    (:action share_g_h_l2
        :precondition (and (at_g_l2)
                           (Bg_secret_h))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_h))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_h))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_h))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_h))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_h))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_h))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_h))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_h))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_h))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_h))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_h))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_h))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_h))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_h))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_h))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_h))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_h)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_h)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_h)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_h)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_h)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_h)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_h)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_h)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_h)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_h)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_h)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_h)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_h)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_h)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_h)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_h)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_h)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_h)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_h)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_h)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_h)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_h)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_h)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_h)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_h)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_h)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_h)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_h)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_h)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_h)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_h)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_h)))))

    (:action share_h_a_l1
        :precondition (and (Bh_secret_a)
                           (at_h_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_a))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_a))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_a))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_a))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_a))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_a))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_a))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_a))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_a)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_a)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_a)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_a)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_a)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_a)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_a)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_a)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_a)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_a)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_a)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_a)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_a)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_a)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_a)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_a)))))

    (:action share_h_a_l2
        :precondition (and (Bh_secret_a)
                           (at_h_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_a))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_a))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_a))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_a))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_a))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_a))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_a))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_a))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_a)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_a)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_a)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_a)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_a)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_a)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_a)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_a)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_a)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_a)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_a)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_a)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_a)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_a)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_a)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_a)))))

    (:action share_h_b_l1
        :precondition (and (Bh_secret_b)
                           (at_h_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_b))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_b))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_b))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_b))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_b))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_b))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_b))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_b))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_b)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_b)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_b)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_b)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_b)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_b)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_b)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_b)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_b)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_b)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_b)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_b)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_b)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_b)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_b)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_b)))))

    (:action share_h_b_l2
        :precondition (and (Bh_secret_b)
                           (at_h_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_b))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_b))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_b))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_b))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_b))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_b))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_b))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_b))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_b)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_b)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_b)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_b)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_b)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_b)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_b)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_b)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_b)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_b)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_b)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_b)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_b)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_b)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_b)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_b)))))

    (:action share_h_c_l1
        :precondition (and (Bh_secret_c)
                           (at_h_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_c))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_c))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_c))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_c))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_c))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_c))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_c))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_c))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_c)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_c)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_c)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_c)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_c)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_c)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_c)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_c)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_c)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_c)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_c)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_c)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_c)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_c)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_c)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_c)))))

    (:action share_h_c_l2
        :precondition (and (Bh_secret_c)
                           (at_h_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_c))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_c))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_c))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_c))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_c))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_c))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_c))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_c))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_c)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_c)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_c)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_c)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_c)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_c)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_c)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_c)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_c)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_c)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_c)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_c)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_c)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_c)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_c)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_c)))))

    (:action share_h_d_l1
        :precondition (and (Bh_secret_d)
                           (at_h_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_d))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_d))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_d))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_d))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_d))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_d))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_d))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_d))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_d)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_d)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_d)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_d)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_d)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_d)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_d)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_d)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_d)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_d)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_d)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_d)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_d)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_d)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_d)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_d)))))

    (:action share_h_d_l2
        :precondition (and (Bh_secret_d)
                           (at_h_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_d))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_d))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_d))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_d))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_d))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_d))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_d))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_d))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_d)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_d)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_d)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_d)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_d)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_d)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_d)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_d)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_d)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_d)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_d)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_d)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_d)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_d)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_d)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_d)))))

    (:action share_h_e_l1
        :precondition (and (Bh_secret_e)
                           (at_h_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_e))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_e))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_e))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_e))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_e))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_e))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_e))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_e))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_e))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_e))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_e))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_e))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_e))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_e))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_e))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_e))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_e)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_e)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_e)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_e)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_e)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_e)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_e)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_e)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_e)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_e)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_e)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_e)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_e)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_e)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_e)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_e)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_e)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_e)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_e)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_e)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_e)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_e)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_e)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_e)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_e)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_e)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_e)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_e)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_e)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_e)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_e)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_e)))))

    (:action share_h_e_l2
        :precondition (and (at_h_l2)
                           (Bh_secret_e))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_e))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_e))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_e))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_e))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_e))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_e))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_e))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_e))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_e))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_e))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_e))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_e))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_e))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_e))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_e))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_e))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_e)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_e)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_e)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_e)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_e)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_e)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_e)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_e)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_e)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_e)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_e)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_e)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_e)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_e)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_e)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_e)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_e)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_e)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_e)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_e)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_e)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_e)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_e)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_e)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_e)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_e)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_e)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_e)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_e)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_e)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_e)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_e)))))

    (:action share_h_f_l1
        :precondition (and (Bh_secret_f)
                           (at_h_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_f))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_f))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_f))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_f))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_f))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_f))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_f))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_f))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_f))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_f))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_f))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_f))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_f))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_f))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_f))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_f))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_f)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_f)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_f)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_f)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_f)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_f)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_f)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_f)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_f)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_f)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_f)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_f)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_f)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_f)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_f)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_f)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_f)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_f)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_f)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_f)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_f)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_f)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_f)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_f)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_f)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_f)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_f)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_f)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_f)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_f)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_f)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_f)))))

    (:action share_h_f_l2
        :precondition (and (at_h_l2)
                           (Bh_secret_f))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_f))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_f))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_f))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_f))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_f))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_f))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_f))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_f))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_f))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_f))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_f))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_f))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_f))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_f))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_f))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_f))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_f)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_f)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_f)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_f)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_f)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_f)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_f)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_f)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_f)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_f)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_f)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_f)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_f)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_f)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_f)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_f)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_f)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_f)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_f)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_f)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_f)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_f)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_f)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_f)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_f)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_f)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_f)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_f)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_f)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_f)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_f)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_f)))))

    (:action share_h_g_l1
        :precondition (and (Bh_secret_g)
                           (at_h_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_g))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_g))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_g))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_g))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_g))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_g))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_g))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_g))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_g))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_g))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_g))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_g))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_g))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_g))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_g))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_g))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_g)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_g)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_g)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_g)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_g)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_g)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_g)))

                    ; #35373: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_g)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_g)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_g)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_g)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_g)))

                    ; #47557: <==unclosure== 35373 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_g)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_g)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_g)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_g)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_g)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_g)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_g)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_g)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_g)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_g)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_g)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_g)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_g)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_g)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_g)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_g)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_g)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_g)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_g)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_g)))))

    (:action share_h_g_l2
        :precondition (and (at_h_l2)
                           (Bh_secret_g))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_g))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_g))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_g))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_g))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_g))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_g))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_g))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_g))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_g))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_g))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_g))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_g))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_g))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_g))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_g))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_g))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_g)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_g)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_g)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_g)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_g)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_g)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_g)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_g)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_g)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_g)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_g)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_g)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_g)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_g)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_g)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_g)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_g)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_g)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_g)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_g)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_g)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_g)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_g)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_g)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_g)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_g)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_g)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_g)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_g)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_g)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_g)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_g)))))

    (:action share_h_h_l1
        :precondition (and (Bh_secret_h)
                           (at_h_l1))
        :effect (and
                    ; #16875: origin
                    (when (and (at_g_l1))
                          (Bg_secret_h))

                    ; #25208: <==closure== 16875 (pos)
                    (when (and (at_g_l1))
                          (Pg_secret_h))

                    ; #29387: <==closure== 71226 (pos)
                    (when (and (at_e_l1))
                          (Pe_secret_h))

                    ; #36751: origin
                    (when (and (at_c_l1))
                          (Bc_secret_h))

                    ; #40173: origin
                    (when (and (at_b_l1))
                          (Bb_secret_h))

                    ; #49982: <==closure== 40173 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_h))

                    ; #56679: <==closure== 88297 (pos)
                    (when (and (at_f_l1))
                          (Pf_secret_h))

                    ; #65285: <==closure== 36751 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_h))

                    ; #65960: origin
                    (when (and (at_h_l1))
                          (Bh_secret_h))

                    ; #71226: origin
                    (when (and (at_e_l1))
                          (Be_secret_h))

                    ; #74565: origin
                    (when (and (at_a_l1))
                          (Ba_secret_h))

                    ; #76029: origin
                    (when (and (at_d_l1))
                          (Bd_secret_h))

                    ; #77434: <==closure== 74565 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_h))

                    ; #80469: <==closure== 65960 (pos)
                    (when (and (at_h_l1))
                          (Ph_secret_h))

                    ; #85879: <==closure== 76029 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_h))

                    ; #88297: origin
                    (when (and (at_f_l1))
                          (Bf_secret_h))

                    ; #12105: <==unclosure== 74399 (neg)
                    (when (and (at_g_l1))
                          (not (Bg_not_secret_h)))

                    ; #14124: <==uncertain_firing== 71226 (pos)
                    (when (and (not (not_at_e_l1)))
                          (not (Pe_not_secret_h)))

                    ; #22112: <==uncertain_firing== 88297 (pos)
                    (when (and (not (not_at_f_l1)))
                          (not (Pf_not_secret_h)))

                    ; #24085: <==unclosure== 59894 (neg)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_h)))

                    ; #25681: <==unclosure== 47318 (neg)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_h)))

                    ; #33042: <==uncertain_firing== 65960 (pos)
                    (when (and (not (not_at_h_l1)))
                          (not (Ph_not_secret_h)))

                    ; #33649: <==unclosure== 76372 (neg)
                    (when (and (at_h_l1))
                          (not (Bh_not_secret_h)))

                    ; #36584: <==unclosure== 22112 (neg)
                    (when (and (not (not_at_f_l1)))
                          (not (Bf_not_secret_h)))

                    ; #44889: <==unclosure== 73836 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_h)))

                    ; #45173: <==uncertain_firing== 74565 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_h)))

                    ; #45374: <==uncertain_firing== 76029 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_h)))

                    ; #47318: <==negation-removal== 74565 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_h)))

                    ; #47558: <==unclosure== 45374 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_h)))

                    ; #47734: <==uncertain_firing== 36751 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_h)))

                    ; #52158: <==unclosure== 45173 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_h)))

                    ; #53969: <==negation-removal== 71226 (pos)
                    (when (and (at_e_l1))
                          (not (Pe_not_secret_h)))

                    ; #56215: <==negation-removal== 76029 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_h)))

                    ; #57268: <==unclosure== 47734 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_h)))

                    ; #59894: <==negation-removal== 36751 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_h)))

                    ; #66312: <==unclosure== 88984 (neg)
                    (when (and (not (not_at_g_l1)))
                          (not (Bg_not_secret_h)))

                    ; #68956: <==unclosure== 78805 (neg)
                    (when (and (at_f_l1))
                          (not (Bf_not_secret_h)))

                    ; #70106: <==unclosure== 56215 (neg)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_h)))

                    ; #70347: <==unclosure== 14124 (neg)
                    (when (and (not (not_at_e_l1)))
                          (not (Be_not_secret_h)))

                    ; #73836: <==uncertain_firing== 40173 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_h)))

                    ; #74399: <==negation-removal== 16875 (pos)
                    (when (and (at_g_l1))
                          (not (Pg_not_secret_h)))

                    ; #76372: <==negation-removal== 65960 (pos)
                    (when (and (at_h_l1))
                          (not (Ph_not_secret_h)))

                    ; #77799: <==negation-removal== 40173 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_h)))

                    ; #78805: <==negation-removal== 88297 (pos)
                    (when (and (at_f_l1))
                          (not (Pf_not_secret_h)))

                    ; #86175: <==unclosure== 53969 (neg)
                    (when (and (at_e_l1))
                          (not (Be_not_secret_h)))

                    ; #86338: <==unclosure== 77799 (neg)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_h)))

                    ; #87651: <==unclosure== 33042 (neg)
                    (when (and (not (not_at_h_l1)))
                          (not (Bh_not_secret_h)))

                    ; #88984: <==uncertain_firing== 16875 (pos)
                    (when (and (not (not_at_g_l1)))
                          (not (Pg_not_secret_h)))))

    (:action share_h_h_l2
        :precondition (and (Bh_secret_h)
                           (at_h_l2))
        :effect (and
                    ; #11249: <==closure== 35073 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_h))

                    ; #14421: <==closure== 41402 (pos)
                    (when (and (at_e_l2))
                          (Pe_secret_h))

                    ; #19375: origin
                    (when (and (at_f_l2))
                          (Bf_secret_h))

                    ; #19915: origin
                    (when (and (at_b_l2))
                          (Bb_secret_h))

                    ; #23202: <==closure== 73461 (pos)
                    (when (and (at_h_l2))
                          (Ph_secret_h))

                    ; #32725: <==closure== 19375 (pos)
                    (when (and (at_f_l2))
                          (Pf_secret_h))

                    ; #35073: origin
                    (when (and (at_a_l2))
                          (Ba_secret_h))

                    ; #41402: origin
                    (when (and (at_e_l2))
                          (Be_secret_h))

                    ; #43541: origin
                    (when (and (at_g_l2))
                          (Bg_secret_h))

                    ; #44610: <==closure== 72416 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_h))

                    ; #53454: <==closure== 69245 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_h))

                    ; #69245: origin
                    (when (and (at_d_l2))
                          (Bd_secret_h))

                    ; #72416: origin
                    (when (and (at_c_l2))
                          (Bc_secret_h))

                    ; #73461: origin
                    (when (and (at_h_l2))
                          (Bh_secret_h))

                    ; #75708: <==closure== 43541 (pos)
                    (when (and (at_g_l2))
                          (Pg_secret_h))

                    ; #79557: <==closure== 19915 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_h))

                    ; #12132: <==negation-removal== 41402 (pos)
                    (when (and (at_e_l2))
                          (not (Pe_not_secret_h)))

                    ; #12660: <==uncertain_firing== 73461 (pos)
                    (when (and (not (not_at_h_l2)))
                          (not (Ph_not_secret_h)))

                    ; #14221: <==unclosure== 55088 (neg)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_h)))

                    ; #14339: <==negation-removal== 19915 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_h)))

                    ; #22461: <==uncertain_firing== 69245 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_h)))

                    ; #23757: <==unclosure== 28915 (neg)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_h)))

                    ; #28915: <==negation-removal== 69245 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_h)))

                    ; #30253: <==unclosure== 48214 (neg)
                    (when (and (not (not_at_g_l2)))
                          (not (Bg_not_secret_h)))

                    ; #31652: <==unclosure== 55680 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_h)))

                    ; #36397: <==unclosure== 22461 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_h)))

                    ; #38489: <==negation-removal== 72416 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_h)))

                    ; #38540: <==negation-removal== 73461 (pos)
                    (when (and (at_h_l2))
                          (not (Ph_not_secret_h)))

                    ; #38761: <==unclosure== 98689 (neg)
                    (when (and (not (not_at_f_l2)))
                          (not (Bf_not_secret_h)))

                    ; #40408: <==unclosure== 61057 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_h)))

                    ; #41282: <==unclosure== 73531 (neg)
                    (when (and (at_f_l2))
                          (not (Bf_not_secret_h)))

                    ; #44794: <==uncertain_firing== 19915 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_h)))

                    ; #48214: <==uncertain_firing== 43541 (pos)
                    (when (and (not (not_at_g_l2)))
                          (not (Pg_not_secret_h)))

                    ; #51591: <==unclosure== 55358 (neg)
                    (when (and (not (not_at_e_l2)))
                          (not (Be_not_secret_h)))

                    ; #54902: <==negation-removal== 43541 (pos)
                    (when (and (at_g_l2))
                          (not (Pg_not_secret_h)))

                    ; #55088: <==negation-removal== 35073 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_h)))

                    ; #55358: <==uncertain_firing== 41402 (pos)
                    (when (and (not (not_at_e_l2)))
                          (not (Pe_not_secret_h)))

                    ; #55680: <==uncertain_firing== 72416 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_h)))

                    ; #58943: <==unclosure== 54902 (neg)
                    (when (and (at_g_l2))
                          (not (Bg_not_secret_h)))

                    ; #61057: <==uncertain_firing== 35073 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_h)))

                    ; #63277: <==unclosure== 12660 (neg)
                    (when (and (not (not_at_h_l2)))
                          (not (Bh_not_secret_h)))

                    ; #67298: <==unclosure== 38489 (neg)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_h)))

                    ; #72786: <==unclosure== 12132 (neg)
                    (when (and (at_e_l2))
                          (not (Be_not_secret_h)))

                    ; #73531: <==negation-removal== 19375 (pos)
                    (when (and (at_f_l2))
                          (not (Pf_not_secret_h)))

                    ; #76347: <==unclosure== 14339 (neg)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_h)))

                    ; #87686: <==unclosure== 44794 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_h)))

                    ; #98689: <==uncertain_firing== 19375 (pos)
                    (when (and (not (not_at_f_l2)))
                          (not (Pf_not_secret_h)))

                    ; #99909: <==unclosure== 38540 (neg)
                    (when (and (at_h_l2))
                          (not (Bh_not_secret_h)))))

)