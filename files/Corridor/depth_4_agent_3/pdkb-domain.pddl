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
        (Ba_Ba_Ba_Ba_not_secret)
        (Ba_Ba_Ba_Ba_secret)
        (Ba_Ba_Ba_Bb_not_secret)
        (Ba_Ba_Ba_Bb_secret)
        (Ba_Ba_Ba_Bc_not_secret)
        (Ba_Ba_Ba_Bc_secret)
        (Ba_Ba_Ba_Pa_not_secret)
        (Ba_Ba_Ba_Pa_secret)
        (Ba_Ba_Ba_Pb_not_secret)
        (Ba_Ba_Ba_Pb_secret)
        (Ba_Ba_Ba_Pc_not_secret)
        (Ba_Ba_Ba_Pc_secret)
        (Ba_Ba_Ba_secret)
        (Ba_Ba_Bb_not_secret)
        (Ba_Ba_Bb_Ba_not_secret)
        (Ba_Ba_Bb_Ba_secret)
        (Ba_Ba_Bb_Bb_not_secret)
        (Ba_Ba_Bb_Bb_secret)
        (Ba_Ba_Bb_Bc_not_secret)
        (Ba_Ba_Bb_Bc_secret)
        (Ba_Ba_Bb_Pa_not_secret)
        (Ba_Ba_Bb_Pa_secret)
        (Ba_Ba_Bb_Pb_not_secret)
        (Ba_Ba_Bb_Pb_secret)
        (Ba_Ba_Bb_Pc_not_secret)
        (Ba_Ba_Bb_Pc_secret)
        (Ba_Ba_Bb_secret)
        (Ba_Ba_Bc_not_secret)
        (Ba_Ba_Bc_Ba_not_secret)
        (Ba_Ba_Bc_Ba_secret)
        (Ba_Ba_Bc_Bb_not_secret)
        (Ba_Ba_Bc_Bb_secret)
        (Ba_Ba_Bc_Bc_not_secret)
        (Ba_Ba_Bc_Bc_secret)
        (Ba_Ba_Bc_Pa_not_secret)
        (Ba_Ba_Bc_Pa_secret)
        (Ba_Ba_Bc_Pb_not_secret)
        (Ba_Ba_Bc_Pb_secret)
        (Ba_Ba_Bc_Pc_not_secret)
        (Ba_Ba_Bc_Pc_secret)
        (Ba_Ba_Bc_secret)
        (Ba_Ba_Pa_not_secret)
        (Ba_Ba_Pa_Ba_not_secret)
        (Ba_Ba_Pa_Ba_secret)
        (Ba_Ba_Pa_Bb_not_secret)
        (Ba_Ba_Pa_Bb_secret)
        (Ba_Ba_Pa_Bc_not_secret)
        (Ba_Ba_Pa_Bc_secret)
        (Ba_Ba_Pa_Pa_not_secret)
        (Ba_Ba_Pa_Pa_secret)
        (Ba_Ba_Pa_Pb_not_secret)
        (Ba_Ba_Pa_Pb_secret)
        (Ba_Ba_Pa_Pc_not_secret)
        (Ba_Ba_Pa_Pc_secret)
        (Ba_Ba_Pa_secret)
        (Ba_Ba_Pb_not_secret)
        (Ba_Ba_Pb_Ba_not_secret)
        (Ba_Ba_Pb_Ba_secret)
        (Ba_Ba_Pb_Bb_not_secret)
        (Ba_Ba_Pb_Bb_secret)
        (Ba_Ba_Pb_Bc_not_secret)
        (Ba_Ba_Pb_Bc_secret)
        (Ba_Ba_Pb_Pa_not_secret)
        (Ba_Ba_Pb_Pa_secret)
        (Ba_Ba_Pb_Pb_not_secret)
        (Ba_Ba_Pb_Pb_secret)
        (Ba_Ba_Pb_Pc_not_secret)
        (Ba_Ba_Pb_Pc_secret)
        (Ba_Ba_Pb_secret)
        (Ba_Ba_Pc_not_secret)
        (Ba_Ba_Pc_Ba_not_secret)
        (Ba_Ba_Pc_Ba_secret)
        (Ba_Ba_Pc_Bb_not_secret)
        (Ba_Ba_Pc_Bb_secret)
        (Ba_Ba_Pc_Bc_not_secret)
        (Ba_Ba_Pc_Bc_secret)
        (Ba_Ba_Pc_Pa_not_secret)
        (Ba_Ba_Pc_Pa_secret)
        (Ba_Ba_Pc_Pb_not_secret)
        (Ba_Ba_Pc_Pb_secret)
        (Ba_Ba_Pc_Pc_not_secret)
        (Ba_Ba_Pc_Pc_secret)
        (Ba_Ba_Pc_secret)
        (Ba_Ba_secret)
        (Ba_Bb_not_secret)
        (Ba_Bb_Ba_not_secret)
        (Ba_Bb_Ba_Ba_not_secret)
        (Ba_Bb_Ba_Ba_secret)
        (Ba_Bb_Ba_Bb_not_secret)
        (Ba_Bb_Ba_Bb_secret)
        (Ba_Bb_Ba_Bc_not_secret)
        (Ba_Bb_Ba_Bc_secret)
        (Ba_Bb_Ba_Pa_not_secret)
        (Ba_Bb_Ba_Pa_secret)
        (Ba_Bb_Ba_Pb_not_secret)
        (Ba_Bb_Ba_Pb_secret)
        (Ba_Bb_Ba_Pc_not_secret)
        (Ba_Bb_Ba_Pc_secret)
        (Ba_Bb_Ba_secret)
        (Ba_Bb_Bb_not_secret)
        (Ba_Bb_Bb_Ba_not_secret)
        (Ba_Bb_Bb_Ba_secret)
        (Ba_Bb_Bb_Bb_not_secret)
        (Ba_Bb_Bb_Bb_secret)
        (Ba_Bb_Bb_Bc_not_secret)
        (Ba_Bb_Bb_Bc_secret)
        (Ba_Bb_Bb_Pa_not_secret)
        (Ba_Bb_Bb_Pa_secret)
        (Ba_Bb_Bb_Pb_not_secret)
        (Ba_Bb_Bb_Pb_secret)
        (Ba_Bb_Bb_Pc_not_secret)
        (Ba_Bb_Bb_Pc_secret)
        (Ba_Bb_Bb_secret)
        (Ba_Bb_Bc_not_secret)
        (Ba_Bb_Bc_Ba_not_secret)
        (Ba_Bb_Bc_Ba_secret)
        (Ba_Bb_Bc_Bb_not_secret)
        (Ba_Bb_Bc_Bb_secret)
        (Ba_Bb_Bc_Bc_not_secret)
        (Ba_Bb_Bc_Bc_secret)
        (Ba_Bb_Bc_Pa_not_secret)
        (Ba_Bb_Bc_Pa_secret)
        (Ba_Bb_Bc_Pb_not_secret)
        (Ba_Bb_Bc_Pb_secret)
        (Ba_Bb_Bc_Pc_not_secret)
        (Ba_Bb_Bc_Pc_secret)
        (Ba_Bb_Bc_secret)
        (Ba_Bb_Pa_not_secret)
        (Ba_Bb_Pa_Ba_not_secret)
        (Ba_Bb_Pa_Ba_secret)
        (Ba_Bb_Pa_Bb_not_secret)
        (Ba_Bb_Pa_Bb_secret)
        (Ba_Bb_Pa_Bc_not_secret)
        (Ba_Bb_Pa_Bc_secret)
        (Ba_Bb_Pa_Pa_not_secret)
        (Ba_Bb_Pa_Pa_secret)
        (Ba_Bb_Pa_Pb_not_secret)
        (Ba_Bb_Pa_Pb_secret)
        (Ba_Bb_Pa_Pc_not_secret)
        (Ba_Bb_Pa_Pc_secret)
        (Ba_Bb_Pa_secret)
        (Ba_Bb_Pb_not_secret)
        (Ba_Bb_Pb_Ba_not_secret)
        (Ba_Bb_Pb_Ba_secret)
        (Ba_Bb_Pb_Bb_not_secret)
        (Ba_Bb_Pb_Bb_secret)
        (Ba_Bb_Pb_Bc_not_secret)
        (Ba_Bb_Pb_Bc_secret)
        (Ba_Bb_Pb_Pa_not_secret)
        (Ba_Bb_Pb_Pa_secret)
        (Ba_Bb_Pb_Pb_not_secret)
        (Ba_Bb_Pb_Pb_secret)
        (Ba_Bb_Pb_Pc_not_secret)
        (Ba_Bb_Pb_Pc_secret)
        (Ba_Bb_Pb_secret)
        (Ba_Bb_Pc_not_secret)
        (Ba_Bb_Pc_Ba_not_secret)
        (Ba_Bb_Pc_Ba_secret)
        (Ba_Bb_Pc_Bb_not_secret)
        (Ba_Bb_Pc_Bb_secret)
        (Ba_Bb_Pc_Bc_not_secret)
        (Ba_Bb_Pc_Bc_secret)
        (Ba_Bb_Pc_Pa_not_secret)
        (Ba_Bb_Pc_Pa_secret)
        (Ba_Bb_Pc_Pb_not_secret)
        (Ba_Bb_Pc_Pb_secret)
        (Ba_Bb_Pc_Pc_not_secret)
        (Ba_Bb_Pc_Pc_secret)
        (Ba_Bb_Pc_secret)
        (Ba_Bb_secret)
        (Ba_Bc_not_secret)
        (Ba_Bc_Ba_not_secret)
        (Ba_Bc_Ba_Ba_not_secret)
        (Ba_Bc_Ba_Ba_secret)
        (Ba_Bc_Ba_Bb_not_secret)
        (Ba_Bc_Ba_Bb_secret)
        (Ba_Bc_Ba_Bc_not_secret)
        (Ba_Bc_Ba_Bc_secret)
        (Ba_Bc_Ba_Pa_not_secret)
        (Ba_Bc_Ba_Pa_secret)
        (Ba_Bc_Ba_Pb_not_secret)
        (Ba_Bc_Ba_Pb_secret)
        (Ba_Bc_Ba_Pc_not_secret)
        (Ba_Bc_Ba_Pc_secret)
        (Ba_Bc_Ba_secret)
        (Ba_Bc_Bb_not_secret)
        (Ba_Bc_Bb_Ba_not_secret)
        (Ba_Bc_Bb_Ba_secret)
        (Ba_Bc_Bb_Bb_not_secret)
        (Ba_Bc_Bb_Bb_secret)
        (Ba_Bc_Bb_Bc_not_secret)
        (Ba_Bc_Bb_Bc_secret)
        (Ba_Bc_Bb_Pa_not_secret)
        (Ba_Bc_Bb_Pa_secret)
        (Ba_Bc_Bb_Pb_not_secret)
        (Ba_Bc_Bb_Pb_secret)
        (Ba_Bc_Bb_Pc_not_secret)
        (Ba_Bc_Bb_Pc_secret)
        (Ba_Bc_Bb_secret)
        (Ba_Bc_Bc_not_secret)
        (Ba_Bc_Bc_Ba_not_secret)
        (Ba_Bc_Bc_Ba_secret)
        (Ba_Bc_Bc_Bb_not_secret)
        (Ba_Bc_Bc_Bb_secret)
        (Ba_Bc_Bc_Bc_not_secret)
        (Ba_Bc_Bc_Bc_secret)
        (Ba_Bc_Bc_Pa_not_secret)
        (Ba_Bc_Bc_Pa_secret)
        (Ba_Bc_Bc_Pb_not_secret)
        (Ba_Bc_Bc_Pb_secret)
        (Ba_Bc_Bc_Pc_not_secret)
        (Ba_Bc_Bc_Pc_secret)
        (Ba_Bc_Bc_secret)
        (Ba_Bc_Pa_not_secret)
        (Ba_Bc_Pa_Ba_not_secret)
        (Ba_Bc_Pa_Ba_secret)
        (Ba_Bc_Pa_Bb_not_secret)
        (Ba_Bc_Pa_Bb_secret)
        (Ba_Bc_Pa_Bc_not_secret)
        (Ba_Bc_Pa_Bc_secret)
        (Ba_Bc_Pa_Pa_not_secret)
        (Ba_Bc_Pa_Pa_secret)
        (Ba_Bc_Pa_Pb_not_secret)
        (Ba_Bc_Pa_Pb_secret)
        (Ba_Bc_Pa_Pc_not_secret)
        (Ba_Bc_Pa_Pc_secret)
        (Ba_Bc_Pa_secret)
        (Ba_Bc_Pb_not_secret)
        (Ba_Bc_Pb_Ba_not_secret)
        (Ba_Bc_Pb_Ba_secret)
        (Ba_Bc_Pb_Bb_not_secret)
        (Ba_Bc_Pb_Bb_secret)
        (Ba_Bc_Pb_Bc_not_secret)
        (Ba_Bc_Pb_Bc_secret)
        (Ba_Bc_Pb_Pa_not_secret)
        (Ba_Bc_Pb_Pa_secret)
        (Ba_Bc_Pb_Pb_not_secret)
        (Ba_Bc_Pb_Pb_secret)
        (Ba_Bc_Pb_Pc_not_secret)
        (Ba_Bc_Pb_Pc_secret)
        (Ba_Bc_Pb_secret)
        (Ba_Bc_Pc_not_secret)
        (Ba_Bc_Pc_Ba_not_secret)
        (Ba_Bc_Pc_Ba_secret)
        (Ba_Bc_Pc_Bb_not_secret)
        (Ba_Bc_Pc_Bb_secret)
        (Ba_Bc_Pc_Bc_not_secret)
        (Ba_Bc_Pc_Bc_secret)
        (Ba_Bc_Pc_Pa_not_secret)
        (Ba_Bc_Pc_Pa_secret)
        (Ba_Bc_Pc_Pb_not_secret)
        (Ba_Bc_Pc_Pb_secret)
        (Ba_Bc_Pc_Pc_not_secret)
        (Ba_Bc_Pc_Pc_secret)
        (Ba_Bc_Pc_secret)
        (Ba_Bc_secret)
        (Ba_Pa_not_secret)
        (Ba_Pa_Ba_not_secret)
        (Ba_Pa_Ba_Ba_not_secret)
        (Ba_Pa_Ba_Ba_secret)
        (Ba_Pa_Ba_Bb_not_secret)
        (Ba_Pa_Ba_Bb_secret)
        (Ba_Pa_Ba_Bc_not_secret)
        (Ba_Pa_Ba_Bc_secret)
        (Ba_Pa_Ba_Pa_not_secret)
        (Ba_Pa_Ba_Pa_secret)
        (Ba_Pa_Ba_Pb_not_secret)
        (Ba_Pa_Ba_Pb_secret)
        (Ba_Pa_Ba_Pc_not_secret)
        (Ba_Pa_Ba_Pc_secret)
        (Ba_Pa_Ba_secret)
        (Ba_Pa_Bb_not_secret)
        (Ba_Pa_Bb_Ba_not_secret)
        (Ba_Pa_Bb_Ba_secret)
        (Ba_Pa_Bb_Bb_not_secret)
        (Ba_Pa_Bb_Bb_secret)
        (Ba_Pa_Bb_Bc_not_secret)
        (Ba_Pa_Bb_Bc_secret)
        (Ba_Pa_Bb_Pa_not_secret)
        (Ba_Pa_Bb_Pa_secret)
        (Ba_Pa_Bb_Pb_not_secret)
        (Ba_Pa_Bb_Pb_secret)
        (Ba_Pa_Bb_Pc_not_secret)
        (Ba_Pa_Bb_Pc_secret)
        (Ba_Pa_Bb_secret)
        (Ba_Pa_Bc_not_secret)
        (Ba_Pa_Bc_Ba_not_secret)
        (Ba_Pa_Bc_Ba_secret)
        (Ba_Pa_Bc_Bb_not_secret)
        (Ba_Pa_Bc_Bb_secret)
        (Ba_Pa_Bc_Bc_not_secret)
        (Ba_Pa_Bc_Bc_secret)
        (Ba_Pa_Bc_Pa_not_secret)
        (Ba_Pa_Bc_Pa_secret)
        (Ba_Pa_Bc_Pb_not_secret)
        (Ba_Pa_Bc_Pb_secret)
        (Ba_Pa_Bc_Pc_not_secret)
        (Ba_Pa_Bc_Pc_secret)
        (Ba_Pa_Bc_secret)
        (Ba_Pa_Pa_not_secret)
        (Ba_Pa_Pa_Ba_not_secret)
        (Ba_Pa_Pa_Ba_secret)
        (Ba_Pa_Pa_Bb_not_secret)
        (Ba_Pa_Pa_Bb_secret)
        (Ba_Pa_Pa_Bc_not_secret)
        (Ba_Pa_Pa_Bc_secret)
        (Ba_Pa_Pa_Pa_not_secret)
        (Ba_Pa_Pa_Pa_secret)
        (Ba_Pa_Pa_Pb_not_secret)
        (Ba_Pa_Pa_Pb_secret)
        (Ba_Pa_Pa_Pc_not_secret)
        (Ba_Pa_Pa_Pc_secret)
        (Ba_Pa_Pa_secret)
        (Ba_Pa_Pb_not_secret)
        (Ba_Pa_Pb_Ba_not_secret)
        (Ba_Pa_Pb_Ba_secret)
        (Ba_Pa_Pb_Bb_not_secret)
        (Ba_Pa_Pb_Bb_secret)
        (Ba_Pa_Pb_Bc_not_secret)
        (Ba_Pa_Pb_Bc_secret)
        (Ba_Pa_Pb_Pa_not_secret)
        (Ba_Pa_Pb_Pa_secret)
        (Ba_Pa_Pb_Pb_not_secret)
        (Ba_Pa_Pb_Pb_secret)
        (Ba_Pa_Pb_Pc_not_secret)
        (Ba_Pa_Pb_Pc_secret)
        (Ba_Pa_Pb_secret)
        (Ba_Pa_Pc_not_secret)
        (Ba_Pa_Pc_Ba_not_secret)
        (Ba_Pa_Pc_Ba_secret)
        (Ba_Pa_Pc_Bb_not_secret)
        (Ba_Pa_Pc_Bb_secret)
        (Ba_Pa_Pc_Bc_not_secret)
        (Ba_Pa_Pc_Bc_secret)
        (Ba_Pa_Pc_Pa_not_secret)
        (Ba_Pa_Pc_Pa_secret)
        (Ba_Pa_Pc_Pb_not_secret)
        (Ba_Pa_Pc_Pb_secret)
        (Ba_Pa_Pc_Pc_not_secret)
        (Ba_Pa_Pc_Pc_secret)
        (Ba_Pa_Pc_secret)
        (Ba_Pa_secret)
        (Ba_Pb_not_secret)
        (Ba_Pb_Ba_not_secret)
        (Ba_Pb_Ba_Ba_not_secret)
        (Ba_Pb_Ba_Ba_secret)
        (Ba_Pb_Ba_Bb_not_secret)
        (Ba_Pb_Ba_Bb_secret)
        (Ba_Pb_Ba_Bc_not_secret)
        (Ba_Pb_Ba_Bc_secret)
        (Ba_Pb_Ba_Pa_not_secret)
        (Ba_Pb_Ba_Pa_secret)
        (Ba_Pb_Ba_Pb_not_secret)
        (Ba_Pb_Ba_Pb_secret)
        (Ba_Pb_Ba_Pc_not_secret)
        (Ba_Pb_Ba_Pc_secret)
        (Ba_Pb_Ba_secret)
        (Ba_Pb_Bb_not_secret)
        (Ba_Pb_Bb_Ba_not_secret)
        (Ba_Pb_Bb_Ba_secret)
        (Ba_Pb_Bb_Bb_not_secret)
        (Ba_Pb_Bb_Bb_secret)
        (Ba_Pb_Bb_Bc_not_secret)
        (Ba_Pb_Bb_Bc_secret)
        (Ba_Pb_Bb_Pa_not_secret)
        (Ba_Pb_Bb_Pa_secret)
        (Ba_Pb_Bb_Pb_not_secret)
        (Ba_Pb_Bb_Pb_secret)
        (Ba_Pb_Bb_Pc_not_secret)
        (Ba_Pb_Bb_Pc_secret)
        (Ba_Pb_Bb_secret)
        (Ba_Pb_Bc_not_secret)
        (Ba_Pb_Bc_Ba_not_secret)
        (Ba_Pb_Bc_Ba_secret)
        (Ba_Pb_Bc_Bb_not_secret)
        (Ba_Pb_Bc_Bb_secret)
        (Ba_Pb_Bc_Bc_not_secret)
        (Ba_Pb_Bc_Bc_secret)
        (Ba_Pb_Bc_Pa_not_secret)
        (Ba_Pb_Bc_Pa_secret)
        (Ba_Pb_Bc_Pb_not_secret)
        (Ba_Pb_Bc_Pb_secret)
        (Ba_Pb_Bc_Pc_not_secret)
        (Ba_Pb_Bc_Pc_secret)
        (Ba_Pb_Bc_secret)
        (Ba_Pb_Pa_not_secret)
        (Ba_Pb_Pa_Ba_not_secret)
        (Ba_Pb_Pa_Ba_secret)
        (Ba_Pb_Pa_Bb_not_secret)
        (Ba_Pb_Pa_Bb_secret)
        (Ba_Pb_Pa_Bc_not_secret)
        (Ba_Pb_Pa_Bc_secret)
        (Ba_Pb_Pa_Pa_not_secret)
        (Ba_Pb_Pa_Pa_secret)
        (Ba_Pb_Pa_Pb_not_secret)
        (Ba_Pb_Pa_Pb_secret)
        (Ba_Pb_Pa_Pc_not_secret)
        (Ba_Pb_Pa_Pc_secret)
        (Ba_Pb_Pa_secret)
        (Ba_Pb_Pb_not_secret)
        (Ba_Pb_Pb_Ba_not_secret)
        (Ba_Pb_Pb_Ba_secret)
        (Ba_Pb_Pb_Bb_not_secret)
        (Ba_Pb_Pb_Bb_secret)
        (Ba_Pb_Pb_Bc_not_secret)
        (Ba_Pb_Pb_Bc_secret)
        (Ba_Pb_Pb_Pa_not_secret)
        (Ba_Pb_Pb_Pa_secret)
        (Ba_Pb_Pb_Pb_not_secret)
        (Ba_Pb_Pb_Pb_secret)
        (Ba_Pb_Pb_Pc_not_secret)
        (Ba_Pb_Pb_Pc_secret)
        (Ba_Pb_Pb_secret)
        (Ba_Pb_Pc_not_secret)
        (Ba_Pb_Pc_Ba_not_secret)
        (Ba_Pb_Pc_Ba_secret)
        (Ba_Pb_Pc_Bb_not_secret)
        (Ba_Pb_Pc_Bb_secret)
        (Ba_Pb_Pc_Bc_not_secret)
        (Ba_Pb_Pc_Bc_secret)
        (Ba_Pb_Pc_Pa_not_secret)
        (Ba_Pb_Pc_Pa_secret)
        (Ba_Pb_Pc_Pb_not_secret)
        (Ba_Pb_Pc_Pb_secret)
        (Ba_Pb_Pc_Pc_not_secret)
        (Ba_Pb_Pc_Pc_secret)
        (Ba_Pb_Pc_secret)
        (Ba_Pb_secret)
        (Ba_Pc_not_secret)
        (Ba_Pc_Ba_not_secret)
        (Ba_Pc_Ba_Ba_not_secret)
        (Ba_Pc_Ba_Ba_secret)
        (Ba_Pc_Ba_Bb_not_secret)
        (Ba_Pc_Ba_Bb_secret)
        (Ba_Pc_Ba_Bc_not_secret)
        (Ba_Pc_Ba_Bc_secret)
        (Ba_Pc_Ba_Pa_not_secret)
        (Ba_Pc_Ba_Pa_secret)
        (Ba_Pc_Ba_Pb_not_secret)
        (Ba_Pc_Ba_Pb_secret)
        (Ba_Pc_Ba_Pc_not_secret)
        (Ba_Pc_Ba_Pc_secret)
        (Ba_Pc_Ba_secret)
        (Ba_Pc_Bb_not_secret)
        (Ba_Pc_Bb_Ba_not_secret)
        (Ba_Pc_Bb_Ba_secret)
        (Ba_Pc_Bb_Bb_not_secret)
        (Ba_Pc_Bb_Bb_secret)
        (Ba_Pc_Bb_Bc_not_secret)
        (Ba_Pc_Bb_Bc_secret)
        (Ba_Pc_Bb_Pa_not_secret)
        (Ba_Pc_Bb_Pa_secret)
        (Ba_Pc_Bb_Pb_not_secret)
        (Ba_Pc_Bb_Pb_secret)
        (Ba_Pc_Bb_Pc_not_secret)
        (Ba_Pc_Bb_Pc_secret)
        (Ba_Pc_Bb_secret)
        (Ba_Pc_Bc_not_secret)
        (Ba_Pc_Bc_Ba_not_secret)
        (Ba_Pc_Bc_Ba_secret)
        (Ba_Pc_Bc_Bb_not_secret)
        (Ba_Pc_Bc_Bb_secret)
        (Ba_Pc_Bc_Bc_not_secret)
        (Ba_Pc_Bc_Bc_secret)
        (Ba_Pc_Bc_Pa_not_secret)
        (Ba_Pc_Bc_Pa_secret)
        (Ba_Pc_Bc_Pb_not_secret)
        (Ba_Pc_Bc_Pb_secret)
        (Ba_Pc_Bc_Pc_not_secret)
        (Ba_Pc_Bc_Pc_secret)
        (Ba_Pc_Bc_secret)
        (Ba_Pc_Pa_not_secret)
        (Ba_Pc_Pa_Ba_not_secret)
        (Ba_Pc_Pa_Ba_secret)
        (Ba_Pc_Pa_Bb_not_secret)
        (Ba_Pc_Pa_Bb_secret)
        (Ba_Pc_Pa_Bc_not_secret)
        (Ba_Pc_Pa_Bc_secret)
        (Ba_Pc_Pa_Pa_not_secret)
        (Ba_Pc_Pa_Pa_secret)
        (Ba_Pc_Pa_Pb_not_secret)
        (Ba_Pc_Pa_Pb_secret)
        (Ba_Pc_Pa_Pc_not_secret)
        (Ba_Pc_Pa_Pc_secret)
        (Ba_Pc_Pa_secret)
        (Ba_Pc_Pb_not_secret)
        (Ba_Pc_Pb_Ba_not_secret)
        (Ba_Pc_Pb_Ba_secret)
        (Ba_Pc_Pb_Bb_not_secret)
        (Ba_Pc_Pb_Bb_secret)
        (Ba_Pc_Pb_Bc_not_secret)
        (Ba_Pc_Pb_Bc_secret)
        (Ba_Pc_Pb_Pa_not_secret)
        (Ba_Pc_Pb_Pa_secret)
        (Ba_Pc_Pb_Pb_not_secret)
        (Ba_Pc_Pb_Pb_secret)
        (Ba_Pc_Pb_Pc_not_secret)
        (Ba_Pc_Pb_Pc_secret)
        (Ba_Pc_Pb_secret)
        (Ba_Pc_Pc_not_secret)
        (Ba_Pc_Pc_Ba_not_secret)
        (Ba_Pc_Pc_Ba_secret)
        (Ba_Pc_Pc_Bb_not_secret)
        (Ba_Pc_Pc_Bb_secret)
        (Ba_Pc_Pc_Bc_not_secret)
        (Ba_Pc_Pc_Bc_secret)
        (Ba_Pc_Pc_Pa_not_secret)
        (Ba_Pc_Pc_Pa_secret)
        (Ba_Pc_Pc_Pb_not_secret)
        (Ba_Pc_Pc_Pb_secret)
        (Ba_Pc_Pc_Pc_not_secret)
        (Ba_Pc_Pc_Pc_secret)
        (Ba_Pc_Pc_secret)
        (Ba_Pc_secret)
        (Ba_secret)
        (Bb_not_secret)
        (Bb_Ba_not_secret)
        (Bb_Ba_Ba_not_secret)
        (Bb_Ba_Ba_Ba_not_secret)
        (Bb_Ba_Ba_Ba_secret)
        (Bb_Ba_Ba_Bb_not_secret)
        (Bb_Ba_Ba_Bb_secret)
        (Bb_Ba_Ba_Bc_not_secret)
        (Bb_Ba_Ba_Bc_secret)
        (Bb_Ba_Ba_Pa_not_secret)
        (Bb_Ba_Ba_Pa_secret)
        (Bb_Ba_Ba_Pb_not_secret)
        (Bb_Ba_Ba_Pb_secret)
        (Bb_Ba_Ba_Pc_not_secret)
        (Bb_Ba_Ba_Pc_secret)
        (Bb_Ba_Ba_secret)
        (Bb_Ba_Bb_not_secret)
        (Bb_Ba_Bb_Ba_not_secret)
        (Bb_Ba_Bb_Ba_secret)
        (Bb_Ba_Bb_Bb_not_secret)
        (Bb_Ba_Bb_Bb_secret)
        (Bb_Ba_Bb_Bc_not_secret)
        (Bb_Ba_Bb_Bc_secret)
        (Bb_Ba_Bb_Pa_not_secret)
        (Bb_Ba_Bb_Pa_secret)
        (Bb_Ba_Bb_Pb_not_secret)
        (Bb_Ba_Bb_Pb_secret)
        (Bb_Ba_Bb_Pc_not_secret)
        (Bb_Ba_Bb_Pc_secret)
        (Bb_Ba_Bb_secret)
        (Bb_Ba_Bc_not_secret)
        (Bb_Ba_Bc_Ba_not_secret)
        (Bb_Ba_Bc_Ba_secret)
        (Bb_Ba_Bc_Bb_not_secret)
        (Bb_Ba_Bc_Bb_secret)
        (Bb_Ba_Bc_Bc_not_secret)
        (Bb_Ba_Bc_Bc_secret)
        (Bb_Ba_Bc_Pa_not_secret)
        (Bb_Ba_Bc_Pa_secret)
        (Bb_Ba_Bc_Pb_not_secret)
        (Bb_Ba_Bc_Pb_secret)
        (Bb_Ba_Bc_Pc_not_secret)
        (Bb_Ba_Bc_Pc_secret)
        (Bb_Ba_Bc_secret)
        (Bb_Ba_Pa_not_secret)
        (Bb_Ba_Pa_Ba_not_secret)
        (Bb_Ba_Pa_Ba_secret)
        (Bb_Ba_Pa_Bb_not_secret)
        (Bb_Ba_Pa_Bb_secret)
        (Bb_Ba_Pa_Bc_not_secret)
        (Bb_Ba_Pa_Bc_secret)
        (Bb_Ba_Pa_Pa_not_secret)
        (Bb_Ba_Pa_Pa_secret)
        (Bb_Ba_Pa_Pb_not_secret)
        (Bb_Ba_Pa_Pb_secret)
        (Bb_Ba_Pa_Pc_not_secret)
        (Bb_Ba_Pa_Pc_secret)
        (Bb_Ba_Pa_secret)
        (Bb_Ba_Pb_not_secret)
        (Bb_Ba_Pb_Ba_not_secret)
        (Bb_Ba_Pb_Ba_secret)
        (Bb_Ba_Pb_Bb_not_secret)
        (Bb_Ba_Pb_Bb_secret)
        (Bb_Ba_Pb_Bc_not_secret)
        (Bb_Ba_Pb_Bc_secret)
        (Bb_Ba_Pb_Pa_not_secret)
        (Bb_Ba_Pb_Pa_secret)
        (Bb_Ba_Pb_Pb_not_secret)
        (Bb_Ba_Pb_Pb_secret)
        (Bb_Ba_Pb_Pc_not_secret)
        (Bb_Ba_Pb_Pc_secret)
        (Bb_Ba_Pb_secret)
        (Bb_Ba_Pc_not_secret)
        (Bb_Ba_Pc_Ba_not_secret)
        (Bb_Ba_Pc_Ba_secret)
        (Bb_Ba_Pc_Bb_not_secret)
        (Bb_Ba_Pc_Bb_secret)
        (Bb_Ba_Pc_Bc_not_secret)
        (Bb_Ba_Pc_Bc_secret)
        (Bb_Ba_Pc_Pa_not_secret)
        (Bb_Ba_Pc_Pa_secret)
        (Bb_Ba_Pc_Pb_not_secret)
        (Bb_Ba_Pc_Pb_secret)
        (Bb_Ba_Pc_Pc_not_secret)
        (Bb_Ba_Pc_Pc_secret)
        (Bb_Ba_Pc_secret)
        (Bb_Ba_secret)
        (Bb_Bb_not_secret)
        (Bb_Bb_Ba_not_secret)
        (Bb_Bb_Ba_Ba_not_secret)
        (Bb_Bb_Ba_Ba_secret)
        (Bb_Bb_Ba_Bb_not_secret)
        (Bb_Bb_Ba_Bb_secret)
        (Bb_Bb_Ba_Bc_not_secret)
        (Bb_Bb_Ba_Bc_secret)
        (Bb_Bb_Ba_Pa_not_secret)
        (Bb_Bb_Ba_Pa_secret)
        (Bb_Bb_Ba_Pb_not_secret)
        (Bb_Bb_Ba_Pb_secret)
        (Bb_Bb_Ba_Pc_not_secret)
        (Bb_Bb_Ba_Pc_secret)
        (Bb_Bb_Ba_secret)
        (Bb_Bb_Bb_not_secret)
        (Bb_Bb_Bb_Ba_not_secret)
        (Bb_Bb_Bb_Ba_secret)
        (Bb_Bb_Bb_Bb_not_secret)
        (Bb_Bb_Bb_Bb_secret)
        (Bb_Bb_Bb_Bc_not_secret)
        (Bb_Bb_Bb_Bc_secret)
        (Bb_Bb_Bb_Pa_not_secret)
        (Bb_Bb_Bb_Pa_secret)
        (Bb_Bb_Bb_Pb_not_secret)
        (Bb_Bb_Bb_Pb_secret)
        (Bb_Bb_Bb_Pc_not_secret)
        (Bb_Bb_Bb_Pc_secret)
        (Bb_Bb_Bb_secret)
        (Bb_Bb_Bc_not_secret)
        (Bb_Bb_Bc_Ba_not_secret)
        (Bb_Bb_Bc_Ba_secret)
        (Bb_Bb_Bc_Bb_not_secret)
        (Bb_Bb_Bc_Bb_secret)
        (Bb_Bb_Bc_Bc_not_secret)
        (Bb_Bb_Bc_Bc_secret)
        (Bb_Bb_Bc_Pa_not_secret)
        (Bb_Bb_Bc_Pa_secret)
        (Bb_Bb_Bc_Pb_not_secret)
        (Bb_Bb_Bc_Pb_secret)
        (Bb_Bb_Bc_Pc_not_secret)
        (Bb_Bb_Bc_Pc_secret)
        (Bb_Bb_Bc_secret)
        (Bb_Bb_Pa_not_secret)
        (Bb_Bb_Pa_Ba_not_secret)
        (Bb_Bb_Pa_Ba_secret)
        (Bb_Bb_Pa_Bb_not_secret)
        (Bb_Bb_Pa_Bb_secret)
        (Bb_Bb_Pa_Bc_not_secret)
        (Bb_Bb_Pa_Bc_secret)
        (Bb_Bb_Pa_Pa_not_secret)
        (Bb_Bb_Pa_Pa_secret)
        (Bb_Bb_Pa_Pb_not_secret)
        (Bb_Bb_Pa_Pb_secret)
        (Bb_Bb_Pa_Pc_not_secret)
        (Bb_Bb_Pa_Pc_secret)
        (Bb_Bb_Pa_secret)
        (Bb_Bb_Pb_not_secret)
        (Bb_Bb_Pb_Ba_not_secret)
        (Bb_Bb_Pb_Ba_secret)
        (Bb_Bb_Pb_Bb_not_secret)
        (Bb_Bb_Pb_Bb_secret)
        (Bb_Bb_Pb_Bc_not_secret)
        (Bb_Bb_Pb_Bc_secret)
        (Bb_Bb_Pb_Pa_not_secret)
        (Bb_Bb_Pb_Pa_secret)
        (Bb_Bb_Pb_Pb_not_secret)
        (Bb_Bb_Pb_Pb_secret)
        (Bb_Bb_Pb_Pc_not_secret)
        (Bb_Bb_Pb_Pc_secret)
        (Bb_Bb_Pb_secret)
        (Bb_Bb_Pc_not_secret)
        (Bb_Bb_Pc_Ba_not_secret)
        (Bb_Bb_Pc_Ba_secret)
        (Bb_Bb_Pc_Bb_not_secret)
        (Bb_Bb_Pc_Bb_secret)
        (Bb_Bb_Pc_Bc_not_secret)
        (Bb_Bb_Pc_Bc_secret)
        (Bb_Bb_Pc_Pa_not_secret)
        (Bb_Bb_Pc_Pa_secret)
        (Bb_Bb_Pc_Pb_not_secret)
        (Bb_Bb_Pc_Pb_secret)
        (Bb_Bb_Pc_Pc_not_secret)
        (Bb_Bb_Pc_Pc_secret)
        (Bb_Bb_Pc_secret)
        (Bb_Bb_secret)
        (Bb_Bc_not_secret)
        (Bb_Bc_Ba_not_secret)
        (Bb_Bc_Ba_Ba_not_secret)
        (Bb_Bc_Ba_Ba_secret)
        (Bb_Bc_Ba_Bb_not_secret)
        (Bb_Bc_Ba_Bb_secret)
        (Bb_Bc_Ba_Bc_not_secret)
        (Bb_Bc_Ba_Bc_secret)
        (Bb_Bc_Ba_Pa_not_secret)
        (Bb_Bc_Ba_Pa_secret)
        (Bb_Bc_Ba_Pb_not_secret)
        (Bb_Bc_Ba_Pb_secret)
        (Bb_Bc_Ba_Pc_not_secret)
        (Bb_Bc_Ba_Pc_secret)
        (Bb_Bc_Ba_secret)
        (Bb_Bc_Bb_not_secret)
        (Bb_Bc_Bb_Ba_not_secret)
        (Bb_Bc_Bb_Ba_secret)
        (Bb_Bc_Bb_Bb_not_secret)
        (Bb_Bc_Bb_Bb_secret)
        (Bb_Bc_Bb_Bc_not_secret)
        (Bb_Bc_Bb_Bc_secret)
        (Bb_Bc_Bb_Pa_not_secret)
        (Bb_Bc_Bb_Pa_secret)
        (Bb_Bc_Bb_Pb_not_secret)
        (Bb_Bc_Bb_Pb_secret)
        (Bb_Bc_Bb_Pc_not_secret)
        (Bb_Bc_Bb_Pc_secret)
        (Bb_Bc_Bb_secret)
        (Bb_Bc_Bc_not_secret)
        (Bb_Bc_Bc_Ba_not_secret)
        (Bb_Bc_Bc_Ba_secret)
        (Bb_Bc_Bc_Bb_not_secret)
        (Bb_Bc_Bc_Bb_secret)
        (Bb_Bc_Bc_Bc_not_secret)
        (Bb_Bc_Bc_Bc_secret)
        (Bb_Bc_Bc_Pa_not_secret)
        (Bb_Bc_Bc_Pa_secret)
        (Bb_Bc_Bc_Pb_not_secret)
        (Bb_Bc_Bc_Pb_secret)
        (Bb_Bc_Bc_Pc_not_secret)
        (Bb_Bc_Bc_Pc_secret)
        (Bb_Bc_Bc_secret)
        (Bb_Bc_Pa_not_secret)
        (Bb_Bc_Pa_Ba_not_secret)
        (Bb_Bc_Pa_Ba_secret)
        (Bb_Bc_Pa_Bb_not_secret)
        (Bb_Bc_Pa_Bb_secret)
        (Bb_Bc_Pa_Bc_not_secret)
        (Bb_Bc_Pa_Bc_secret)
        (Bb_Bc_Pa_Pa_not_secret)
        (Bb_Bc_Pa_Pa_secret)
        (Bb_Bc_Pa_Pb_not_secret)
        (Bb_Bc_Pa_Pb_secret)
        (Bb_Bc_Pa_Pc_not_secret)
        (Bb_Bc_Pa_Pc_secret)
        (Bb_Bc_Pa_secret)
        (Bb_Bc_Pb_not_secret)
        (Bb_Bc_Pb_Ba_not_secret)
        (Bb_Bc_Pb_Ba_secret)
        (Bb_Bc_Pb_Bb_not_secret)
        (Bb_Bc_Pb_Bb_secret)
        (Bb_Bc_Pb_Bc_not_secret)
        (Bb_Bc_Pb_Bc_secret)
        (Bb_Bc_Pb_Pa_not_secret)
        (Bb_Bc_Pb_Pa_secret)
        (Bb_Bc_Pb_Pb_not_secret)
        (Bb_Bc_Pb_Pb_secret)
        (Bb_Bc_Pb_Pc_not_secret)
        (Bb_Bc_Pb_Pc_secret)
        (Bb_Bc_Pb_secret)
        (Bb_Bc_Pc_not_secret)
        (Bb_Bc_Pc_Ba_not_secret)
        (Bb_Bc_Pc_Ba_secret)
        (Bb_Bc_Pc_Bb_not_secret)
        (Bb_Bc_Pc_Bb_secret)
        (Bb_Bc_Pc_Bc_not_secret)
        (Bb_Bc_Pc_Bc_secret)
        (Bb_Bc_Pc_Pa_not_secret)
        (Bb_Bc_Pc_Pa_secret)
        (Bb_Bc_Pc_Pb_not_secret)
        (Bb_Bc_Pc_Pb_secret)
        (Bb_Bc_Pc_Pc_not_secret)
        (Bb_Bc_Pc_Pc_secret)
        (Bb_Bc_Pc_secret)
        (Bb_Bc_secret)
        (Bb_Pa_not_secret)
        (Bb_Pa_Ba_not_secret)
        (Bb_Pa_Ba_Ba_not_secret)
        (Bb_Pa_Ba_Ba_secret)
        (Bb_Pa_Ba_Bb_not_secret)
        (Bb_Pa_Ba_Bb_secret)
        (Bb_Pa_Ba_Bc_not_secret)
        (Bb_Pa_Ba_Bc_secret)
        (Bb_Pa_Ba_Pa_not_secret)
        (Bb_Pa_Ba_Pa_secret)
        (Bb_Pa_Ba_Pb_not_secret)
        (Bb_Pa_Ba_Pb_secret)
        (Bb_Pa_Ba_Pc_not_secret)
        (Bb_Pa_Ba_Pc_secret)
        (Bb_Pa_Ba_secret)
        (Bb_Pa_Bb_not_secret)
        (Bb_Pa_Bb_Ba_not_secret)
        (Bb_Pa_Bb_Ba_secret)
        (Bb_Pa_Bb_Bb_not_secret)
        (Bb_Pa_Bb_Bb_secret)
        (Bb_Pa_Bb_Bc_not_secret)
        (Bb_Pa_Bb_Bc_secret)
        (Bb_Pa_Bb_Pa_not_secret)
        (Bb_Pa_Bb_Pa_secret)
        (Bb_Pa_Bb_Pb_not_secret)
        (Bb_Pa_Bb_Pb_secret)
        (Bb_Pa_Bb_Pc_not_secret)
        (Bb_Pa_Bb_Pc_secret)
        (Bb_Pa_Bb_secret)
        (Bb_Pa_Bc_not_secret)
        (Bb_Pa_Bc_Ba_not_secret)
        (Bb_Pa_Bc_Ba_secret)
        (Bb_Pa_Bc_Bb_not_secret)
        (Bb_Pa_Bc_Bb_secret)
        (Bb_Pa_Bc_Bc_not_secret)
        (Bb_Pa_Bc_Bc_secret)
        (Bb_Pa_Bc_Pa_not_secret)
        (Bb_Pa_Bc_Pa_secret)
        (Bb_Pa_Bc_Pb_not_secret)
        (Bb_Pa_Bc_Pb_secret)
        (Bb_Pa_Bc_Pc_not_secret)
        (Bb_Pa_Bc_Pc_secret)
        (Bb_Pa_Bc_secret)
        (Bb_Pa_Pa_not_secret)
        (Bb_Pa_Pa_Ba_not_secret)
        (Bb_Pa_Pa_Ba_secret)
        (Bb_Pa_Pa_Bb_not_secret)
        (Bb_Pa_Pa_Bb_secret)
        (Bb_Pa_Pa_Bc_not_secret)
        (Bb_Pa_Pa_Bc_secret)
        (Bb_Pa_Pa_Pa_not_secret)
        (Bb_Pa_Pa_Pa_secret)
        (Bb_Pa_Pa_Pb_not_secret)
        (Bb_Pa_Pa_Pb_secret)
        (Bb_Pa_Pa_Pc_not_secret)
        (Bb_Pa_Pa_Pc_secret)
        (Bb_Pa_Pa_secret)
        (Bb_Pa_Pb_not_secret)
        (Bb_Pa_Pb_Ba_not_secret)
        (Bb_Pa_Pb_Ba_secret)
        (Bb_Pa_Pb_Bb_not_secret)
        (Bb_Pa_Pb_Bb_secret)
        (Bb_Pa_Pb_Bc_not_secret)
        (Bb_Pa_Pb_Bc_secret)
        (Bb_Pa_Pb_Pa_not_secret)
        (Bb_Pa_Pb_Pa_secret)
        (Bb_Pa_Pb_Pb_not_secret)
        (Bb_Pa_Pb_Pb_secret)
        (Bb_Pa_Pb_Pc_not_secret)
        (Bb_Pa_Pb_Pc_secret)
        (Bb_Pa_Pb_secret)
        (Bb_Pa_Pc_not_secret)
        (Bb_Pa_Pc_Ba_not_secret)
        (Bb_Pa_Pc_Ba_secret)
        (Bb_Pa_Pc_Bb_not_secret)
        (Bb_Pa_Pc_Bb_secret)
        (Bb_Pa_Pc_Bc_not_secret)
        (Bb_Pa_Pc_Bc_secret)
        (Bb_Pa_Pc_Pa_not_secret)
        (Bb_Pa_Pc_Pa_secret)
        (Bb_Pa_Pc_Pb_not_secret)
        (Bb_Pa_Pc_Pb_secret)
        (Bb_Pa_Pc_Pc_not_secret)
        (Bb_Pa_Pc_Pc_secret)
        (Bb_Pa_Pc_secret)
        (Bb_Pa_secret)
        (Bb_Pb_not_secret)
        (Bb_Pb_Ba_not_secret)
        (Bb_Pb_Ba_Ba_not_secret)
        (Bb_Pb_Ba_Ba_secret)
        (Bb_Pb_Ba_Bb_not_secret)
        (Bb_Pb_Ba_Bb_secret)
        (Bb_Pb_Ba_Bc_not_secret)
        (Bb_Pb_Ba_Bc_secret)
        (Bb_Pb_Ba_Pa_not_secret)
        (Bb_Pb_Ba_Pa_secret)
        (Bb_Pb_Ba_Pb_not_secret)
        (Bb_Pb_Ba_Pb_secret)
        (Bb_Pb_Ba_Pc_not_secret)
        (Bb_Pb_Ba_Pc_secret)
        (Bb_Pb_Ba_secret)
        (Bb_Pb_Bb_not_secret)
        (Bb_Pb_Bb_Ba_not_secret)
        (Bb_Pb_Bb_Ba_secret)
        (Bb_Pb_Bb_Bb_not_secret)
        (Bb_Pb_Bb_Bb_secret)
        (Bb_Pb_Bb_Bc_not_secret)
        (Bb_Pb_Bb_Bc_secret)
        (Bb_Pb_Bb_Pa_not_secret)
        (Bb_Pb_Bb_Pa_secret)
        (Bb_Pb_Bb_Pb_not_secret)
        (Bb_Pb_Bb_Pb_secret)
        (Bb_Pb_Bb_Pc_not_secret)
        (Bb_Pb_Bb_Pc_secret)
        (Bb_Pb_Bb_secret)
        (Bb_Pb_Bc_not_secret)
        (Bb_Pb_Bc_Ba_not_secret)
        (Bb_Pb_Bc_Ba_secret)
        (Bb_Pb_Bc_Bb_not_secret)
        (Bb_Pb_Bc_Bb_secret)
        (Bb_Pb_Bc_Bc_not_secret)
        (Bb_Pb_Bc_Bc_secret)
        (Bb_Pb_Bc_Pa_not_secret)
        (Bb_Pb_Bc_Pa_secret)
        (Bb_Pb_Bc_Pb_not_secret)
        (Bb_Pb_Bc_Pb_secret)
        (Bb_Pb_Bc_Pc_not_secret)
        (Bb_Pb_Bc_Pc_secret)
        (Bb_Pb_Bc_secret)
        (Bb_Pb_Pa_not_secret)
        (Bb_Pb_Pa_Ba_not_secret)
        (Bb_Pb_Pa_Ba_secret)
        (Bb_Pb_Pa_Bb_not_secret)
        (Bb_Pb_Pa_Bb_secret)
        (Bb_Pb_Pa_Bc_not_secret)
        (Bb_Pb_Pa_Bc_secret)
        (Bb_Pb_Pa_Pa_not_secret)
        (Bb_Pb_Pa_Pa_secret)
        (Bb_Pb_Pa_Pb_not_secret)
        (Bb_Pb_Pa_Pb_secret)
        (Bb_Pb_Pa_Pc_not_secret)
        (Bb_Pb_Pa_Pc_secret)
        (Bb_Pb_Pa_secret)
        (Bb_Pb_Pb_not_secret)
        (Bb_Pb_Pb_Ba_not_secret)
        (Bb_Pb_Pb_Ba_secret)
        (Bb_Pb_Pb_Bb_not_secret)
        (Bb_Pb_Pb_Bb_secret)
        (Bb_Pb_Pb_Bc_not_secret)
        (Bb_Pb_Pb_Bc_secret)
        (Bb_Pb_Pb_Pa_not_secret)
        (Bb_Pb_Pb_Pa_secret)
        (Bb_Pb_Pb_Pb_not_secret)
        (Bb_Pb_Pb_Pb_secret)
        (Bb_Pb_Pb_Pc_not_secret)
        (Bb_Pb_Pb_Pc_secret)
        (Bb_Pb_Pb_secret)
        (Bb_Pb_Pc_not_secret)
        (Bb_Pb_Pc_Ba_not_secret)
        (Bb_Pb_Pc_Ba_secret)
        (Bb_Pb_Pc_Bb_not_secret)
        (Bb_Pb_Pc_Bb_secret)
        (Bb_Pb_Pc_Bc_not_secret)
        (Bb_Pb_Pc_Bc_secret)
        (Bb_Pb_Pc_Pa_not_secret)
        (Bb_Pb_Pc_Pa_secret)
        (Bb_Pb_Pc_Pb_not_secret)
        (Bb_Pb_Pc_Pb_secret)
        (Bb_Pb_Pc_Pc_not_secret)
        (Bb_Pb_Pc_Pc_secret)
        (Bb_Pb_Pc_secret)
        (Bb_Pb_secret)
        (Bb_Pc_not_secret)
        (Bb_Pc_Ba_not_secret)
        (Bb_Pc_Ba_Ba_not_secret)
        (Bb_Pc_Ba_Ba_secret)
        (Bb_Pc_Ba_Bb_not_secret)
        (Bb_Pc_Ba_Bb_secret)
        (Bb_Pc_Ba_Bc_not_secret)
        (Bb_Pc_Ba_Bc_secret)
        (Bb_Pc_Ba_Pa_not_secret)
        (Bb_Pc_Ba_Pa_secret)
        (Bb_Pc_Ba_Pb_not_secret)
        (Bb_Pc_Ba_Pb_secret)
        (Bb_Pc_Ba_Pc_not_secret)
        (Bb_Pc_Ba_Pc_secret)
        (Bb_Pc_Ba_secret)
        (Bb_Pc_Bb_not_secret)
        (Bb_Pc_Bb_Ba_not_secret)
        (Bb_Pc_Bb_Ba_secret)
        (Bb_Pc_Bb_Bb_not_secret)
        (Bb_Pc_Bb_Bb_secret)
        (Bb_Pc_Bb_Bc_not_secret)
        (Bb_Pc_Bb_Bc_secret)
        (Bb_Pc_Bb_Pa_not_secret)
        (Bb_Pc_Bb_Pa_secret)
        (Bb_Pc_Bb_Pb_not_secret)
        (Bb_Pc_Bb_Pb_secret)
        (Bb_Pc_Bb_Pc_not_secret)
        (Bb_Pc_Bb_Pc_secret)
        (Bb_Pc_Bb_secret)
        (Bb_Pc_Bc_not_secret)
        (Bb_Pc_Bc_Ba_not_secret)
        (Bb_Pc_Bc_Ba_secret)
        (Bb_Pc_Bc_Bb_not_secret)
        (Bb_Pc_Bc_Bb_secret)
        (Bb_Pc_Bc_Bc_not_secret)
        (Bb_Pc_Bc_Bc_secret)
        (Bb_Pc_Bc_Pa_not_secret)
        (Bb_Pc_Bc_Pa_secret)
        (Bb_Pc_Bc_Pb_not_secret)
        (Bb_Pc_Bc_Pb_secret)
        (Bb_Pc_Bc_Pc_not_secret)
        (Bb_Pc_Bc_Pc_secret)
        (Bb_Pc_Bc_secret)
        (Bb_Pc_Pa_not_secret)
        (Bb_Pc_Pa_Ba_not_secret)
        (Bb_Pc_Pa_Ba_secret)
        (Bb_Pc_Pa_Bb_not_secret)
        (Bb_Pc_Pa_Bb_secret)
        (Bb_Pc_Pa_Bc_not_secret)
        (Bb_Pc_Pa_Bc_secret)
        (Bb_Pc_Pa_Pa_not_secret)
        (Bb_Pc_Pa_Pa_secret)
        (Bb_Pc_Pa_Pb_not_secret)
        (Bb_Pc_Pa_Pb_secret)
        (Bb_Pc_Pa_Pc_not_secret)
        (Bb_Pc_Pa_Pc_secret)
        (Bb_Pc_Pa_secret)
        (Bb_Pc_Pb_not_secret)
        (Bb_Pc_Pb_Ba_not_secret)
        (Bb_Pc_Pb_Ba_secret)
        (Bb_Pc_Pb_Bb_not_secret)
        (Bb_Pc_Pb_Bb_secret)
        (Bb_Pc_Pb_Bc_not_secret)
        (Bb_Pc_Pb_Bc_secret)
        (Bb_Pc_Pb_Pa_not_secret)
        (Bb_Pc_Pb_Pa_secret)
        (Bb_Pc_Pb_Pb_not_secret)
        (Bb_Pc_Pb_Pb_secret)
        (Bb_Pc_Pb_Pc_not_secret)
        (Bb_Pc_Pb_Pc_secret)
        (Bb_Pc_Pb_secret)
        (Bb_Pc_Pc_not_secret)
        (Bb_Pc_Pc_Ba_not_secret)
        (Bb_Pc_Pc_Ba_secret)
        (Bb_Pc_Pc_Bb_not_secret)
        (Bb_Pc_Pc_Bb_secret)
        (Bb_Pc_Pc_Bc_not_secret)
        (Bb_Pc_Pc_Bc_secret)
        (Bb_Pc_Pc_Pa_not_secret)
        (Bb_Pc_Pc_Pa_secret)
        (Bb_Pc_Pc_Pb_not_secret)
        (Bb_Pc_Pc_Pb_secret)
        (Bb_Pc_Pc_Pc_not_secret)
        (Bb_Pc_Pc_Pc_secret)
        (Bb_Pc_Pc_secret)
        (Bb_Pc_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_Ba_not_secret)
        (Bc_Ba_Ba_not_secret)
        (Bc_Ba_Ba_Ba_not_secret)
        (Bc_Ba_Ba_Ba_secret)
        (Bc_Ba_Ba_Bb_not_secret)
        (Bc_Ba_Ba_Bb_secret)
        (Bc_Ba_Ba_Bc_not_secret)
        (Bc_Ba_Ba_Bc_secret)
        (Bc_Ba_Ba_Pa_not_secret)
        (Bc_Ba_Ba_Pa_secret)
        (Bc_Ba_Ba_Pb_not_secret)
        (Bc_Ba_Ba_Pb_secret)
        (Bc_Ba_Ba_Pc_not_secret)
        (Bc_Ba_Ba_Pc_secret)
        (Bc_Ba_Ba_secret)
        (Bc_Ba_Bb_not_secret)
        (Bc_Ba_Bb_Ba_not_secret)
        (Bc_Ba_Bb_Ba_secret)
        (Bc_Ba_Bb_Bb_not_secret)
        (Bc_Ba_Bb_Bb_secret)
        (Bc_Ba_Bb_Bc_not_secret)
        (Bc_Ba_Bb_Bc_secret)
        (Bc_Ba_Bb_Pa_not_secret)
        (Bc_Ba_Bb_Pa_secret)
        (Bc_Ba_Bb_Pb_not_secret)
        (Bc_Ba_Bb_Pb_secret)
        (Bc_Ba_Bb_Pc_not_secret)
        (Bc_Ba_Bb_Pc_secret)
        (Bc_Ba_Bb_secret)
        (Bc_Ba_Bc_not_secret)
        (Bc_Ba_Bc_Ba_not_secret)
        (Bc_Ba_Bc_Ba_secret)
        (Bc_Ba_Bc_Bb_not_secret)
        (Bc_Ba_Bc_Bb_secret)
        (Bc_Ba_Bc_Bc_not_secret)
        (Bc_Ba_Bc_Bc_secret)
        (Bc_Ba_Bc_Pa_not_secret)
        (Bc_Ba_Bc_Pa_secret)
        (Bc_Ba_Bc_Pb_not_secret)
        (Bc_Ba_Bc_Pb_secret)
        (Bc_Ba_Bc_Pc_not_secret)
        (Bc_Ba_Bc_Pc_secret)
        (Bc_Ba_Bc_secret)
        (Bc_Ba_Pa_not_secret)
        (Bc_Ba_Pa_Ba_not_secret)
        (Bc_Ba_Pa_Ba_secret)
        (Bc_Ba_Pa_Bb_not_secret)
        (Bc_Ba_Pa_Bb_secret)
        (Bc_Ba_Pa_Bc_not_secret)
        (Bc_Ba_Pa_Bc_secret)
        (Bc_Ba_Pa_Pa_not_secret)
        (Bc_Ba_Pa_Pa_secret)
        (Bc_Ba_Pa_Pb_not_secret)
        (Bc_Ba_Pa_Pb_secret)
        (Bc_Ba_Pa_Pc_not_secret)
        (Bc_Ba_Pa_Pc_secret)
        (Bc_Ba_Pa_secret)
        (Bc_Ba_Pb_not_secret)
        (Bc_Ba_Pb_Ba_not_secret)
        (Bc_Ba_Pb_Ba_secret)
        (Bc_Ba_Pb_Bb_not_secret)
        (Bc_Ba_Pb_Bb_secret)
        (Bc_Ba_Pb_Bc_not_secret)
        (Bc_Ba_Pb_Bc_secret)
        (Bc_Ba_Pb_Pa_not_secret)
        (Bc_Ba_Pb_Pa_secret)
        (Bc_Ba_Pb_Pb_not_secret)
        (Bc_Ba_Pb_Pb_secret)
        (Bc_Ba_Pb_Pc_not_secret)
        (Bc_Ba_Pb_Pc_secret)
        (Bc_Ba_Pb_secret)
        (Bc_Ba_Pc_not_secret)
        (Bc_Ba_Pc_Ba_not_secret)
        (Bc_Ba_Pc_Ba_secret)
        (Bc_Ba_Pc_Bb_not_secret)
        (Bc_Ba_Pc_Bb_secret)
        (Bc_Ba_Pc_Bc_not_secret)
        (Bc_Ba_Pc_Bc_secret)
        (Bc_Ba_Pc_Pa_not_secret)
        (Bc_Ba_Pc_Pa_secret)
        (Bc_Ba_Pc_Pb_not_secret)
        (Bc_Ba_Pc_Pb_secret)
        (Bc_Ba_Pc_Pc_not_secret)
        (Bc_Ba_Pc_Pc_secret)
        (Bc_Ba_Pc_secret)
        (Bc_Ba_secret)
        (Bc_Bb_not_secret)
        (Bc_Bb_Ba_not_secret)
        (Bc_Bb_Ba_Ba_not_secret)
        (Bc_Bb_Ba_Ba_secret)
        (Bc_Bb_Ba_Bb_not_secret)
        (Bc_Bb_Ba_Bb_secret)
        (Bc_Bb_Ba_Bc_not_secret)
        (Bc_Bb_Ba_Bc_secret)
        (Bc_Bb_Ba_Pa_not_secret)
        (Bc_Bb_Ba_Pa_secret)
        (Bc_Bb_Ba_Pb_not_secret)
        (Bc_Bb_Ba_Pb_secret)
        (Bc_Bb_Ba_Pc_not_secret)
        (Bc_Bb_Ba_Pc_secret)
        (Bc_Bb_Ba_secret)
        (Bc_Bb_Bb_not_secret)
        (Bc_Bb_Bb_Ba_not_secret)
        (Bc_Bb_Bb_Ba_secret)
        (Bc_Bb_Bb_Bb_not_secret)
        (Bc_Bb_Bb_Bb_secret)
        (Bc_Bb_Bb_Bc_not_secret)
        (Bc_Bb_Bb_Bc_secret)
        (Bc_Bb_Bb_Pa_not_secret)
        (Bc_Bb_Bb_Pa_secret)
        (Bc_Bb_Bb_Pb_not_secret)
        (Bc_Bb_Bb_Pb_secret)
        (Bc_Bb_Bb_Pc_not_secret)
        (Bc_Bb_Bb_Pc_secret)
        (Bc_Bb_Bb_secret)
        (Bc_Bb_Bc_not_secret)
        (Bc_Bb_Bc_Ba_not_secret)
        (Bc_Bb_Bc_Ba_secret)
        (Bc_Bb_Bc_Bb_not_secret)
        (Bc_Bb_Bc_Bb_secret)
        (Bc_Bb_Bc_Bc_not_secret)
        (Bc_Bb_Bc_Bc_secret)
        (Bc_Bb_Bc_Pa_not_secret)
        (Bc_Bb_Bc_Pa_secret)
        (Bc_Bb_Bc_Pb_not_secret)
        (Bc_Bb_Bc_Pb_secret)
        (Bc_Bb_Bc_Pc_not_secret)
        (Bc_Bb_Bc_Pc_secret)
        (Bc_Bb_Bc_secret)
        (Bc_Bb_Pa_not_secret)
        (Bc_Bb_Pa_Ba_not_secret)
        (Bc_Bb_Pa_Ba_secret)
        (Bc_Bb_Pa_Bb_not_secret)
        (Bc_Bb_Pa_Bb_secret)
        (Bc_Bb_Pa_Bc_not_secret)
        (Bc_Bb_Pa_Bc_secret)
        (Bc_Bb_Pa_Pa_not_secret)
        (Bc_Bb_Pa_Pa_secret)
        (Bc_Bb_Pa_Pb_not_secret)
        (Bc_Bb_Pa_Pb_secret)
        (Bc_Bb_Pa_Pc_not_secret)
        (Bc_Bb_Pa_Pc_secret)
        (Bc_Bb_Pa_secret)
        (Bc_Bb_Pb_not_secret)
        (Bc_Bb_Pb_Ba_not_secret)
        (Bc_Bb_Pb_Ba_secret)
        (Bc_Bb_Pb_Bb_not_secret)
        (Bc_Bb_Pb_Bb_secret)
        (Bc_Bb_Pb_Bc_not_secret)
        (Bc_Bb_Pb_Bc_secret)
        (Bc_Bb_Pb_Pa_not_secret)
        (Bc_Bb_Pb_Pa_secret)
        (Bc_Bb_Pb_Pb_not_secret)
        (Bc_Bb_Pb_Pb_secret)
        (Bc_Bb_Pb_Pc_not_secret)
        (Bc_Bb_Pb_Pc_secret)
        (Bc_Bb_Pb_secret)
        (Bc_Bb_Pc_not_secret)
        (Bc_Bb_Pc_Ba_not_secret)
        (Bc_Bb_Pc_Ba_secret)
        (Bc_Bb_Pc_Bb_not_secret)
        (Bc_Bb_Pc_Bb_secret)
        (Bc_Bb_Pc_Bc_not_secret)
        (Bc_Bb_Pc_Bc_secret)
        (Bc_Bb_Pc_Pa_not_secret)
        (Bc_Bb_Pc_Pa_secret)
        (Bc_Bb_Pc_Pb_not_secret)
        (Bc_Bb_Pc_Pb_secret)
        (Bc_Bb_Pc_Pc_not_secret)
        (Bc_Bb_Pc_Pc_secret)
        (Bc_Bb_Pc_secret)
        (Bc_Bb_secret)
        (Bc_Bc_not_secret)
        (Bc_Bc_Ba_not_secret)
        (Bc_Bc_Ba_Ba_not_secret)
        (Bc_Bc_Ba_Ba_secret)
        (Bc_Bc_Ba_Bb_not_secret)
        (Bc_Bc_Ba_Bb_secret)
        (Bc_Bc_Ba_Bc_not_secret)
        (Bc_Bc_Ba_Bc_secret)
        (Bc_Bc_Ba_Pa_not_secret)
        (Bc_Bc_Ba_Pa_secret)
        (Bc_Bc_Ba_Pb_not_secret)
        (Bc_Bc_Ba_Pb_secret)
        (Bc_Bc_Ba_Pc_not_secret)
        (Bc_Bc_Ba_Pc_secret)
        (Bc_Bc_Ba_secret)
        (Bc_Bc_Bb_not_secret)
        (Bc_Bc_Bb_Ba_not_secret)
        (Bc_Bc_Bb_Ba_secret)
        (Bc_Bc_Bb_Bb_not_secret)
        (Bc_Bc_Bb_Bb_secret)
        (Bc_Bc_Bb_Bc_not_secret)
        (Bc_Bc_Bb_Bc_secret)
        (Bc_Bc_Bb_Pa_not_secret)
        (Bc_Bc_Bb_Pa_secret)
        (Bc_Bc_Bb_Pb_not_secret)
        (Bc_Bc_Bb_Pb_secret)
        (Bc_Bc_Bb_Pc_not_secret)
        (Bc_Bc_Bb_Pc_secret)
        (Bc_Bc_Bb_secret)
        (Bc_Bc_Bc_not_secret)
        (Bc_Bc_Bc_Ba_not_secret)
        (Bc_Bc_Bc_Ba_secret)
        (Bc_Bc_Bc_Bb_not_secret)
        (Bc_Bc_Bc_Bb_secret)
        (Bc_Bc_Bc_Bc_not_secret)
        (Bc_Bc_Bc_Bc_secret)
        (Bc_Bc_Bc_Pa_not_secret)
        (Bc_Bc_Bc_Pa_secret)
        (Bc_Bc_Bc_Pb_not_secret)
        (Bc_Bc_Bc_Pb_secret)
        (Bc_Bc_Bc_Pc_not_secret)
        (Bc_Bc_Bc_Pc_secret)
        (Bc_Bc_Bc_secret)
        (Bc_Bc_Pa_not_secret)
        (Bc_Bc_Pa_Ba_not_secret)
        (Bc_Bc_Pa_Ba_secret)
        (Bc_Bc_Pa_Bb_not_secret)
        (Bc_Bc_Pa_Bb_secret)
        (Bc_Bc_Pa_Bc_not_secret)
        (Bc_Bc_Pa_Bc_secret)
        (Bc_Bc_Pa_Pa_not_secret)
        (Bc_Bc_Pa_Pa_secret)
        (Bc_Bc_Pa_Pb_not_secret)
        (Bc_Bc_Pa_Pb_secret)
        (Bc_Bc_Pa_Pc_not_secret)
        (Bc_Bc_Pa_Pc_secret)
        (Bc_Bc_Pa_secret)
        (Bc_Bc_Pb_not_secret)
        (Bc_Bc_Pb_Ba_not_secret)
        (Bc_Bc_Pb_Ba_secret)
        (Bc_Bc_Pb_Bb_not_secret)
        (Bc_Bc_Pb_Bb_secret)
        (Bc_Bc_Pb_Bc_not_secret)
        (Bc_Bc_Pb_Bc_secret)
        (Bc_Bc_Pb_Pa_not_secret)
        (Bc_Bc_Pb_Pa_secret)
        (Bc_Bc_Pb_Pb_not_secret)
        (Bc_Bc_Pb_Pb_secret)
        (Bc_Bc_Pb_Pc_not_secret)
        (Bc_Bc_Pb_Pc_secret)
        (Bc_Bc_Pb_secret)
        (Bc_Bc_Pc_not_secret)
        (Bc_Bc_Pc_Ba_not_secret)
        (Bc_Bc_Pc_Ba_secret)
        (Bc_Bc_Pc_Bb_not_secret)
        (Bc_Bc_Pc_Bb_secret)
        (Bc_Bc_Pc_Bc_not_secret)
        (Bc_Bc_Pc_Bc_secret)
        (Bc_Bc_Pc_Pa_not_secret)
        (Bc_Bc_Pc_Pa_secret)
        (Bc_Bc_Pc_Pb_not_secret)
        (Bc_Bc_Pc_Pb_secret)
        (Bc_Bc_Pc_Pc_not_secret)
        (Bc_Bc_Pc_Pc_secret)
        (Bc_Bc_Pc_secret)
        (Bc_Bc_secret)
        (Bc_Pa_not_secret)
        (Bc_Pa_Ba_not_secret)
        (Bc_Pa_Ba_Ba_not_secret)
        (Bc_Pa_Ba_Ba_secret)
        (Bc_Pa_Ba_Bb_not_secret)
        (Bc_Pa_Ba_Bb_secret)
        (Bc_Pa_Ba_Bc_not_secret)
        (Bc_Pa_Ba_Bc_secret)
        (Bc_Pa_Ba_Pa_not_secret)
        (Bc_Pa_Ba_Pa_secret)
        (Bc_Pa_Ba_Pb_not_secret)
        (Bc_Pa_Ba_Pb_secret)
        (Bc_Pa_Ba_Pc_not_secret)
        (Bc_Pa_Ba_Pc_secret)
        (Bc_Pa_Ba_secret)
        (Bc_Pa_Bb_not_secret)
        (Bc_Pa_Bb_Ba_not_secret)
        (Bc_Pa_Bb_Ba_secret)
        (Bc_Pa_Bb_Bb_not_secret)
        (Bc_Pa_Bb_Bb_secret)
        (Bc_Pa_Bb_Bc_not_secret)
        (Bc_Pa_Bb_Bc_secret)
        (Bc_Pa_Bb_Pa_not_secret)
        (Bc_Pa_Bb_Pa_secret)
        (Bc_Pa_Bb_Pb_not_secret)
        (Bc_Pa_Bb_Pb_secret)
        (Bc_Pa_Bb_Pc_not_secret)
        (Bc_Pa_Bb_Pc_secret)
        (Bc_Pa_Bb_secret)
        (Bc_Pa_Bc_not_secret)
        (Bc_Pa_Bc_Ba_not_secret)
        (Bc_Pa_Bc_Ba_secret)
        (Bc_Pa_Bc_Bb_not_secret)
        (Bc_Pa_Bc_Bb_secret)
        (Bc_Pa_Bc_Bc_not_secret)
        (Bc_Pa_Bc_Bc_secret)
        (Bc_Pa_Bc_Pa_not_secret)
        (Bc_Pa_Bc_Pa_secret)
        (Bc_Pa_Bc_Pb_not_secret)
        (Bc_Pa_Bc_Pb_secret)
        (Bc_Pa_Bc_Pc_not_secret)
        (Bc_Pa_Bc_Pc_secret)
        (Bc_Pa_Bc_secret)
        (Bc_Pa_Pa_not_secret)
        (Bc_Pa_Pa_Ba_not_secret)
        (Bc_Pa_Pa_Ba_secret)
        (Bc_Pa_Pa_Bb_not_secret)
        (Bc_Pa_Pa_Bb_secret)
        (Bc_Pa_Pa_Bc_not_secret)
        (Bc_Pa_Pa_Bc_secret)
        (Bc_Pa_Pa_Pa_not_secret)
        (Bc_Pa_Pa_Pa_secret)
        (Bc_Pa_Pa_Pb_not_secret)
        (Bc_Pa_Pa_Pb_secret)
        (Bc_Pa_Pa_Pc_not_secret)
        (Bc_Pa_Pa_Pc_secret)
        (Bc_Pa_Pa_secret)
        (Bc_Pa_Pb_not_secret)
        (Bc_Pa_Pb_Ba_not_secret)
        (Bc_Pa_Pb_Ba_secret)
        (Bc_Pa_Pb_Bb_not_secret)
        (Bc_Pa_Pb_Bb_secret)
        (Bc_Pa_Pb_Bc_not_secret)
        (Bc_Pa_Pb_Bc_secret)
        (Bc_Pa_Pb_Pa_not_secret)
        (Bc_Pa_Pb_Pa_secret)
        (Bc_Pa_Pb_Pb_not_secret)
        (Bc_Pa_Pb_Pb_secret)
        (Bc_Pa_Pb_Pc_not_secret)
        (Bc_Pa_Pb_Pc_secret)
        (Bc_Pa_Pb_secret)
        (Bc_Pa_Pc_not_secret)
        (Bc_Pa_Pc_Ba_not_secret)
        (Bc_Pa_Pc_Ba_secret)
        (Bc_Pa_Pc_Bb_not_secret)
        (Bc_Pa_Pc_Bb_secret)
        (Bc_Pa_Pc_Bc_not_secret)
        (Bc_Pa_Pc_Bc_secret)
        (Bc_Pa_Pc_Pa_not_secret)
        (Bc_Pa_Pc_Pa_secret)
        (Bc_Pa_Pc_Pb_not_secret)
        (Bc_Pa_Pc_Pb_secret)
        (Bc_Pa_Pc_Pc_not_secret)
        (Bc_Pa_Pc_Pc_secret)
        (Bc_Pa_Pc_secret)
        (Bc_Pa_secret)
        (Bc_Pb_not_secret)
        (Bc_Pb_Ba_not_secret)
        (Bc_Pb_Ba_Ba_not_secret)
        (Bc_Pb_Ba_Ba_secret)
        (Bc_Pb_Ba_Bb_not_secret)
        (Bc_Pb_Ba_Bb_secret)
        (Bc_Pb_Ba_Bc_not_secret)
        (Bc_Pb_Ba_Bc_secret)
        (Bc_Pb_Ba_Pa_not_secret)
        (Bc_Pb_Ba_Pa_secret)
        (Bc_Pb_Ba_Pb_not_secret)
        (Bc_Pb_Ba_Pb_secret)
        (Bc_Pb_Ba_Pc_not_secret)
        (Bc_Pb_Ba_Pc_secret)
        (Bc_Pb_Ba_secret)
        (Bc_Pb_Bb_not_secret)
        (Bc_Pb_Bb_Ba_not_secret)
        (Bc_Pb_Bb_Ba_secret)
        (Bc_Pb_Bb_Bb_not_secret)
        (Bc_Pb_Bb_Bb_secret)
        (Bc_Pb_Bb_Bc_not_secret)
        (Bc_Pb_Bb_Bc_secret)
        (Bc_Pb_Bb_Pa_not_secret)
        (Bc_Pb_Bb_Pa_secret)
        (Bc_Pb_Bb_Pb_not_secret)
        (Bc_Pb_Bb_Pb_secret)
        (Bc_Pb_Bb_Pc_not_secret)
        (Bc_Pb_Bb_Pc_secret)
        (Bc_Pb_Bb_secret)
        (Bc_Pb_Bc_not_secret)
        (Bc_Pb_Bc_Ba_not_secret)
        (Bc_Pb_Bc_Ba_secret)
        (Bc_Pb_Bc_Bb_not_secret)
        (Bc_Pb_Bc_Bb_secret)
        (Bc_Pb_Bc_Bc_not_secret)
        (Bc_Pb_Bc_Bc_secret)
        (Bc_Pb_Bc_Pa_not_secret)
        (Bc_Pb_Bc_Pa_secret)
        (Bc_Pb_Bc_Pb_not_secret)
        (Bc_Pb_Bc_Pb_secret)
        (Bc_Pb_Bc_Pc_not_secret)
        (Bc_Pb_Bc_Pc_secret)
        (Bc_Pb_Bc_secret)
        (Bc_Pb_Pa_not_secret)
        (Bc_Pb_Pa_Ba_not_secret)
        (Bc_Pb_Pa_Ba_secret)
        (Bc_Pb_Pa_Bb_not_secret)
        (Bc_Pb_Pa_Bb_secret)
        (Bc_Pb_Pa_Bc_not_secret)
        (Bc_Pb_Pa_Bc_secret)
        (Bc_Pb_Pa_Pa_not_secret)
        (Bc_Pb_Pa_Pa_secret)
        (Bc_Pb_Pa_Pb_not_secret)
        (Bc_Pb_Pa_Pb_secret)
        (Bc_Pb_Pa_Pc_not_secret)
        (Bc_Pb_Pa_Pc_secret)
        (Bc_Pb_Pa_secret)
        (Bc_Pb_Pb_not_secret)
        (Bc_Pb_Pb_Ba_not_secret)
        (Bc_Pb_Pb_Ba_secret)
        (Bc_Pb_Pb_Bb_not_secret)
        (Bc_Pb_Pb_Bb_secret)
        (Bc_Pb_Pb_Bc_not_secret)
        (Bc_Pb_Pb_Bc_secret)
        (Bc_Pb_Pb_Pa_not_secret)
        (Bc_Pb_Pb_Pa_secret)
        (Bc_Pb_Pb_Pb_not_secret)
        (Bc_Pb_Pb_Pb_secret)
        (Bc_Pb_Pb_Pc_not_secret)
        (Bc_Pb_Pb_Pc_secret)
        (Bc_Pb_Pb_secret)
        (Bc_Pb_Pc_not_secret)
        (Bc_Pb_Pc_Ba_not_secret)
        (Bc_Pb_Pc_Ba_secret)
        (Bc_Pb_Pc_Bb_not_secret)
        (Bc_Pb_Pc_Bb_secret)
        (Bc_Pb_Pc_Bc_not_secret)
        (Bc_Pb_Pc_Bc_secret)
        (Bc_Pb_Pc_Pa_not_secret)
        (Bc_Pb_Pc_Pa_secret)
        (Bc_Pb_Pc_Pb_not_secret)
        (Bc_Pb_Pc_Pb_secret)
        (Bc_Pb_Pc_Pc_not_secret)
        (Bc_Pb_Pc_Pc_secret)
        (Bc_Pb_Pc_secret)
        (Bc_Pb_secret)
        (Bc_Pc_not_secret)
        (Bc_Pc_Ba_not_secret)
        (Bc_Pc_Ba_Ba_not_secret)
        (Bc_Pc_Ba_Ba_secret)
        (Bc_Pc_Ba_Bb_not_secret)
        (Bc_Pc_Ba_Bb_secret)
        (Bc_Pc_Ba_Bc_not_secret)
        (Bc_Pc_Ba_Bc_secret)
        (Bc_Pc_Ba_Pa_not_secret)
        (Bc_Pc_Ba_Pa_secret)
        (Bc_Pc_Ba_Pb_not_secret)
        (Bc_Pc_Ba_Pb_secret)
        (Bc_Pc_Ba_Pc_not_secret)
        (Bc_Pc_Ba_Pc_secret)
        (Bc_Pc_Ba_secret)
        (Bc_Pc_Bb_not_secret)
        (Bc_Pc_Bb_Ba_not_secret)
        (Bc_Pc_Bb_Ba_secret)
        (Bc_Pc_Bb_Bb_not_secret)
        (Bc_Pc_Bb_Bb_secret)
        (Bc_Pc_Bb_Bc_not_secret)
        (Bc_Pc_Bb_Bc_secret)
        (Bc_Pc_Bb_Pa_not_secret)
        (Bc_Pc_Bb_Pa_secret)
        (Bc_Pc_Bb_Pb_not_secret)
        (Bc_Pc_Bb_Pb_secret)
        (Bc_Pc_Bb_Pc_not_secret)
        (Bc_Pc_Bb_Pc_secret)
        (Bc_Pc_Bb_secret)
        (Bc_Pc_Bc_not_secret)
        (Bc_Pc_Bc_Ba_not_secret)
        (Bc_Pc_Bc_Ba_secret)
        (Bc_Pc_Bc_Bb_not_secret)
        (Bc_Pc_Bc_Bb_secret)
        (Bc_Pc_Bc_Bc_not_secret)
        (Bc_Pc_Bc_Bc_secret)
        (Bc_Pc_Bc_Pa_not_secret)
        (Bc_Pc_Bc_Pa_secret)
        (Bc_Pc_Bc_Pb_not_secret)
        (Bc_Pc_Bc_Pb_secret)
        (Bc_Pc_Bc_Pc_not_secret)
        (Bc_Pc_Bc_Pc_secret)
        (Bc_Pc_Bc_secret)
        (Bc_Pc_Pa_not_secret)
        (Bc_Pc_Pa_Ba_not_secret)
        (Bc_Pc_Pa_Ba_secret)
        (Bc_Pc_Pa_Bb_not_secret)
        (Bc_Pc_Pa_Bb_secret)
        (Bc_Pc_Pa_Bc_not_secret)
        (Bc_Pc_Pa_Bc_secret)
        (Bc_Pc_Pa_Pa_not_secret)
        (Bc_Pc_Pa_Pa_secret)
        (Bc_Pc_Pa_Pb_not_secret)
        (Bc_Pc_Pa_Pb_secret)
        (Bc_Pc_Pa_Pc_not_secret)
        (Bc_Pc_Pa_Pc_secret)
        (Bc_Pc_Pa_secret)
        (Bc_Pc_Pb_not_secret)
        (Bc_Pc_Pb_Ba_not_secret)
        (Bc_Pc_Pb_Ba_secret)
        (Bc_Pc_Pb_Bb_not_secret)
        (Bc_Pc_Pb_Bb_secret)
        (Bc_Pc_Pb_Bc_not_secret)
        (Bc_Pc_Pb_Bc_secret)
        (Bc_Pc_Pb_Pa_not_secret)
        (Bc_Pc_Pb_Pa_secret)
        (Bc_Pc_Pb_Pb_not_secret)
        (Bc_Pc_Pb_Pb_secret)
        (Bc_Pc_Pb_Pc_not_secret)
        (Bc_Pc_Pb_Pc_secret)
        (Bc_Pc_Pb_secret)
        (Bc_Pc_Pc_not_secret)
        (Bc_Pc_Pc_Ba_not_secret)
        (Bc_Pc_Pc_Ba_secret)
        (Bc_Pc_Pc_Bb_not_secret)
        (Bc_Pc_Pc_Bb_secret)
        (Bc_Pc_Pc_Bc_not_secret)
        (Bc_Pc_Pc_Bc_secret)
        (Bc_Pc_Pc_Pa_not_secret)
        (Bc_Pc_Pc_Pa_secret)
        (Bc_Pc_Pc_Pb_not_secret)
        (Bc_Pc_Pc_Pb_secret)
        (Bc_Pc_Pc_Pc_not_secret)
        (Bc_Pc_Pc_Pc_secret)
        (Bc_Pc_Pc_secret)
        (Bc_Pc_secret)
        (Bc_secret)
        (Pa_not_secret)
        (Pa_Ba_not_secret)
        (Pa_Ba_Ba_not_secret)
        (Pa_Ba_Ba_Ba_not_secret)
        (Pa_Ba_Ba_Ba_secret)
        (Pa_Ba_Ba_Bb_not_secret)
        (Pa_Ba_Ba_Bb_secret)
        (Pa_Ba_Ba_Bc_not_secret)
        (Pa_Ba_Ba_Bc_secret)
        (Pa_Ba_Ba_Pa_not_secret)
        (Pa_Ba_Ba_Pa_secret)
        (Pa_Ba_Ba_Pb_not_secret)
        (Pa_Ba_Ba_Pb_secret)
        (Pa_Ba_Ba_Pc_not_secret)
        (Pa_Ba_Ba_Pc_secret)
        (Pa_Ba_Ba_secret)
        (Pa_Ba_Bb_not_secret)
        (Pa_Ba_Bb_Ba_not_secret)
        (Pa_Ba_Bb_Ba_secret)
        (Pa_Ba_Bb_Bb_not_secret)
        (Pa_Ba_Bb_Bb_secret)
        (Pa_Ba_Bb_Bc_not_secret)
        (Pa_Ba_Bb_Bc_secret)
        (Pa_Ba_Bb_Pa_not_secret)
        (Pa_Ba_Bb_Pa_secret)
        (Pa_Ba_Bb_Pb_not_secret)
        (Pa_Ba_Bb_Pb_secret)
        (Pa_Ba_Bb_Pc_not_secret)
        (Pa_Ba_Bb_Pc_secret)
        (Pa_Ba_Bb_secret)
        (Pa_Ba_Bc_not_secret)
        (Pa_Ba_Bc_Ba_not_secret)
        (Pa_Ba_Bc_Ba_secret)
        (Pa_Ba_Bc_Bb_not_secret)
        (Pa_Ba_Bc_Bb_secret)
        (Pa_Ba_Bc_Bc_not_secret)
        (Pa_Ba_Bc_Bc_secret)
        (Pa_Ba_Bc_Pa_not_secret)
        (Pa_Ba_Bc_Pa_secret)
        (Pa_Ba_Bc_Pb_not_secret)
        (Pa_Ba_Bc_Pb_secret)
        (Pa_Ba_Bc_Pc_not_secret)
        (Pa_Ba_Bc_Pc_secret)
        (Pa_Ba_Bc_secret)
        (Pa_Ba_Pa_not_secret)
        (Pa_Ba_Pa_Ba_not_secret)
        (Pa_Ba_Pa_Ba_secret)
        (Pa_Ba_Pa_Bb_not_secret)
        (Pa_Ba_Pa_Bb_secret)
        (Pa_Ba_Pa_Bc_not_secret)
        (Pa_Ba_Pa_Bc_secret)
        (Pa_Ba_Pa_Pa_not_secret)
        (Pa_Ba_Pa_Pa_secret)
        (Pa_Ba_Pa_Pb_not_secret)
        (Pa_Ba_Pa_Pb_secret)
        (Pa_Ba_Pa_Pc_not_secret)
        (Pa_Ba_Pa_Pc_secret)
        (Pa_Ba_Pa_secret)
        (Pa_Ba_Pb_not_secret)
        (Pa_Ba_Pb_Ba_not_secret)
        (Pa_Ba_Pb_Ba_secret)
        (Pa_Ba_Pb_Bb_not_secret)
        (Pa_Ba_Pb_Bb_secret)
        (Pa_Ba_Pb_Bc_not_secret)
        (Pa_Ba_Pb_Bc_secret)
        (Pa_Ba_Pb_Pa_not_secret)
        (Pa_Ba_Pb_Pa_secret)
        (Pa_Ba_Pb_Pb_not_secret)
        (Pa_Ba_Pb_Pb_secret)
        (Pa_Ba_Pb_Pc_not_secret)
        (Pa_Ba_Pb_Pc_secret)
        (Pa_Ba_Pb_secret)
        (Pa_Ba_Pc_not_secret)
        (Pa_Ba_Pc_Ba_not_secret)
        (Pa_Ba_Pc_Ba_secret)
        (Pa_Ba_Pc_Bb_not_secret)
        (Pa_Ba_Pc_Bb_secret)
        (Pa_Ba_Pc_Bc_not_secret)
        (Pa_Ba_Pc_Bc_secret)
        (Pa_Ba_Pc_Pa_not_secret)
        (Pa_Ba_Pc_Pa_secret)
        (Pa_Ba_Pc_Pb_not_secret)
        (Pa_Ba_Pc_Pb_secret)
        (Pa_Ba_Pc_Pc_not_secret)
        (Pa_Ba_Pc_Pc_secret)
        (Pa_Ba_Pc_secret)
        (Pa_Ba_secret)
        (Pa_Bb_not_secret)
        (Pa_Bb_Ba_not_secret)
        (Pa_Bb_Ba_Ba_not_secret)
        (Pa_Bb_Ba_Ba_secret)
        (Pa_Bb_Ba_Bb_not_secret)
        (Pa_Bb_Ba_Bb_secret)
        (Pa_Bb_Ba_Bc_not_secret)
        (Pa_Bb_Ba_Bc_secret)
        (Pa_Bb_Ba_Pa_not_secret)
        (Pa_Bb_Ba_Pa_secret)
        (Pa_Bb_Ba_Pb_not_secret)
        (Pa_Bb_Ba_Pb_secret)
        (Pa_Bb_Ba_Pc_not_secret)
        (Pa_Bb_Ba_Pc_secret)
        (Pa_Bb_Ba_secret)
        (Pa_Bb_Bb_not_secret)
        (Pa_Bb_Bb_Ba_not_secret)
        (Pa_Bb_Bb_Ba_secret)
        (Pa_Bb_Bb_Bb_not_secret)
        (Pa_Bb_Bb_Bb_secret)
        (Pa_Bb_Bb_Bc_not_secret)
        (Pa_Bb_Bb_Bc_secret)
        (Pa_Bb_Bb_Pa_not_secret)
        (Pa_Bb_Bb_Pa_secret)
        (Pa_Bb_Bb_Pb_not_secret)
        (Pa_Bb_Bb_Pb_secret)
        (Pa_Bb_Bb_Pc_not_secret)
        (Pa_Bb_Bb_Pc_secret)
        (Pa_Bb_Bb_secret)
        (Pa_Bb_Bc_not_secret)
        (Pa_Bb_Bc_Ba_not_secret)
        (Pa_Bb_Bc_Ba_secret)
        (Pa_Bb_Bc_Bb_not_secret)
        (Pa_Bb_Bc_Bb_secret)
        (Pa_Bb_Bc_Bc_not_secret)
        (Pa_Bb_Bc_Bc_secret)
        (Pa_Bb_Bc_Pa_not_secret)
        (Pa_Bb_Bc_Pa_secret)
        (Pa_Bb_Bc_Pb_not_secret)
        (Pa_Bb_Bc_Pb_secret)
        (Pa_Bb_Bc_Pc_not_secret)
        (Pa_Bb_Bc_Pc_secret)
        (Pa_Bb_Bc_secret)
        (Pa_Bb_Pa_not_secret)
        (Pa_Bb_Pa_Ba_not_secret)
        (Pa_Bb_Pa_Ba_secret)
        (Pa_Bb_Pa_Bb_not_secret)
        (Pa_Bb_Pa_Bb_secret)
        (Pa_Bb_Pa_Bc_not_secret)
        (Pa_Bb_Pa_Bc_secret)
        (Pa_Bb_Pa_Pa_not_secret)
        (Pa_Bb_Pa_Pa_secret)
        (Pa_Bb_Pa_Pb_not_secret)
        (Pa_Bb_Pa_Pb_secret)
        (Pa_Bb_Pa_Pc_not_secret)
        (Pa_Bb_Pa_Pc_secret)
        (Pa_Bb_Pa_secret)
        (Pa_Bb_Pb_not_secret)
        (Pa_Bb_Pb_Ba_not_secret)
        (Pa_Bb_Pb_Ba_secret)
        (Pa_Bb_Pb_Bb_not_secret)
        (Pa_Bb_Pb_Bb_secret)
        (Pa_Bb_Pb_Bc_not_secret)
        (Pa_Bb_Pb_Bc_secret)
        (Pa_Bb_Pb_Pa_not_secret)
        (Pa_Bb_Pb_Pa_secret)
        (Pa_Bb_Pb_Pb_not_secret)
        (Pa_Bb_Pb_Pb_secret)
        (Pa_Bb_Pb_Pc_not_secret)
        (Pa_Bb_Pb_Pc_secret)
        (Pa_Bb_Pb_secret)
        (Pa_Bb_Pc_not_secret)
        (Pa_Bb_Pc_Ba_not_secret)
        (Pa_Bb_Pc_Ba_secret)
        (Pa_Bb_Pc_Bb_not_secret)
        (Pa_Bb_Pc_Bb_secret)
        (Pa_Bb_Pc_Bc_not_secret)
        (Pa_Bb_Pc_Bc_secret)
        (Pa_Bb_Pc_Pa_not_secret)
        (Pa_Bb_Pc_Pa_secret)
        (Pa_Bb_Pc_Pb_not_secret)
        (Pa_Bb_Pc_Pb_secret)
        (Pa_Bb_Pc_Pc_not_secret)
        (Pa_Bb_Pc_Pc_secret)
        (Pa_Bb_Pc_secret)
        (Pa_Bb_secret)
        (Pa_Bc_not_secret)
        (Pa_Bc_Ba_not_secret)
        (Pa_Bc_Ba_Ba_not_secret)
        (Pa_Bc_Ba_Ba_secret)
        (Pa_Bc_Ba_Bb_not_secret)
        (Pa_Bc_Ba_Bb_secret)
        (Pa_Bc_Ba_Bc_not_secret)
        (Pa_Bc_Ba_Bc_secret)
        (Pa_Bc_Ba_Pa_not_secret)
        (Pa_Bc_Ba_Pa_secret)
        (Pa_Bc_Ba_Pb_not_secret)
        (Pa_Bc_Ba_Pb_secret)
        (Pa_Bc_Ba_Pc_not_secret)
        (Pa_Bc_Ba_Pc_secret)
        (Pa_Bc_Ba_secret)
        (Pa_Bc_Bb_not_secret)
        (Pa_Bc_Bb_Ba_not_secret)
        (Pa_Bc_Bb_Ba_secret)
        (Pa_Bc_Bb_Bb_not_secret)
        (Pa_Bc_Bb_Bb_secret)
        (Pa_Bc_Bb_Bc_not_secret)
        (Pa_Bc_Bb_Bc_secret)
        (Pa_Bc_Bb_Pa_not_secret)
        (Pa_Bc_Bb_Pa_secret)
        (Pa_Bc_Bb_Pb_not_secret)
        (Pa_Bc_Bb_Pb_secret)
        (Pa_Bc_Bb_Pc_not_secret)
        (Pa_Bc_Bb_Pc_secret)
        (Pa_Bc_Bb_secret)
        (Pa_Bc_Bc_not_secret)
        (Pa_Bc_Bc_Ba_not_secret)
        (Pa_Bc_Bc_Ba_secret)
        (Pa_Bc_Bc_Bb_not_secret)
        (Pa_Bc_Bc_Bb_secret)
        (Pa_Bc_Bc_Bc_not_secret)
        (Pa_Bc_Bc_Bc_secret)
        (Pa_Bc_Bc_Pa_not_secret)
        (Pa_Bc_Bc_Pa_secret)
        (Pa_Bc_Bc_Pb_not_secret)
        (Pa_Bc_Bc_Pb_secret)
        (Pa_Bc_Bc_Pc_not_secret)
        (Pa_Bc_Bc_Pc_secret)
        (Pa_Bc_Bc_secret)
        (Pa_Bc_Pa_not_secret)
        (Pa_Bc_Pa_Ba_not_secret)
        (Pa_Bc_Pa_Ba_secret)
        (Pa_Bc_Pa_Bb_not_secret)
        (Pa_Bc_Pa_Bb_secret)
        (Pa_Bc_Pa_Bc_not_secret)
        (Pa_Bc_Pa_Bc_secret)
        (Pa_Bc_Pa_Pa_not_secret)
        (Pa_Bc_Pa_Pa_secret)
        (Pa_Bc_Pa_Pb_not_secret)
        (Pa_Bc_Pa_Pb_secret)
        (Pa_Bc_Pa_Pc_not_secret)
        (Pa_Bc_Pa_Pc_secret)
        (Pa_Bc_Pa_secret)
        (Pa_Bc_Pb_not_secret)
        (Pa_Bc_Pb_Ba_not_secret)
        (Pa_Bc_Pb_Ba_secret)
        (Pa_Bc_Pb_Bb_not_secret)
        (Pa_Bc_Pb_Bb_secret)
        (Pa_Bc_Pb_Bc_not_secret)
        (Pa_Bc_Pb_Bc_secret)
        (Pa_Bc_Pb_Pa_not_secret)
        (Pa_Bc_Pb_Pa_secret)
        (Pa_Bc_Pb_Pb_not_secret)
        (Pa_Bc_Pb_Pb_secret)
        (Pa_Bc_Pb_Pc_not_secret)
        (Pa_Bc_Pb_Pc_secret)
        (Pa_Bc_Pb_secret)
        (Pa_Bc_Pc_not_secret)
        (Pa_Bc_Pc_Ba_not_secret)
        (Pa_Bc_Pc_Ba_secret)
        (Pa_Bc_Pc_Bb_not_secret)
        (Pa_Bc_Pc_Bb_secret)
        (Pa_Bc_Pc_Bc_not_secret)
        (Pa_Bc_Pc_Bc_secret)
        (Pa_Bc_Pc_Pa_not_secret)
        (Pa_Bc_Pc_Pa_secret)
        (Pa_Bc_Pc_Pb_not_secret)
        (Pa_Bc_Pc_Pb_secret)
        (Pa_Bc_Pc_Pc_not_secret)
        (Pa_Bc_Pc_Pc_secret)
        (Pa_Bc_Pc_secret)
        (Pa_Bc_secret)
        (Pa_Pa_not_secret)
        (Pa_Pa_Ba_not_secret)
        (Pa_Pa_Ba_Ba_not_secret)
        (Pa_Pa_Ba_Ba_secret)
        (Pa_Pa_Ba_Bb_not_secret)
        (Pa_Pa_Ba_Bb_secret)
        (Pa_Pa_Ba_Bc_not_secret)
        (Pa_Pa_Ba_Bc_secret)
        (Pa_Pa_Ba_Pa_not_secret)
        (Pa_Pa_Ba_Pa_secret)
        (Pa_Pa_Ba_Pb_not_secret)
        (Pa_Pa_Ba_Pb_secret)
        (Pa_Pa_Ba_Pc_not_secret)
        (Pa_Pa_Ba_Pc_secret)
        (Pa_Pa_Ba_secret)
        (Pa_Pa_Bb_not_secret)
        (Pa_Pa_Bb_Ba_not_secret)
        (Pa_Pa_Bb_Ba_secret)
        (Pa_Pa_Bb_Bb_not_secret)
        (Pa_Pa_Bb_Bb_secret)
        (Pa_Pa_Bb_Bc_not_secret)
        (Pa_Pa_Bb_Bc_secret)
        (Pa_Pa_Bb_Pa_not_secret)
        (Pa_Pa_Bb_Pa_secret)
        (Pa_Pa_Bb_Pb_not_secret)
        (Pa_Pa_Bb_Pb_secret)
        (Pa_Pa_Bb_Pc_not_secret)
        (Pa_Pa_Bb_Pc_secret)
        (Pa_Pa_Bb_secret)
        (Pa_Pa_Bc_not_secret)
        (Pa_Pa_Bc_Ba_not_secret)
        (Pa_Pa_Bc_Ba_secret)
        (Pa_Pa_Bc_Bb_not_secret)
        (Pa_Pa_Bc_Bb_secret)
        (Pa_Pa_Bc_Bc_not_secret)
        (Pa_Pa_Bc_Bc_secret)
        (Pa_Pa_Bc_Pa_not_secret)
        (Pa_Pa_Bc_Pa_secret)
        (Pa_Pa_Bc_Pb_not_secret)
        (Pa_Pa_Bc_Pb_secret)
        (Pa_Pa_Bc_Pc_not_secret)
        (Pa_Pa_Bc_Pc_secret)
        (Pa_Pa_Bc_secret)
        (Pa_Pa_Pa_not_secret)
        (Pa_Pa_Pa_Ba_not_secret)
        (Pa_Pa_Pa_Ba_secret)
        (Pa_Pa_Pa_Bb_not_secret)
        (Pa_Pa_Pa_Bb_secret)
        (Pa_Pa_Pa_Bc_not_secret)
        (Pa_Pa_Pa_Bc_secret)
        (Pa_Pa_Pa_Pa_not_secret)
        (Pa_Pa_Pa_Pa_secret)
        (Pa_Pa_Pa_Pb_not_secret)
        (Pa_Pa_Pa_Pb_secret)
        (Pa_Pa_Pa_Pc_not_secret)
        (Pa_Pa_Pa_Pc_secret)
        (Pa_Pa_Pa_secret)
        (Pa_Pa_Pb_not_secret)
        (Pa_Pa_Pb_Ba_not_secret)
        (Pa_Pa_Pb_Ba_secret)
        (Pa_Pa_Pb_Bb_not_secret)
        (Pa_Pa_Pb_Bb_secret)
        (Pa_Pa_Pb_Bc_not_secret)
        (Pa_Pa_Pb_Bc_secret)
        (Pa_Pa_Pb_Pa_not_secret)
        (Pa_Pa_Pb_Pa_secret)
        (Pa_Pa_Pb_Pb_not_secret)
        (Pa_Pa_Pb_Pb_secret)
        (Pa_Pa_Pb_Pc_not_secret)
        (Pa_Pa_Pb_Pc_secret)
        (Pa_Pa_Pb_secret)
        (Pa_Pa_Pc_not_secret)
        (Pa_Pa_Pc_Ba_not_secret)
        (Pa_Pa_Pc_Ba_secret)
        (Pa_Pa_Pc_Bb_not_secret)
        (Pa_Pa_Pc_Bb_secret)
        (Pa_Pa_Pc_Bc_not_secret)
        (Pa_Pa_Pc_Bc_secret)
        (Pa_Pa_Pc_Pa_not_secret)
        (Pa_Pa_Pc_Pa_secret)
        (Pa_Pa_Pc_Pb_not_secret)
        (Pa_Pa_Pc_Pb_secret)
        (Pa_Pa_Pc_Pc_not_secret)
        (Pa_Pa_Pc_Pc_secret)
        (Pa_Pa_Pc_secret)
        (Pa_Pa_secret)
        (Pa_Pb_not_secret)
        (Pa_Pb_Ba_not_secret)
        (Pa_Pb_Ba_Ba_not_secret)
        (Pa_Pb_Ba_Ba_secret)
        (Pa_Pb_Ba_Bb_not_secret)
        (Pa_Pb_Ba_Bb_secret)
        (Pa_Pb_Ba_Bc_not_secret)
        (Pa_Pb_Ba_Bc_secret)
        (Pa_Pb_Ba_Pa_not_secret)
        (Pa_Pb_Ba_Pa_secret)
        (Pa_Pb_Ba_Pb_not_secret)
        (Pa_Pb_Ba_Pb_secret)
        (Pa_Pb_Ba_Pc_not_secret)
        (Pa_Pb_Ba_Pc_secret)
        (Pa_Pb_Ba_secret)
        (Pa_Pb_Bb_not_secret)
        (Pa_Pb_Bb_Ba_not_secret)
        (Pa_Pb_Bb_Ba_secret)
        (Pa_Pb_Bb_Bb_not_secret)
        (Pa_Pb_Bb_Bb_secret)
        (Pa_Pb_Bb_Bc_not_secret)
        (Pa_Pb_Bb_Bc_secret)
        (Pa_Pb_Bb_Pa_not_secret)
        (Pa_Pb_Bb_Pa_secret)
        (Pa_Pb_Bb_Pb_not_secret)
        (Pa_Pb_Bb_Pb_secret)
        (Pa_Pb_Bb_Pc_not_secret)
        (Pa_Pb_Bb_Pc_secret)
        (Pa_Pb_Bb_secret)
        (Pa_Pb_Bc_not_secret)
        (Pa_Pb_Bc_Ba_not_secret)
        (Pa_Pb_Bc_Ba_secret)
        (Pa_Pb_Bc_Bb_not_secret)
        (Pa_Pb_Bc_Bb_secret)
        (Pa_Pb_Bc_Bc_not_secret)
        (Pa_Pb_Bc_Bc_secret)
        (Pa_Pb_Bc_Pa_not_secret)
        (Pa_Pb_Bc_Pa_secret)
        (Pa_Pb_Bc_Pb_not_secret)
        (Pa_Pb_Bc_Pb_secret)
        (Pa_Pb_Bc_Pc_not_secret)
        (Pa_Pb_Bc_Pc_secret)
        (Pa_Pb_Bc_secret)
        (Pa_Pb_Pa_not_secret)
        (Pa_Pb_Pa_Ba_not_secret)
        (Pa_Pb_Pa_Ba_secret)
        (Pa_Pb_Pa_Bb_not_secret)
        (Pa_Pb_Pa_Bb_secret)
        (Pa_Pb_Pa_Bc_not_secret)
        (Pa_Pb_Pa_Bc_secret)
        (Pa_Pb_Pa_Pa_not_secret)
        (Pa_Pb_Pa_Pa_secret)
        (Pa_Pb_Pa_Pb_not_secret)
        (Pa_Pb_Pa_Pb_secret)
        (Pa_Pb_Pa_Pc_not_secret)
        (Pa_Pb_Pa_Pc_secret)
        (Pa_Pb_Pa_secret)
        (Pa_Pb_Pb_not_secret)
        (Pa_Pb_Pb_Ba_not_secret)
        (Pa_Pb_Pb_Ba_secret)
        (Pa_Pb_Pb_Bb_not_secret)
        (Pa_Pb_Pb_Bb_secret)
        (Pa_Pb_Pb_Bc_not_secret)
        (Pa_Pb_Pb_Bc_secret)
        (Pa_Pb_Pb_Pa_not_secret)
        (Pa_Pb_Pb_Pa_secret)
        (Pa_Pb_Pb_Pb_not_secret)
        (Pa_Pb_Pb_Pb_secret)
        (Pa_Pb_Pb_Pc_not_secret)
        (Pa_Pb_Pb_Pc_secret)
        (Pa_Pb_Pb_secret)
        (Pa_Pb_Pc_not_secret)
        (Pa_Pb_Pc_Ba_not_secret)
        (Pa_Pb_Pc_Ba_secret)
        (Pa_Pb_Pc_Bb_not_secret)
        (Pa_Pb_Pc_Bb_secret)
        (Pa_Pb_Pc_Bc_not_secret)
        (Pa_Pb_Pc_Bc_secret)
        (Pa_Pb_Pc_Pa_not_secret)
        (Pa_Pb_Pc_Pa_secret)
        (Pa_Pb_Pc_Pb_not_secret)
        (Pa_Pb_Pc_Pb_secret)
        (Pa_Pb_Pc_Pc_not_secret)
        (Pa_Pb_Pc_Pc_secret)
        (Pa_Pb_Pc_secret)
        (Pa_Pb_secret)
        (Pa_Pc_not_secret)
        (Pa_Pc_Ba_not_secret)
        (Pa_Pc_Ba_Ba_not_secret)
        (Pa_Pc_Ba_Ba_secret)
        (Pa_Pc_Ba_Bb_not_secret)
        (Pa_Pc_Ba_Bb_secret)
        (Pa_Pc_Ba_Bc_not_secret)
        (Pa_Pc_Ba_Bc_secret)
        (Pa_Pc_Ba_Pa_not_secret)
        (Pa_Pc_Ba_Pa_secret)
        (Pa_Pc_Ba_Pb_not_secret)
        (Pa_Pc_Ba_Pb_secret)
        (Pa_Pc_Ba_Pc_not_secret)
        (Pa_Pc_Ba_Pc_secret)
        (Pa_Pc_Ba_secret)
        (Pa_Pc_Bb_not_secret)
        (Pa_Pc_Bb_Ba_not_secret)
        (Pa_Pc_Bb_Ba_secret)
        (Pa_Pc_Bb_Bb_not_secret)
        (Pa_Pc_Bb_Bb_secret)
        (Pa_Pc_Bb_Bc_not_secret)
        (Pa_Pc_Bb_Bc_secret)
        (Pa_Pc_Bb_Pa_not_secret)
        (Pa_Pc_Bb_Pa_secret)
        (Pa_Pc_Bb_Pb_not_secret)
        (Pa_Pc_Bb_Pb_secret)
        (Pa_Pc_Bb_Pc_not_secret)
        (Pa_Pc_Bb_Pc_secret)
        (Pa_Pc_Bb_secret)
        (Pa_Pc_Bc_not_secret)
        (Pa_Pc_Bc_Ba_not_secret)
        (Pa_Pc_Bc_Ba_secret)
        (Pa_Pc_Bc_Bb_not_secret)
        (Pa_Pc_Bc_Bb_secret)
        (Pa_Pc_Bc_Bc_not_secret)
        (Pa_Pc_Bc_Bc_secret)
        (Pa_Pc_Bc_Pa_not_secret)
        (Pa_Pc_Bc_Pa_secret)
        (Pa_Pc_Bc_Pb_not_secret)
        (Pa_Pc_Bc_Pb_secret)
        (Pa_Pc_Bc_Pc_not_secret)
        (Pa_Pc_Bc_Pc_secret)
        (Pa_Pc_Bc_secret)
        (Pa_Pc_Pa_not_secret)
        (Pa_Pc_Pa_Ba_not_secret)
        (Pa_Pc_Pa_Ba_secret)
        (Pa_Pc_Pa_Bb_not_secret)
        (Pa_Pc_Pa_Bb_secret)
        (Pa_Pc_Pa_Bc_not_secret)
        (Pa_Pc_Pa_Bc_secret)
        (Pa_Pc_Pa_Pa_not_secret)
        (Pa_Pc_Pa_Pa_secret)
        (Pa_Pc_Pa_Pb_not_secret)
        (Pa_Pc_Pa_Pb_secret)
        (Pa_Pc_Pa_Pc_not_secret)
        (Pa_Pc_Pa_Pc_secret)
        (Pa_Pc_Pa_secret)
        (Pa_Pc_Pb_not_secret)
        (Pa_Pc_Pb_Ba_not_secret)
        (Pa_Pc_Pb_Ba_secret)
        (Pa_Pc_Pb_Bb_not_secret)
        (Pa_Pc_Pb_Bb_secret)
        (Pa_Pc_Pb_Bc_not_secret)
        (Pa_Pc_Pb_Bc_secret)
        (Pa_Pc_Pb_Pa_not_secret)
        (Pa_Pc_Pb_Pa_secret)
        (Pa_Pc_Pb_Pb_not_secret)
        (Pa_Pc_Pb_Pb_secret)
        (Pa_Pc_Pb_Pc_not_secret)
        (Pa_Pc_Pb_Pc_secret)
        (Pa_Pc_Pb_secret)
        (Pa_Pc_Pc_not_secret)
        (Pa_Pc_Pc_Ba_not_secret)
        (Pa_Pc_Pc_Ba_secret)
        (Pa_Pc_Pc_Bb_not_secret)
        (Pa_Pc_Pc_Bb_secret)
        (Pa_Pc_Pc_Bc_not_secret)
        (Pa_Pc_Pc_Bc_secret)
        (Pa_Pc_Pc_Pa_not_secret)
        (Pa_Pc_Pc_Pa_secret)
        (Pa_Pc_Pc_Pb_not_secret)
        (Pa_Pc_Pc_Pb_secret)
        (Pa_Pc_Pc_Pc_not_secret)
        (Pa_Pc_Pc_Pc_secret)
        (Pa_Pc_Pc_secret)
        (Pa_Pc_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_Ba_not_secret)
        (Pb_Ba_Ba_not_secret)
        (Pb_Ba_Ba_Ba_not_secret)
        (Pb_Ba_Ba_Ba_secret)
        (Pb_Ba_Ba_Bb_not_secret)
        (Pb_Ba_Ba_Bb_secret)
        (Pb_Ba_Ba_Bc_not_secret)
        (Pb_Ba_Ba_Bc_secret)
        (Pb_Ba_Ba_Pa_not_secret)
        (Pb_Ba_Ba_Pa_secret)
        (Pb_Ba_Ba_Pb_not_secret)
        (Pb_Ba_Ba_Pb_secret)
        (Pb_Ba_Ba_Pc_not_secret)
        (Pb_Ba_Ba_Pc_secret)
        (Pb_Ba_Ba_secret)
        (Pb_Ba_Bb_not_secret)
        (Pb_Ba_Bb_Ba_not_secret)
        (Pb_Ba_Bb_Ba_secret)
        (Pb_Ba_Bb_Bb_not_secret)
        (Pb_Ba_Bb_Bb_secret)
        (Pb_Ba_Bb_Bc_not_secret)
        (Pb_Ba_Bb_Bc_secret)
        (Pb_Ba_Bb_Pa_not_secret)
        (Pb_Ba_Bb_Pa_secret)
        (Pb_Ba_Bb_Pb_not_secret)
        (Pb_Ba_Bb_Pb_secret)
        (Pb_Ba_Bb_Pc_not_secret)
        (Pb_Ba_Bb_Pc_secret)
        (Pb_Ba_Bb_secret)
        (Pb_Ba_Bc_not_secret)
        (Pb_Ba_Bc_Ba_not_secret)
        (Pb_Ba_Bc_Ba_secret)
        (Pb_Ba_Bc_Bb_not_secret)
        (Pb_Ba_Bc_Bb_secret)
        (Pb_Ba_Bc_Bc_not_secret)
        (Pb_Ba_Bc_Bc_secret)
        (Pb_Ba_Bc_Pa_not_secret)
        (Pb_Ba_Bc_Pa_secret)
        (Pb_Ba_Bc_Pb_not_secret)
        (Pb_Ba_Bc_Pb_secret)
        (Pb_Ba_Bc_Pc_not_secret)
        (Pb_Ba_Bc_Pc_secret)
        (Pb_Ba_Bc_secret)
        (Pb_Ba_Pa_not_secret)
        (Pb_Ba_Pa_Ba_not_secret)
        (Pb_Ba_Pa_Ba_secret)
        (Pb_Ba_Pa_Bb_not_secret)
        (Pb_Ba_Pa_Bb_secret)
        (Pb_Ba_Pa_Bc_not_secret)
        (Pb_Ba_Pa_Bc_secret)
        (Pb_Ba_Pa_Pa_not_secret)
        (Pb_Ba_Pa_Pa_secret)
        (Pb_Ba_Pa_Pb_not_secret)
        (Pb_Ba_Pa_Pb_secret)
        (Pb_Ba_Pa_Pc_not_secret)
        (Pb_Ba_Pa_Pc_secret)
        (Pb_Ba_Pa_secret)
        (Pb_Ba_Pb_not_secret)
        (Pb_Ba_Pb_Ba_not_secret)
        (Pb_Ba_Pb_Ba_secret)
        (Pb_Ba_Pb_Bb_not_secret)
        (Pb_Ba_Pb_Bb_secret)
        (Pb_Ba_Pb_Bc_not_secret)
        (Pb_Ba_Pb_Bc_secret)
        (Pb_Ba_Pb_Pa_not_secret)
        (Pb_Ba_Pb_Pa_secret)
        (Pb_Ba_Pb_Pb_not_secret)
        (Pb_Ba_Pb_Pb_secret)
        (Pb_Ba_Pb_Pc_not_secret)
        (Pb_Ba_Pb_Pc_secret)
        (Pb_Ba_Pb_secret)
        (Pb_Ba_Pc_not_secret)
        (Pb_Ba_Pc_Ba_not_secret)
        (Pb_Ba_Pc_Ba_secret)
        (Pb_Ba_Pc_Bb_not_secret)
        (Pb_Ba_Pc_Bb_secret)
        (Pb_Ba_Pc_Bc_not_secret)
        (Pb_Ba_Pc_Bc_secret)
        (Pb_Ba_Pc_Pa_not_secret)
        (Pb_Ba_Pc_Pa_secret)
        (Pb_Ba_Pc_Pb_not_secret)
        (Pb_Ba_Pc_Pb_secret)
        (Pb_Ba_Pc_Pc_not_secret)
        (Pb_Ba_Pc_Pc_secret)
        (Pb_Ba_Pc_secret)
        (Pb_Ba_secret)
        (Pb_Bb_not_secret)
        (Pb_Bb_Ba_not_secret)
        (Pb_Bb_Ba_Ba_not_secret)
        (Pb_Bb_Ba_Ba_secret)
        (Pb_Bb_Ba_Bb_not_secret)
        (Pb_Bb_Ba_Bb_secret)
        (Pb_Bb_Ba_Bc_not_secret)
        (Pb_Bb_Ba_Bc_secret)
        (Pb_Bb_Ba_Pa_not_secret)
        (Pb_Bb_Ba_Pa_secret)
        (Pb_Bb_Ba_Pb_not_secret)
        (Pb_Bb_Ba_Pb_secret)
        (Pb_Bb_Ba_Pc_not_secret)
        (Pb_Bb_Ba_Pc_secret)
        (Pb_Bb_Ba_secret)
        (Pb_Bb_Bb_not_secret)
        (Pb_Bb_Bb_Ba_not_secret)
        (Pb_Bb_Bb_Ba_secret)
        (Pb_Bb_Bb_Bb_not_secret)
        (Pb_Bb_Bb_Bb_secret)
        (Pb_Bb_Bb_Bc_not_secret)
        (Pb_Bb_Bb_Bc_secret)
        (Pb_Bb_Bb_Pa_not_secret)
        (Pb_Bb_Bb_Pa_secret)
        (Pb_Bb_Bb_Pb_not_secret)
        (Pb_Bb_Bb_Pb_secret)
        (Pb_Bb_Bb_Pc_not_secret)
        (Pb_Bb_Bb_Pc_secret)
        (Pb_Bb_Bb_secret)
        (Pb_Bb_Bc_not_secret)
        (Pb_Bb_Bc_Ba_not_secret)
        (Pb_Bb_Bc_Ba_secret)
        (Pb_Bb_Bc_Bb_not_secret)
        (Pb_Bb_Bc_Bb_secret)
        (Pb_Bb_Bc_Bc_not_secret)
        (Pb_Bb_Bc_Bc_secret)
        (Pb_Bb_Bc_Pa_not_secret)
        (Pb_Bb_Bc_Pa_secret)
        (Pb_Bb_Bc_Pb_not_secret)
        (Pb_Bb_Bc_Pb_secret)
        (Pb_Bb_Bc_Pc_not_secret)
        (Pb_Bb_Bc_Pc_secret)
        (Pb_Bb_Bc_secret)
        (Pb_Bb_Pa_not_secret)
        (Pb_Bb_Pa_Ba_not_secret)
        (Pb_Bb_Pa_Ba_secret)
        (Pb_Bb_Pa_Bb_not_secret)
        (Pb_Bb_Pa_Bb_secret)
        (Pb_Bb_Pa_Bc_not_secret)
        (Pb_Bb_Pa_Bc_secret)
        (Pb_Bb_Pa_Pa_not_secret)
        (Pb_Bb_Pa_Pa_secret)
        (Pb_Bb_Pa_Pb_not_secret)
        (Pb_Bb_Pa_Pb_secret)
        (Pb_Bb_Pa_Pc_not_secret)
        (Pb_Bb_Pa_Pc_secret)
        (Pb_Bb_Pa_secret)
        (Pb_Bb_Pb_not_secret)
        (Pb_Bb_Pb_Ba_not_secret)
        (Pb_Bb_Pb_Ba_secret)
        (Pb_Bb_Pb_Bb_not_secret)
        (Pb_Bb_Pb_Bb_secret)
        (Pb_Bb_Pb_Bc_not_secret)
        (Pb_Bb_Pb_Bc_secret)
        (Pb_Bb_Pb_Pa_not_secret)
        (Pb_Bb_Pb_Pa_secret)
        (Pb_Bb_Pb_Pb_not_secret)
        (Pb_Bb_Pb_Pb_secret)
        (Pb_Bb_Pb_Pc_not_secret)
        (Pb_Bb_Pb_Pc_secret)
        (Pb_Bb_Pb_secret)
        (Pb_Bb_Pc_not_secret)
        (Pb_Bb_Pc_Ba_not_secret)
        (Pb_Bb_Pc_Ba_secret)
        (Pb_Bb_Pc_Bb_not_secret)
        (Pb_Bb_Pc_Bb_secret)
        (Pb_Bb_Pc_Bc_not_secret)
        (Pb_Bb_Pc_Bc_secret)
        (Pb_Bb_Pc_Pa_not_secret)
        (Pb_Bb_Pc_Pa_secret)
        (Pb_Bb_Pc_Pb_not_secret)
        (Pb_Bb_Pc_Pb_secret)
        (Pb_Bb_Pc_Pc_not_secret)
        (Pb_Bb_Pc_Pc_secret)
        (Pb_Bb_Pc_secret)
        (Pb_Bb_secret)
        (Pb_Bc_not_secret)
        (Pb_Bc_Ba_not_secret)
        (Pb_Bc_Ba_Ba_not_secret)
        (Pb_Bc_Ba_Ba_secret)
        (Pb_Bc_Ba_Bb_not_secret)
        (Pb_Bc_Ba_Bb_secret)
        (Pb_Bc_Ba_Bc_not_secret)
        (Pb_Bc_Ba_Bc_secret)
        (Pb_Bc_Ba_Pa_not_secret)
        (Pb_Bc_Ba_Pa_secret)
        (Pb_Bc_Ba_Pb_not_secret)
        (Pb_Bc_Ba_Pb_secret)
        (Pb_Bc_Ba_Pc_not_secret)
        (Pb_Bc_Ba_Pc_secret)
        (Pb_Bc_Ba_secret)
        (Pb_Bc_Bb_not_secret)
        (Pb_Bc_Bb_Ba_not_secret)
        (Pb_Bc_Bb_Ba_secret)
        (Pb_Bc_Bb_Bb_not_secret)
        (Pb_Bc_Bb_Bb_secret)
        (Pb_Bc_Bb_Bc_not_secret)
        (Pb_Bc_Bb_Bc_secret)
        (Pb_Bc_Bb_Pa_not_secret)
        (Pb_Bc_Bb_Pa_secret)
        (Pb_Bc_Bb_Pb_not_secret)
        (Pb_Bc_Bb_Pb_secret)
        (Pb_Bc_Bb_Pc_not_secret)
        (Pb_Bc_Bb_Pc_secret)
        (Pb_Bc_Bb_secret)
        (Pb_Bc_Bc_not_secret)
        (Pb_Bc_Bc_Ba_not_secret)
        (Pb_Bc_Bc_Ba_secret)
        (Pb_Bc_Bc_Bb_not_secret)
        (Pb_Bc_Bc_Bb_secret)
        (Pb_Bc_Bc_Bc_not_secret)
        (Pb_Bc_Bc_Bc_secret)
        (Pb_Bc_Bc_Pa_not_secret)
        (Pb_Bc_Bc_Pa_secret)
        (Pb_Bc_Bc_Pb_not_secret)
        (Pb_Bc_Bc_Pb_secret)
        (Pb_Bc_Bc_Pc_not_secret)
        (Pb_Bc_Bc_Pc_secret)
        (Pb_Bc_Bc_secret)
        (Pb_Bc_Pa_not_secret)
        (Pb_Bc_Pa_Ba_not_secret)
        (Pb_Bc_Pa_Ba_secret)
        (Pb_Bc_Pa_Bb_not_secret)
        (Pb_Bc_Pa_Bb_secret)
        (Pb_Bc_Pa_Bc_not_secret)
        (Pb_Bc_Pa_Bc_secret)
        (Pb_Bc_Pa_Pa_not_secret)
        (Pb_Bc_Pa_Pa_secret)
        (Pb_Bc_Pa_Pb_not_secret)
        (Pb_Bc_Pa_Pb_secret)
        (Pb_Bc_Pa_Pc_not_secret)
        (Pb_Bc_Pa_Pc_secret)
        (Pb_Bc_Pa_secret)
        (Pb_Bc_Pb_not_secret)
        (Pb_Bc_Pb_Ba_not_secret)
        (Pb_Bc_Pb_Ba_secret)
        (Pb_Bc_Pb_Bb_not_secret)
        (Pb_Bc_Pb_Bb_secret)
        (Pb_Bc_Pb_Bc_not_secret)
        (Pb_Bc_Pb_Bc_secret)
        (Pb_Bc_Pb_Pa_not_secret)
        (Pb_Bc_Pb_Pa_secret)
        (Pb_Bc_Pb_Pb_not_secret)
        (Pb_Bc_Pb_Pb_secret)
        (Pb_Bc_Pb_Pc_not_secret)
        (Pb_Bc_Pb_Pc_secret)
        (Pb_Bc_Pb_secret)
        (Pb_Bc_Pc_not_secret)
        (Pb_Bc_Pc_Ba_not_secret)
        (Pb_Bc_Pc_Ba_secret)
        (Pb_Bc_Pc_Bb_not_secret)
        (Pb_Bc_Pc_Bb_secret)
        (Pb_Bc_Pc_Bc_not_secret)
        (Pb_Bc_Pc_Bc_secret)
        (Pb_Bc_Pc_Pa_not_secret)
        (Pb_Bc_Pc_Pa_secret)
        (Pb_Bc_Pc_Pb_not_secret)
        (Pb_Bc_Pc_Pb_secret)
        (Pb_Bc_Pc_Pc_not_secret)
        (Pb_Bc_Pc_Pc_secret)
        (Pb_Bc_Pc_secret)
        (Pb_Bc_secret)
        (Pb_Pa_not_secret)
        (Pb_Pa_Ba_not_secret)
        (Pb_Pa_Ba_Ba_not_secret)
        (Pb_Pa_Ba_Ba_secret)
        (Pb_Pa_Ba_Bb_not_secret)
        (Pb_Pa_Ba_Bb_secret)
        (Pb_Pa_Ba_Bc_not_secret)
        (Pb_Pa_Ba_Bc_secret)
        (Pb_Pa_Ba_Pa_not_secret)
        (Pb_Pa_Ba_Pa_secret)
        (Pb_Pa_Ba_Pb_not_secret)
        (Pb_Pa_Ba_Pb_secret)
        (Pb_Pa_Ba_Pc_not_secret)
        (Pb_Pa_Ba_Pc_secret)
        (Pb_Pa_Ba_secret)
        (Pb_Pa_Bb_not_secret)
        (Pb_Pa_Bb_Ba_not_secret)
        (Pb_Pa_Bb_Ba_secret)
        (Pb_Pa_Bb_Bb_not_secret)
        (Pb_Pa_Bb_Bb_secret)
        (Pb_Pa_Bb_Bc_not_secret)
        (Pb_Pa_Bb_Bc_secret)
        (Pb_Pa_Bb_Pa_not_secret)
        (Pb_Pa_Bb_Pa_secret)
        (Pb_Pa_Bb_Pb_not_secret)
        (Pb_Pa_Bb_Pb_secret)
        (Pb_Pa_Bb_Pc_not_secret)
        (Pb_Pa_Bb_Pc_secret)
        (Pb_Pa_Bb_secret)
        (Pb_Pa_Bc_not_secret)
        (Pb_Pa_Bc_Ba_not_secret)
        (Pb_Pa_Bc_Ba_secret)
        (Pb_Pa_Bc_Bb_not_secret)
        (Pb_Pa_Bc_Bb_secret)
        (Pb_Pa_Bc_Bc_not_secret)
        (Pb_Pa_Bc_Bc_secret)
        (Pb_Pa_Bc_Pa_not_secret)
        (Pb_Pa_Bc_Pa_secret)
        (Pb_Pa_Bc_Pb_not_secret)
        (Pb_Pa_Bc_Pb_secret)
        (Pb_Pa_Bc_Pc_not_secret)
        (Pb_Pa_Bc_Pc_secret)
        (Pb_Pa_Bc_secret)
        (Pb_Pa_Pa_not_secret)
        (Pb_Pa_Pa_Ba_not_secret)
        (Pb_Pa_Pa_Ba_secret)
        (Pb_Pa_Pa_Bb_not_secret)
        (Pb_Pa_Pa_Bb_secret)
        (Pb_Pa_Pa_Bc_not_secret)
        (Pb_Pa_Pa_Bc_secret)
        (Pb_Pa_Pa_Pa_not_secret)
        (Pb_Pa_Pa_Pa_secret)
        (Pb_Pa_Pa_Pb_not_secret)
        (Pb_Pa_Pa_Pb_secret)
        (Pb_Pa_Pa_Pc_not_secret)
        (Pb_Pa_Pa_Pc_secret)
        (Pb_Pa_Pa_secret)
        (Pb_Pa_Pb_not_secret)
        (Pb_Pa_Pb_Ba_not_secret)
        (Pb_Pa_Pb_Ba_secret)
        (Pb_Pa_Pb_Bb_not_secret)
        (Pb_Pa_Pb_Bb_secret)
        (Pb_Pa_Pb_Bc_not_secret)
        (Pb_Pa_Pb_Bc_secret)
        (Pb_Pa_Pb_Pa_not_secret)
        (Pb_Pa_Pb_Pa_secret)
        (Pb_Pa_Pb_Pb_not_secret)
        (Pb_Pa_Pb_Pb_secret)
        (Pb_Pa_Pb_Pc_not_secret)
        (Pb_Pa_Pb_Pc_secret)
        (Pb_Pa_Pb_secret)
        (Pb_Pa_Pc_not_secret)
        (Pb_Pa_Pc_Ba_not_secret)
        (Pb_Pa_Pc_Ba_secret)
        (Pb_Pa_Pc_Bb_not_secret)
        (Pb_Pa_Pc_Bb_secret)
        (Pb_Pa_Pc_Bc_not_secret)
        (Pb_Pa_Pc_Bc_secret)
        (Pb_Pa_Pc_Pa_not_secret)
        (Pb_Pa_Pc_Pa_secret)
        (Pb_Pa_Pc_Pb_not_secret)
        (Pb_Pa_Pc_Pb_secret)
        (Pb_Pa_Pc_Pc_not_secret)
        (Pb_Pa_Pc_Pc_secret)
        (Pb_Pa_Pc_secret)
        (Pb_Pa_secret)
        (Pb_Pb_not_secret)
        (Pb_Pb_Ba_not_secret)
        (Pb_Pb_Ba_Ba_not_secret)
        (Pb_Pb_Ba_Ba_secret)
        (Pb_Pb_Ba_Bb_not_secret)
        (Pb_Pb_Ba_Bb_secret)
        (Pb_Pb_Ba_Bc_not_secret)
        (Pb_Pb_Ba_Bc_secret)
        (Pb_Pb_Ba_Pa_not_secret)
        (Pb_Pb_Ba_Pa_secret)
        (Pb_Pb_Ba_Pb_not_secret)
        (Pb_Pb_Ba_Pb_secret)
        (Pb_Pb_Ba_Pc_not_secret)
        (Pb_Pb_Ba_Pc_secret)
        (Pb_Pb_Ba_secret)
        (Pb_Pb_Bb_not_secret)
        (Pb_Pb_Bb_Ba_not_secret)
        (Pb_Pb_Bb_Ba_secret)
        (Pb_Pb_Bb_Bb_not_secret)
        (Pb_Pb_Bb_Bb_secret)
        (Pb_Pb_Bb_Bc_not_secret)
        (Pb_Pb_Bb_Bc_secret)
        (Pb_Pb_Bb_Pa_not_secret)
        (Pb_Pb_Bb_Pa_secret)
        (Pb_Pb_Bb_Pb_not_secret)
        (Pb_Pb_Bb_Pb_secret)
        (Pb_Pb_Bb_Pc_not_secret)
        (Pb_Pb_Bb_Pc_secret)
        (Pb_Pb_Bb_secret)
        (Pb_Pb_Bc_not_secret)
        (Pb_Pb_Bc_Ba_not_secret)
        (Pb_Pb_Bc_Ba_secret)
        (Pb_Pb_Bc_Bb_not_secret)
        (Pb_Pb_Bc_Bb_secret)
        (Pb_Pb_Bc_Bc_not_secret)
        (Pb_Pb_Bc_Bc_secret)
        (Pb_Pb_Bc_Pa_not_secret)
        (Pb_Pb_Bc_Pa_secret)
        (Pb_Pb_Bc_Pb_not_secret)
        (Pb_Pb_Bc_Pb_secret)
        (Pb_Pb_Bc_Pc_not_secret)
        (Pb_Pb_Bc_Pc_secret)
        (Pb_Pb_Bc_secret)
        (Pb_Pb_Pa_not_secret)
        (Pb_Pb_Pa_Ba_not_secret)
        (Pb_Pb_Pa_Ba_secret)
        (Pb_Pb_Pa_Bb_not_secret)
        (Pb_Pb_Pa_Bb_secret)
        (Pb_Pb_Pa_Bc_not_secret)
        (Pb_Pb_Pa_Bc_secret)
        (Pb_Pb_Pa_Pa_not_secret)
        (Pb_Pb_Pa_Pa_secret)
        (Pb_Pb_Pa_Pb_not_secret)
        (Pb_Pb_Pa_Pb_secret)
        (Pb_Pb_Pa_Pc_not_secret)
        (Pb_Pb_Pa_Pc_secret)
        (Pb_Pb_Pa_secret)
        (Pb_Pb_Pb_not_secret)
        (Pb_Pb_Pb_Ba_not_secret)
        (Pb_Pb_Pb_Ba_secret)
        (Pb_Pb_Pb_Bb_not_secret)
        (Pb_Pb_Pb_Bb_secret)
        (Pb_Pb_Pb_Bc_not_secret)
        (Pb_Pb_Pb_Bc_secret)
        (Pb_Pb_Pb_Pa_not_secret)
        (Pb_Pb_Pb_Pa_secret)
        (Pb_Pb_Pb_Pb_not_secret)
        (Pb_Pb_Pb_Pb_secret)
        (Pb_Pb_Pb_Pc_not_secret)
        (Pb_Pb_Pb_Pc_secret)
        (Pb_Pb_Pb_secret)
        (Pb_Pb_Pc_not_secret)
        (Pb_Pb_Pc_Ba_not_secret)
        (Pb_Pb_Pc_Ba_secret)
        (Pb_Pb_Pc_Bb_not_secret)
        (Pb_Pb_Pc_Bb_secret)
        (Pb_Pb_Pc_Bc_not_secret)
        (Pb_Pb_Pc_Bc_secret)
        (Pb_Pb_Pc_Pa_not_secret)
        (Pb_Pb_Pc_Pa_secret)
        (Pb_Pb_Pc_Pb_not_secret)
        (Pb_Pb_Pc_Pb_secret)
        (Pb_Pb_Pc_Pc_not_secret)
        (Pb_Pb_Pc_Pc_secret)
        (Pb_Pb_Pc_secret)
        (Pb_Pb_secret)
        (Pb_Pc_not_secret)
        (Pb_Pc_Ba_not_secret)
        (Pb_Pc_Ba_Ba_not_secret)
        (Pb_Pc_Ba_Ba_secret)
        (Pb_Pc_Ba_Bb_not_secret)
        (Pb_Pc_Ba_Bb_secret)
        (Pb_Pc_Ba_Bc_not_secret)
        (Pb_Pc_Ba_Bc_secret)
        (Pb_Pc_Ba_Pa_not_secret)
        (Pb_Pc_Ba_Pa_secret)
        (Pb_Pc_Ba_Pb_not_secret)
        (Pb_Pc_Ba_Pb_secret)
        (Pb_Pc_Ba_Pc_not_secret)
        (Pb_Pc_Ba_Pc_secret)
        (Pb_Pc_Ba_secret)
        (Pb_Pc_Bb_not_secret)
        (Pb_Pc_Bb_Ba_not_secret)
        (Pb_Pc_Bb_Ba_secret)
        (Pb_Pc_Bb_Bb_not_secret)
        (Pb_Pc_Bb_Bb_secret)
        (Pb_Pc_Bb_Bc_not_secret)
        (Pb_Pc_Bb_Bc_secret)
        (Pb_Pc_Bb_Pa_not_secret)
        (Pb_Pc_Bb_Pa_secret)
        (Pb_Pc_Bb_Pb_not_secret)
        (Pb_Pc_Bb_Pb_secret)
        (Pb_Pc_Bb_Pc_not_secret)
        (Pb_Pc_Bb_Pc_secret)
        (Pb_Pc_Bb_secret)
        (Pb_Pc_Bc_not_secret)
        (Pb_Pc_Bc_Ba_not_secret)
        (Pb_Pc_Bc_Ba_secret)
        (Pb_Pc_Bc_Bb_not_secret)
        (Pb_Pc_Bc_Bb_secret)
        (Pb_Pc_Bc_Bc_not_secret)
        (Pb_Pc_Bc_Bc_secret)
        (Pb_Pc_Bc_Pa_not_secret)
        (Pb_Pc_Bc_Pa_secret)
        (Pb_Pc_Bc_Pb_not_secret)
        (Pb_Pc_Bc_Pb_secret)
        (Pb_Pc_Bc_Pc_not_secret)
        (Pb_Pc_Bc_Pc_secret)
        (Pb_Pc_Bc_secret)
        (Pb_Pc_Pa_not_secret)
        (Pb_Pc_Pa_Ba_not_secret)
        (Pb_Pc_Pa_Ba_secret)
        (Pb_Pc_Pa_Bb_not_secret)
        (Pb_Pc_Pa_Bb_secret)
        (Pb_Pc_Pa_Bc_not_secret)
        (Pb_Pc_Pa_Bc_secret)
        (Pb_Pc_Pa_Pa_not_secret)
        (Pb_Pc_Pa_Pa_secret)
        (Pb_Pc_Pa_Pb_not_secret)
        (Pb_Pc_Pa_Pb_secret)
        (Pb_Pc_Pa_Pc_not_secret)
        (Pb_Pc_Pa_Pc_secret)
        (Pb_Pc_Pa_secret)
        (Pb_Pc_Pb_not_secret)
        (Pb_Pc_Pb_Ba_not_secret)
        (Pb_Pc_Pb_Ba_secret)
        (Pb_Pc_Pb_Bb_not_secret)
        (Pb_Pc_Pb_Bb_secret)
        (Pb_Pc_Pb_Bc_not_secret)
        (Pb_Pc_Pb_Bc_secret)
        (Pb_Pc_Pb_Pa_not_secret)
        (Pb_Pc_Pb_Pa_secret)
        (Pb_Pc_Pb_Pb_not_secret)
        (Pb_Pc_Pb_Pb_secret)
        (Pb_Pc_Pb_Pc_not_secret)
        (Pb_Pc_Pb_Pc_secret)
        (Pb_Pc_Pb_secret)
        (Pb_Pc_Pc_not_secret)
        (Pb_Pc_Pc_Ba_not_secret)
        (Pb_Pc_Pc_Ba_secret)
        (Pb_Pc_Pc_Bb_not_secret)
        (Pb_Pc_Pc_Bb_secret)
        (Pb_Pc_Pc_Bc_not_secret)
        (Pb_Pc_Pc_Bc_secret)
        (Pb_Pc_Pc_Pa_not_secret)
        (Pb_Pc_Pc_Pa_secret)
        (Pb_Pc_Pc_Pb_not_secret)
        (Pb_Pc_Pc_Pb_secret)
        (Pb_Pc_Pc_Pc_not_secret)
        (Pb_Pc_Pc_Pc_secret)
        (Pb_Pc_Pc_secret)
        (Pb_Pc_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_Ba_not_secret)
        (Pc_Ba_Ba_not_secret)
        (Pc_Ba_Ba_Ba_not_secret)
        (Pc_Ba_Ba_Ba_secret)
        (Pc_Ba_Ba_Bb_not_secret)
        (Pc_Ba_Ba_Bb_secret)
        (Pc_Ba_Ba_Bc_not_secret)
        (Pc_Ba_Ba_Bc_secret)
        (Pc_Ba_Ba_Pa_not_secret)
        (Pc_Ba_Ba_Pa_secret)
        (Pc_Ba_Ba_Pb_not_secret)
        (Pc_Ba_Ba_Pb_secret)
        (Pc_Ba_Ba_Pc_not_secret)
        (Pc_Ba_Ba_Pc_secret)
        (Pc_Ba_Ba_secret)
        (Pc_Ba_Bb_not_secret)
        (Pc_Ba_Bb_Ba_not_secret)
        (Pc_Ba_Bb_Ba_secret)
        (Pc_Ba_Bb_Bb_not_secret)
        (Pc_Ba_Bb_Bb_secret)
        (Pc_Ba_Bb_Bc_not_secret)
        (Pc_Ba_Bb_Bc_secret)
        (Pc_Ba_Bb_Pa_not_secret)
        (Pc_Ba_Bb_Pa_secret)
        (Pc_Ba_Bb_Pb_not_secret)
        (Pc_Ba_Bb_Pb_secret)
        (Pc_Ba_Bb_Pc_not_secret)
        (Pc_Ba_Bb_Pc_secret)
        (Pc_Ba_Bb_secret)
        (Pc_Ba_Bc_not_secret)
        (Pc_Ba_Bc_Ba_not_secret)
        (Pc_Ba_Bc_Ba_secret)
        (Pc_Ba_Bc_Bb_not_secret)
        (Pc_Ba_Bc_Bb_secret)
        (Pc_Ba_Bc_Bc_not_secret)
        (Pc_Ba_Bc_Bc_secret)
        (Pc_Ba_Bc_Pa_not_secret)
        (Pc_Ba_Bc_Pa_secret)
        (Pc_Ba_Bc_Pb_not_secret)
        (Pc_Ba_Bc_Pb_secret)
        (Pc_Ba_Bc_Pc_not_secret)
        (Pc_Ba_Bc_Pc_secret)
        (Pc_Ba_Bc_secret)
        (Pc_Ba_Pa_not_secret)
        (Pc_Ba_Pa_Ba_not_secret)
        (Pc_Ba_Pa_Ba_secret)
        (Pc_Ba_Pa_Bb_not_secret)
        (Pc_Ba_Pa_Bb_secret)
        (Pc_Ba_Pa_Bc_not_secret)
        (Pc_Ba_Pa_Bc_secret)
        (Pc_Ba_Pa_Pa_not_secret)
        (Pc_Ba_Pa_Pa_secret)
        (Pc_Ba_Pa_Pb_not_secret)
        (Pc_Ba_Pa_Pb_secret)
        (Pc_Ba_Pa_Pc_not_secret)
        (Pc_Ba_Pa_Pc_secret)
        (Pc_Ba_Pa_secret)
        (Pc_Ba_Pb_not_secret)
        (Pc_Ba_Pb_Ba_not_secret)
        (Pc_Ba_Pb_Ba_secret)
        (Pc_Ba_Pb_Bb_not_secret)
        (Pc_Ba_Pb_Bb_secret)
        (Pc_Ba_Pb_Bc_not_secret)
        (Pc_Ba_Pb_Bc_secret)
        (Pc_Ba_Pb_Pa_not_secret)
        (Pc_Ba_Pb_Pa_secret)
        (Pc_Ba_Pb_Pb_not_secret)
        (Pc_Ba_Pb_Pb_secret)
        (Pc_Ba_Pb_Pc_not_secret)
        (Pc_Ba_Pb_Pc_secret)
        (Pc_Ba_Pb_secret)
        (Pc_Ba_Pc_not_secret)
        (Pc_Ba_Pc_Ba_not_secret)
        (Pc_Ba_Pc_Ba_secret)
        (Pc_Ba_Pc_Bb_not_secret)
        (Pc_Ba_Pc_Bb_secret)
        (Pc_Ba_Pc_Bc_not_secret)
        (Pc_Ba_Pc_Bc_secret)
        (Pc_Ba_Pc_Pa_not_secret)
        (Pc_Ba_Pc_Pa_secret)
        (Pc_Ba_Pc_Pb_not_secret)
        (Pc_Ba_Pc_Pb_secret)
        (Pc_Ba_Pc_Pc_not_secret)
        (Pc_Ba_Pc_Pc_secret)
        (Pc_Ba_Pc_secret)
        (Pc_Ba_secret)
        (Pc_Bb_not_secret)
        (Pc_Bb_Ba_not_secret)
        (Pc_Bb_Ba_Ba_not_secret)
        (Pc_Bb_Ba_Ba_secret)
        (Pc_Bb_Ba_Bb_not_secret)
        (Pc_Bb_Ba_Bb_secret)
        (Pc_Bb_Ba_Bc_not_secret)
        (Pc_Bb_Ba_Bc_secret)
        (Pc_Bb_Ba_Pa_not_secret)
        (Pc_Bb_Ba_Pa_secret)
        (Pc_Bb_Ba_Pb_not_secret)
        (Pc_Bb_Ba_Pb_secret)
        (Pc_Bb_Ba_Pc_not_secret)
        (Pc_Bb_Ba_Pc_secret)
        (Pc_Bb_Ba_secret)
        (Pc_Bb_Bb_not_secret)
        (Pc_Bb_Bb_Ba_not_secret)
        (Pc_Bb_Bb_Ba_secret)
        (Pc_Bb_Bb_Bb_not_secret)
        (Pc_Bb_Bb_Bb_secret)
        (Pc_Bb_Bb_Bc_not_secret)
        (Pc_Bb_Bb_Bc_secret)
        (Pc_Bb_Bb_Pa_not_secret)
        (Pc_Bb_Bb_Pa_secret)
        (Pc_Bb_Bb_Pb_not_secret)
        (Pc_Bb_Bb_Pb_secret)
        (Pc_Bb_Bb_Pc_not_secret)
        (Pc_Bb_Bb_Pc_secret)
        (Pc_Bb_Bb_secret)
        (Pc_Bb_Bc_not_secret)
        (Pc_Bb_Bc_Ba_not_secret)
        (Pc_Bb_Bc_Ba_secret)
        (Pc_Bb_Bc_Bb_not_secret)
        (Pc_Bb_Bc_Bb_secret)
        (Pc_Bb_Bc_Bc_not_secret)
        (Pc_Bb_Bc_Bc_secret)
        (Pc_Bb_Bc_Pa_not_secret)
        (Pc_Bb_Bc_Pa_secret)
        (Pc_Bb_Bc_Pb_not_secret)
        (Pc_Bb_Bc_Pb_secret)
        (Pc_Bb_Bc_Pc_not_secret)
        (Pc_Bb_Bc_Pc_secret)
        (Pc_Bb_Bc_secret)
        (Pc_Bb_Pa_not_secret)
        (Pc_Bb_Pa_Ba_not_secret)
        (Pc_Bb_Pa_Ba_secret)
        (Pc_Bb_Pa_Bb_not_secret)
        (Pc_Bb_Pa_Bb_secret)
        (Pc_Bb_Pa_Bc_not_secret)
        (Pc_Bb_Pa_Bc_secret)
        (Pc_Bb_Pa_Pa_not_secret)
        (Pc_Bb_Pa_Pa_secret)
        (Pc_Bb_Pa_Pb_not_secret)
        (Pc_Bb_Pa_Pb_secret)
        (Pc_Bb_Pa_Pc_not_secret)
        (Pc_Bb_Pa_Pc_secret)
        (Pc_Bb_Pa_secret)
        (Pc_Bb_Pb_not_secret)
        (Pc_Bb_Pb_Ba_not_secret)
        (Pc_Bb_Pb_Ba_secret)
        (Pc_Bb_Pb_Bb_not_secret)
        (Pc_Bb_Pb_Bb_secret)
        (Pc_Bb_Pb_Bc_not_secret)
        (Pc_Bb_Pb_Bc_secret)
        (Pc_Bb_Pb_Pa_not_secret)
        (Pc_Bb_Pb_Pa_secret)
        (Pc_Bb_Pb_Pb_not_secret)
        (Pc_Bb_Pb_Pb_secret)
        (Pc_Bb_Pb_Pc_not_secret)
        (Pc_Bb_Pb_Pc_secret)
        (Pc_Bb_Pb_secret)
        (Pc_Bb_Pc_not_secret)
        (Pc_Bb_Pc_Ba_not_secret)
        (Pc_Bb_Pc_Ba_secret)
        (Pc_Bb_Pc_Bb_not_secret)
        (Pc_Bb_Pc_Bb_secret)
        (Pc_Bb_Pc_Bc_not_secret)
        (Pc_Bb_Pc_Bc_secret)
        (Pc_Bb_Pc_Pa_not_secret)
        (Pc_Bb_Pc_Pa_secret)
        (Pc_Bb_Pc_Pb_not_secret)
        (Pc_Bb_Pc_Pb_secret)
        (Pc_Bb_Pc_Pc_not_secret)
        (Pc_Bb_Pc_Pc_secret)
        (Pc_Bb_Pc_secret)
        (Pc_Bb_secret)
        (Pc_Bc_not_secret)
        (Pc_Bc_Ba_not_secret)
        (Pc_Bc_Ba_Ba_not_secret)
        (Pc_Bc_Ba_Ba_secret)
        (Pc_Bc_Ba_Bb_not_secret)
        (Pc_Bc_Ba_Bb_secret)
        (Pc_Bc_Ba_Bc_not_secret)
        (Pc_Bc_Ba_Bc_secret)
        (Pc_Bc_Ba_Pa_not_secret)
        (Pc_Bc_Ba_Pa_secret)
        (Pc_Bc_Ba_Pb_not_secret)
        (Pc_Bc_Ba_Pb_secret)
        (Pc_Bc_Ba_Pc_not_secret)
        (Pc_Bc_Ba_Pc_secret)
        (Pc_Bc_Ba_secret)
        (Pc_Bc_Bb_not_secret)
        (Pc_Bc_Bb_Ba_not_secret)
        (Pc_Bc_Bb_Ba_secret)
        (Pc_Bc_Bb_Bb_not_secret)
        (Pc_Bc_Bb_Bb_secret)
        (Pc_Bc_Bb_Bc_not_secret)
        (Pc_Bc_Bb_Bc_secret)
        (Pc_Bc_Bb_Pa_not_secret)
        (Pc_Bc_Bb_Pa_secret)
        (Pc_Bc_Bb_Pb_not_secret)
        (Pc_Bc_Bb_Pb_secret)
        (Pc_Bc_Bb_Pc_not_secret)
        (Pc_Bc_Bb_Pc_secret)
        (Pc_Bc_Bb_secret)
        (Pc_Bc_Bc_not_secret)
        (Pc_Bc_Bc_Ba_not_secret)
        (Pc_Bc_Bc_Ba_secret)
        (Pc_Bc_Bc_Bb_not_secret)
        (Pc_Bc_Bc_Bb_secret)
        (Pc_Bc_Bc_Bc_not_secret)
        (Pc_Bc_Bc_Bc_secret)
        (Pc_Bc_Bc_Pa_not_secret)
        (Pc_Bc_Bc_Pa_secret)
        (Pc_Bc_Bc_Pb_not_secret)
        (Pc_Bc_Bc_Pb_secret)
        (Pc_Bc_Bc_Pc_not_secret)
        (Pc_Bc_Bc_Pc_secret)
        (Pc_Bc_Bc_secret)
        (Pc_Bc_Pa_not_secret)
        (Pc_Bc_Pa_Ba_not_secret)
        (Pc_Bc_Pa_Ba_secret)
        (Pc_Bc_Pa_Bb_not_secret)
        (Pc_Bc_Pa_Bb_secret)
        (Pc_Bc_Pa_Bc_not_secret)
        (Pc_Bc_Pa_Bc_secret)
        (Pc_Bc_Pa_Pa_not_secret)
        (Pc_Bc_Pa_Pa_secret)
        (Pc_Bc_Pa_Pb_not_secret)
        (Pc_Bc_Pa_Pb_secret)
        (Pc_Bc_Pa_Pc_not_secret)
        (Pc_Bc_Pa_Pc_secret)
        (Pc_Bc_Pa_secret)
        (Pc_Bc_Pb_not_secret)
        (Pc_Bc_Pb_Ba_not_secret)
        (Pc_Bc_Pb_Ba_secret)
        (Pc_Bc_Pb_Bb_not_secret)
        (Pc_Bc_Pb_Bb_secret)
        (Pc_Bc_Pb_Bc_not_secret)
        (Pc_Bc_Pb_Bc_secret)
        (Pc_Bc_Pb_Pa_not_secret)
        (Pc_Bc_Pb_Pa_secret)
        (Pc_Bc_Pb_Pb_not_secret)
        (Pc_Bc_Pb_Pb_secret)
        (Pc_Bc_Pb_Pc_not_secret)
        (Pc_Bc_Pb_Pc_secret)
        (Pc_Bc_Pb_secret)
        (Pc_Bc_Pc_not_secret)
        (Pc_Bc_Pc_Ba_not_secret)
        (Pc_Bc_Pc_Ba_secret)
        (Pc_Bc_Pc_Bb_not_secret)
        (Pc_Bc_Pc_Bb_secret)
        (Pc_Bc_Pc_Bc_not_secret)
        (Pc_Bc_Pc_Bc_secret)
        (Pc_Bc_Pc_Pa_not_secret)
        (Pc_Bc_Pc_Pa_secret)
        (Pc_Bc_Pc_Pb_not_secret)
        (Pc_Bc_Pc_Pb_secret)
        (Pc_Bc_Pc_Pc_not_secret)
        (Pc_Bc_Pc_Pc_secret)
        (Pc_Bc_Pc_secret)
        (Pc_Bc_secret)
        (Pc_Pa_not_secret)
        (Pc_Pa_Ba_not_secret)
        (Pc_Pa_Ba_Ba_not_secret)
        (Pc_Pa_Ba_Ba_secret)
        (Pc_Pa_Ba_Bb_not_secret)
        (Pc_Pa_Ba_Bb_secret)
        (Pc_Pa_Ba_Bc_not_secret)
        (Pc_Pa_Ba_Bc_secret)
        (Pc_Pa_Ba_Pa_not_secret)
        (Pc_Pa_Ba_Pa_secret)
        (Pc_Pa_Ba_Pb_not_secret)
        (Pc_Pa_Ba_Pb_secret)
        (Pc_Pa_Ba_Pc_not_secret)
        (Pc_Pa_Ba_Pc_secret)
        (Pc_Pa_Ba_secret)
        (Pc_Pa_Bb_not_secret)
        (Pc_Pa_Bb_Ba_not_secret)
        (Pc_Pa_Bb_Ba_secret)
        (Pc_Pa_Bb_Bb_not_secret)
        (Pc_Pa_Bb_Bb_secret)
        (Pc_Pa_Bb_Bc_not_secret)
        (Pc_Pa_Bb_Bc_secret)
        (Pc_Pa_Bb_Pa_not_secret)
        (Pc_Pa_Bb_Pa_secret)
        (Pc_Pa_Bb_Pb_not_secret)
        (Pc_Pa_Bb_Pb_secret)
        (Pc_Pa_Bb_Pc_not_secret)
        (Pc_Pa_Bb_Pc_secret)
        (Pc_Pa_Bb_secret)
        (Pc_Pa_Bc_not_secret)
        (Pc_Pa_Bc_Ba_not_secret)
        (Pc_Pa_Bc_Ba_secret)
        (Pc_Pa_Bc_Bb_not_secret)
        (Pc_Pa_Bc_Bb_secret)
        (Pc_Pa_Bc_Bc_not_secret)
        (Pc_Pa_Bc_Bc_secret)
        (Pc_Pa_Bc_Pa_not_secret)
        (Pc_Pa_Bc_Pa_secret)
        (Pc_Pa_Bc_Pb_not_secret)
        (Pc_Pa_Bc_Pb_secret)
        (Pc_Pa_Bc_Pc_not_secret)
        (Pc_Pa_Bc_Pc_secret)
        (Pc_Pa_Bc_secret)
        (Pc_Pa_Pa_not_secret)
        (Pc_Pa_Pa_Ba_not_secret)
        (Pc_Pa_Pa_Ba_secret)
        (Pc_Pa_Pa_Bb_not_secret)
        (Pc_Pa_Pa_Bb_secret)
        (Pc_Pa_Pa_Bc_not_secret)
        (Pc_Pa_Pa_Bc_secret)
        (Pc_Pa_Pa_Pa_not_secret)
        (Pc_Pa_Pa_Pa_secret)
        (Pc_Pa_Pa_Pb_not_secret)
        (Pc_Pa_Pa_Pb_secret)
        (Pc_Pa_Pa_Pc_not_secret)
        (Pc_Pa_Pa_Pc_secret)
        (Pc_Pa_Pa_secret)
        (Pc_Pa_Pb_not_secret)
        (Pc_Pa_Pb_Ba_not_secret)
        (Pc_Pa_Pb_Ba_secret)
        (Pc_Pa_Pb_Bb_not_secret)
        (Pc_Pa_Pb_Bb_secret)
        (Pc_Pa_Pb_Bc_not_secret)
        (Pc_Pa_Pb_Bc_secret)
        (Pc_Pa_Pb_Pa_not_secret)
        (Pc_Pa_Pb_Pa_secret)
        (Pc_Pa_Pb_Pb_not_secret)
        (Pc_Pa_Pb_Pb_secret)
        (Pc_Pa_Pb_Pc_not_secret)
        (Pc_Pa_Pb_Pc_secret)
        (Pc_Pa_Pb_secret)
        (Pc_Pa_Pc_not_secret)
        (Pc_Pa_Pc_Ba_not_secret)
        (Pc_Pa_Pc_Ba_secret)
        (Pc_Pa_Pc_Bb_not_secret)
        (Pc_Pa_Pc_Bb_secret)
        (Pc_Pa_Pc_Bc_not_secret)
        (Pc_Pa_Pc_Bc_secret)
        (Pc_Pa_Pc_Pa_not_secret)
        (Pc_Pa_Pc_Pa_secret)
        (Pc_Pa_Pc_Pb_not_secret)
        (Pc_Pa_Pc_Pb_secret)
        (Pc_Pa_Pc_Pc_not_secret)
        (Pc_Pa_Pc_Pc_secret)
        (Pc_Pa_Pc_secret)
        (Pc_Pa_secret)
        (Pc_Pb_not_secret)
        (Pc_Pb_Ba_not_secret)
        (Pc_Pb_Ba_Ba_not_secret)
        (Pc_Pb_Ba_Ba_secret)
        (Pc_Pb_Ba_Bb_not_secret)
        (Pc_Pb_Ba_Bb_secret)
        (Pc_Pb_Ba_Bc_not_secret)
        (Pc_Pb_Ba_Bc_secret)
        (Pc_Pb_Ba_Pa_not_secret)
        (Pc_Pb_Ba_Pa_secret)
        (Pc_Pb_Ba_Pb_not_secret)
        (Pc_Pb_Ba_Pb_secret)
        (Pc_Pb_Ba_Pc_not_secret)
        (Pc_Pb_Ba_Pc_secret)
        (Pc_Pb_Ba_secret)
        (Pc_Pb_Bb_not_secret)
        (Pc_Pb_Bb_Ba_not_secret)
        (Pc_Pb_Bb_Ba_secret)
        (Pc_Pb_Bb_Bb_not_secret)
        (Pc_Pb_Bb_Bb_secret)
        (Pc_Pb_Bb_Bc_not_secret)
        (Pc_Pb_Bb_Bc_secret)
        (Pc_Pb_Bb_Pa_not_secret)
        (Pc_Pb_Bb_Pa_secret)
        (Pc_Pb_Bb_Pb_not_secret)
        (Pc_Pb_Bb_Pb_secret)
        (Pc_Pb_Bb_Pc_not_secret)
        (Pc_Pb_Bb_Pc_secret)
        (Pc_Pb_Bb_secret)
        (Pc_Pb_Bc_not_secret)
        (Pc_Pb_Bc_Ba_not_secret)
        (Pc_Pb_Bc_Ba_secret)
        (Pc_Pb_Bc_Bb_not_secret)
        (Pc_Pb_Bc_Bb_secret)
        (Pc_Pb_Bc_Bc_not_secret)
        (Pc_Pb_Bc_Bc_secret)
        (Pc_Pb_Bc_Pa_not_secret)
        (Pc_Pb_Bc_Pa_secret)
        (Pc_Pb_Bc_Pb_not_secret)
        (Pc_Pb_Bc_Pb_secret)
        (Pc_Pb_Bc_Pc_not_secret)
        (Pc_Pb_Bc_Pc_secret)
        (Pc_Pb_Bc_secret)
        (Pc_Pb_Pa_not_secret)
        (Pc_Pb_Pa_Ba_not_secret)
        (Pc_Pb_Pa_Ba_secret)
        (Pc_Pb_Pa_Bb_not_secret)
        (Pc_Pb_Pa_Bb_secret)
        (Pc_Pb_Pa_Bc_not_secret)
        (Pc_Pb_Pa_Bc_secret)
        (Pc_Pb_Pa_Pa_not_secret)
        (Pc_Pb_Pa_Pa_secret)
        (Pc_Pb_Pa_Pb_not_secret)
        (Pc_Pb_Pa_Pb_secret)
        (Pc_Pb_Pa_Pc_not_secret)
        (Pc_Pb_Pa_Pc_secret)
        (Pc_Pb_Pa_secret)
        (Pc_Pb_Pb_not_secret)
        (Pc_Pb_Pb_Ba_not_secret)
        (Pc_Pb_Pb_Ba_secret)
        (Pc_Pb_Pb_Bb_not_secret)
        (Pc_Pb_Pb_Bb_secret)
        (Pc_Pb_Pb_Bc_not_secret)
        (Pc_Pb_Pb_Bc_secret)
        (Pc_Pb_Pb_Pa_not_secret)
        (Pc_Pb_Pb_Pa_secret)
        (Pc_Pb_Pb_Pb_not_secret)
        (Pc_Pb_Pb_Pb_secret)
        (Pc_Pb_Pb_Pc_not_secret)
        (Pc_Pb_Pb_Pc_secret)
        (Pc_Pb_Pb_secret)
        (Pc_Pb_Pc_not_secret)
        (Pc_Pb_Pc_Ba_not_secret)
        (Pc_Pb_Pc_Ba_secret)
        (Pc_Pb_Pc_Bb_not_secret)
        (Pc_Pb_Pc_Bb_secret)
        (Pc_Pb_Pc_Bc_not_secret)
        (Pc_Pb_Pc_Bc_secret)
        (Pc_Pb_Pc_Pa_not_secret)
        (Pc_Pb_Pc_Pa_secret)
        (Pc_Pb_Pc_Pb_not_secret)
        (Pc_Pb_Pc_Pb_secret)
        (Pc_Pb_Pc_Pc_not_secret)
        (Pc_Pb_Pc_Pc_secret)
        (Pc_Pb_Pc_secret)
        (Pc_Pb_secret)
        (Pc_Pc_not_secret)
        (Pc_Pc_Ba_not_secret)
        (Pc_Pc_Ba_Ba_not_secret)
        (Pc_Pc_Ba_Ba_secret)
        (Pc_Pc_Ba_Bb_not_secret)
        (Pc_Pc_Ba_Bb_secret)
        (Pc_Pc_Ba_Bc_not_secret)
        (Pc_Pc_Ba_Bc_secret)
        (Pc_Pc_Ba_Pa_not_secret)
        (Pc_Pc_Ba_Pa_secret)
        (Pc_Pc_Ba_Pb_not_secret)
        (Pc_Pc_Ba_Pb_secret)
        (Pc_Pc_Ba_Pc_not_secret)
        (Pc_Pc_Ba_Pc_secret)
        (Pc_Pc_Ba_secret)
        (Pc_Pc_Bb_not_secret)
        (Pc_Pc_Bb_Ba_not_secret)
        (Pc_Pc_Bb_Ba_secret)
        (Pc_Pc_Bb_Bb_not_secret)
        (Pc_Pc_Bb_Bb_secret)
        (Pc_Pc_Bb_Bc_not_secret)
        (Pc_Pc_Bb_Bc_secret)
        (Pc_Pc_Bb_Pa_not_secret)
        (Pc_Pc_Bb_Pa_secret)
        (Pc_Pc_Bb_Pb_not_secret)
        (Pc_Pc_Bb_Pb_secret)
        (Pc_Pc_Bb_Pc_not_secret)
        (Pc_Pc_Bb_Pc_secret)
        (Pc_Pc_Bb_secret)
        (Pc_Pc_Bc_not_secret)
        (Pc_Pc_Bc_Ba_not_secret)
        (Pc_Pc_Bc_Ba_secret)
        (Pc_Pc_Bc_Bb_not_secret)
        (Pc_Pc_Bc_Bb_secret)
        (Pc_Pc_Bc_Bc_not_secret)
        (Pc_Pc_Bc_Bc_secret)
        (Pc_Pc_Bc_Pa_not_secret)
        (Pc_Pc_Bc_Pa_secret)
        (Pc_Pc_Bc_Pb_not_secret)
        (Pc_Pc_Bc_Pb_secret)
        (Pc_Pc_Bc_Pc_not_secret)
        (Pc_Pc_Bc_Pc_secret)
        (Pc_Pc_Bc_secret)
        (Pc_Pc_Pa_not_secret)
        (Pc_Pc_Pa_Ba_not_secret)
        (Pc_Pc_Pa_Ba_secret)
        (Pc_Pc_Pa_Bb_not_secret)
        (Pc_Pc_Pa_Bb_secret)
        (Pc_Pc_Pa_Bc_not_secret)
        (Pc_Pc_Pa_Bc_secret)
        (Pc_Pc_Pa_Pa_not_secret)
        (Pc_Pc_Pa_Pa_secret)
        (Pc_Pc_Pa_Pb_not_secret)
        (Pc_Pc_Pa_Pb_secret)
        (Pc_Pc_Pa_Pc_not_secret)
        (Pc_Pc_Pa_Pc_secret)
        (Pc_Pc_Pa_secret)
        (Pc_Pc_Pb_not_secret)
        (Pc_Pc_Pb_Ba_not_secret)
        (Pc_Pc_Pb_Ba_secret)
        (Pc_Pc_Pb_Bb_not_secret)
        (Pc_Pc_Pb_Bb_secret)
        (Pc_Pc_Pb_Bc_not_secret)
        (Pc_Pc_Pb_Bc_secret)
        (Pc_Pc_Pb_Pa_not_secret)
        (Pc_Pc_Pb_Pa_secret)
        (Pc_Pc_Pb_Pb_not_secret)
        (Pc_Pc_Pb_Pb_secret)
        (Pc_Pc_Pb_Pc_not_secret)
        (Pc_Pc_Pb_Pc_secret)
        (Pc_Pc_Pb_secret)
        (Pc_Pc_Pc_not_secret)
        (Pc_Pc_Pc_Ba_not_secret)
        (Pc_Pc_Pc_Ba_secret)
        (Pc_Pc_Pc_Bb_not_secret)
        (Pc_Pc_Pc_Bb_secret)
        (Pc_Pc_Pc_Bc_not_secret)
        (Pc_Pc_Pc_Bc_secret)
        (Pc_Pc_Pc_Pa_not_secret)
        (Pc_Pc_Pc_Pa_secret)
        (Pc_Pc_Pc_Pb_not_secret)
        (Pc_Pc_Pc_Pb_secret)
        (Pc_Pc_Pc_Pc_not_secret)
        (Pc_Pc_Pc_Pc_secret)
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

                    ; #11771: <==closure== 68508 (pos)
                    (Pc_Pa_Bb_Pa_secret)

                    ; #12747: <==closure== 55182 (pos)
                    (Pa_secret)

                    ; #12770: <==commonly_known== 16772 (pos)
                    (Bb_Pa_Bc_Ba_secret)

                    ; #13685: <==commonly_known== 42625 (pos)
                    (Bc_Ba_Bc_Ba_secret)

                    ; #13980: <==commonly_known== 10557 (pos)
                    (Bc_Bb_Pc_Ba_secret)

                    ; #14867: <==closure== 68508 (pos)
                    (Bc_Ba_Bb_Pa_secret)

                    ; #14925: <==closure== 13685 (pos)
                    (Pc_Ba_Bc_Pa_secret)

                    ; #16067: <==commonly_known== 52886 (pos)
                    (Bb_Ba_Bb_Ba_secret)

                    ; #16273: <==commonly_known== 86104 (pos)
                    (Bc_Ba_Pb_Ba_secret)

                    ; #16327: <==commonly_known== 38838 (neg)
                    (Pc_Bb_Bc_Ba_secret)

                    ; #16481: <==commonly_known== 22690 (pos)
                    (Ba_Bb_Bc_Ba_secret)

                    ; #16772: <==commonly_known== 41854 (neg)
                    (Pa_Bc_Ba_secret)

                    ; #16801: <==closure== 42625 (pos)
                    (Ba_Pc_Pa_secret)

                    ; #17357: <==commonly_known== 38838 (neg)
                    (Pa_Bb_Bc_Ba_secret)

                    ; #17476: <==closure== 54748 (pos)
                    (Pc_Bb_Pa_secret)

                    ; #18061: <==closure== 45720 (pos)
                    (Pa_Pc_Bb_Ba_secret)

                    ; #20880: <==commonly_known== 10133 (pos)
                    (Bb_Pc_Bb_Ba_secret)

                    ; #21134: <==closure== 45720 (pos)
                    (Ba_Bc_Pb_Pa_secret)

                    ; #21214: <==closure== 45720 (pos)
                    (Pa_Bc_Pb_Ba_secret)

                    ; #21290: <==closure== 55263 (pos)
                    (Pb_Bc_Pb_Ba_secret)

                    ; #22635: <==closure== 68508 (pos)
                    (Bc_Pa_Pb_Pa_secret)

                    ; #22690: <==commonly_known== 87021 (pos)
                    (Bb_Bc_Ba_secret)

                    ; #23295: <==closure== 59434 (pos)
                    (Pb_Ba_Pc_Ba_secret)

                    ; #23345: <==closure== 68508 (pos)
                    (Pc_Pa_Pb_Ba_secret)

                    ; #24154: <==closure== 52886 (pos)
                    (Pa_Pb_Pa_secret)

                    ; #24893: <==closure== 42625 (pos)
                    (Pa_Bc_Pa_secret)

                    ; #26134: <==closure== 16481 (pos)
                    (Ba_Bb_Pc_Pa_secret)

                    ; #26350: <==closure== 59434 (pos)
                    (Bb_Pa_Pc_Ba_secret)

                    ; #26470: <==closure== 68508 (pos)
                    (Bc_Pa_Pb_Ba_secret)

                    ; #27241: <==closure== 59434 (pos)
                    (Bb_Ba_Bc_Pa_secret)

                    ; #28176: <==closure== 68508 (pos)
                    (Pc_Ba_Bb_Pa_secret)

                    ; #28938: <==commonly_known== 57097 (pos)
                    (Ba_Pb_Bc_Ba_secret)

                    ; #29640: <==closure== 42625 (pos)
                    (Ba_Bc_Pa_secret)

                    ; #31142: <==closure== 13685 (pos)
                    (Pc_Pa_Pc_Pa_secret)

                    ; #31272: <==closure== 13685 (pos)
                    (Pc_Ba_Pc_Ba_secret)

                    ; #31283: <==closure== 76485 (pos)
                    (Pc_Pb_Bc_Ba_secret)

                    ; #31583: <==closure== 45720 (pos)
                    (Ba_Pc_Pb_Ba_secret)

                    ; #31642: <==commonly_known== 25785 (neg)
                    (Pc_Ba_Bb_Ba_secret)

                    ; #31869: <==closure== 45720 (pos)
                    (Pa_Pc_Bb_Pa_secret)

                    ; #32051: <==closure== 68508 (pos)
                    (Pc_Ba_Pb_Ba_secret)

                    ; #32261: <==closure== 52886 (pos)
                    (Ba_Bb_Pa_secret)

                    ; #32610: <==closure== 16481 (pos)
                    (Pa_Pb_Bc_Pa_secret)

                    ; #33631: <==closure== 76485 (pos)
                    (Bc_Pb_Pc_Ba_secret)

                    ; #34299: <==closure== 16067 (pos)
                    (Pb_Pa_Pb_Pa_secret)

                    ; #34388: <==closure== 22690 (pos)
                    (Pb_Bc_Pa_secret)

                    ; #35131: <==closure== 59434 (pos)
                    (Bb_Pa_Pc_Pa_secret)

                    ; #35689: <==commonly_known== 10133 (pos)
                    (Ba_Pc_Bb_Ba_secret)

                    ; #37390: <==closure== 59434 (pos)
                    (Pb_Pa_Pc_Ba_secret)

                    ; #37639: <==closure== 68508 (pos)
                    (Bc_Pa_Bb_Pa_secret)

                    ; #38309: <==closure== 16067 (pos)
                    (Pb_Ba_Pb_Pa_secret)

                    ; #38650: <==closure== 16067 (pos)
                    (Bb_Ba_Bb_Pa_secret)

                    ; #39039: <==commonly_known== 79975 (neg)
                    (Pa_Bc_Bb_Ba_secret)

                    ; #39673: <==closure== 16067 (pos)
                    (Bb_Ba_Pb_Pa_secret)

                    ; #41209: <==closure== 16481 (pos)
                    (Ba_Bb_Bc_Pa_secret)

                    ; #41499: <==closure== 76485 (pos)
                    (Bc_Pb_Pc_Pa_secret)

                    ; #41550: <==closure== 76485 (pos)
                    (Pc_Bb_Bc_Pa_secret)

                    ; #41599: <==closure== 16481 (pos)
                    (Pa_Pb_Pc_Ba_secret)

                    ; #41835: <==closure== 13685 (pos)
                    (Bc_Ba_Bc_Pa_secret)

                    ; #42625: <==commonly_known== 87021 (pos)
                    (Ba_Bc_Ba_secret)

                    ; #43333: <==closure== 16067 (pos)
                    (Bb_Pa_Bb_Pa_secret)

                    ; #43927: <==closure== 68508 (pos)
                    (Bc_Ba_Pb_Pa_secret)

                    ; #44399: <==closure== 16481 (pos)
                    (Pa_Bb_Pc_Pa_secret)

                    ; #45720: <==commonly_known== 54748 (pos)
                    (Ba_Bc_Bb_Ba_secret)

                    ; #45919: <==closure== 55263 (pos)
                    (Pb_Bc_Bb_Pa_secret)

                    ; #46289: <==closure== 59434 (pos)
                    (Pb_Pa_Bc_Ba_secret)

                    ; #47492: <==closure== 52886 (pos)
                    (Pa_Bb_Pa_secret)

                    ; #47540: <==commonly_known== 55182 (pos)
                    (Bb_Ba_secret)

                    ; #48850: <==closure== 54748 (pos)
                    (Pc_Pb_Ba_secret)

                    ; #48914: <==closure== 16481 (pos)
                    (Pa_Pb_Pc_Pa_secret)

                    ; #49484: <==commonly_known== 55732 (pos)
                    (Bc_Pa_Bb_Ba_secret)

                    ; #49935: <==closure== 54748 (pos)
                    (Bc_Pb_Pa_secret)

                    ; #50431: <==closure== 22690 (pos)
                    (Bb_Bc_Pa_secret)

                    ; #50742: <==closure== 55263 (pos)
                    (Bb_Bc_Bb_Pa_secret)

                    ; #51186: <==closure== 76485 (pos)
                    (Pc_Pb_Pc_Pa_secret)

                    ; #51325: <==closure== 76485 (pos)
                    (Bc_Pb_Bc_Pa_secret)

                    ; #52497: <==closure== 55263 (pos)
                    (Pb_Pc_Bb_Ba_secret)

                    ; #52886: <==commonly_known== 47540 (pos)
                    (Ba_Bb_Ba_secret)

                    ; #53007: <==commonly_known== 79014 (pos)
                    (Bb_Ba_Pc_Ba_secret)

                    ; #53167: <==closure== 13685 (pos)
                    (Bc_Pa_Pc_Pa_secret)

                    ; #53255: <==closure== 16481 (pos)
                    (Pa_Bb_Bc_Pa_secret)

                    ; #53489: <==closure== 68508 (pos)
                    (Pc_Pa_Pb_Pa_secret)

                    ; #54748: <==commonly_known== 47540 (pos)
                    (Bc_Bb_Ba_secret)

                    ; #55151: <==commonly_known== 10557 (pos)
                    (Ba_Bb_Pc_Ba_secret)

                    ; #55182: origin
                    (Ba_secret)

                    ; #55263: <==commonly_known== 54748 (pos)
                    (Bb_Bc_Bb_Ba_secret)

                    ; #55272: <==closure== 45720 (pos)
                    (Pa_Pc_Pb_Ba_secret)

                    ; #55732: <==commonly_known== 32109 (neg)
                    (Pa_Bb_Ba_secret)

                    ; #56817: <==closure== 16481 (pos)
                    (Pa_Bb_Pc_Ba_secret)

                    ; #57097: <==commonly_known== 41854 (neg)
                    (Pb_Bc_Ba_secret)

                    ; #57206: <==closure== 16067 (pos)
                    (Pb_Pa_Bb_Pa_secret)

                    ; #58030: <==commonly_known== 90982 (neg)
                    (Pc_Ba_secret)

                    ; #58709: <==commonly_known== 58758 (pos)
                    (Bc_Pb_Ba_secret)

                    ; #58758: <==commonly_known== 90982 (neg)
                    (Pb_Ba_secret)

                    ; #59434: <==commonly_known== 42625 (pos)
                    (Bb_Ba_Bc_Ba_secret)

                    ; #59665: <==closure== 55263 (pos)
                    (Bb_Bc_Pb_Pa_secret)

                    ; #60042: <==closure== 55263 (pos)
                    (Bb_Pc_Bb_Pa_secret)

                    ; #61399: <==commonly_known== 16772 (pos)
                    (Bc_Pa_Bc_Ba_secret)

                    ; #61774: <==closure== 59434 (pos)
                    (Pb_Pa_Pc_Pa_secret)

                    ; #61875: <==closure== 59434 (pos)
                    (Pb_Ba_Pc_Pa_secret)

                    ; #63149: <==closure== 16481 (pos)
                    (Ba_Pb_Pc_Ba_secret)

                    ; #63173: <==closure== 68508 (pos)
                    (Pc_Pa_Bb_Ba_secret)

                    ; #63215: <==closure== 16067 (pos)
                    (Bb_Pa_Pb_Ba_secret)

                    ; #63511: <==closure== 76485 (pos)
                    (Bc_Bb_Bc_Pa_secret)

                    ; #64029: <==commonly_known== 55732 (pos)
                    (Bb_Pa_Bb_Ba_secret)

                    ; #64872: <==closure== 45720 (pos)
                    (Pa_Pc_Pb_Pa_secret)

                    ; #65962: <==closure== 45720 (pos)
                    (Pa_Bc_Bb_Pa_secret)

                    ; #66008: <==closure== 16067 (pos)
                    (Pb_Pa_Bb_Ba_secret)

                    ; #68508: <==commonly_known== 52886 (pos)
                    (Bc_Ba_Bb_Ba_secret)

                    ; #70725: <==commonly_known== 58709 (pos)
                    (Ba_Bc_Pb_Ba_secret)

                    ; #70875: <==closure== 54748 (pos)
                    (Pc_Pb_Pa_secret)

                    ; #70947: <==commonly_known== 86104 (pos)
                    (Bb_Ba_Pb_Ba_secret)

                    ; #71029: <==commonly_known== 50565 (neg)
                    (Pb_Ba_Bc_Ba_secret)

                    ; #71503: <==commonly_known== 79975 (neg)
                    (Pb_Bc_Bb_Ba_secret)

                    ; #71597: <==closure== 76485 (pos)
                    (Pc_Pb_Pc_Ba_secret)

                    ; #71903: <==closure== 13685 (pos)
                    (Pc_Pa_Bc_Ba_secret)

                    ; #72328: <==commonly_known== 79014 (pos)
                    (Bc_Ba_Pc_Ba_secret)

                    ; #72434: <==commonly_known== 25785 (neg)
                    (Pb_Ba_Bb_Ba_secret)

                    ; #72976: <==closure== 16067 (pos)
                    (Pb_Ba_Pb_Ba_secret)

                    ; #73197: <==closure== 42625 (pos)
                    (Pa_Pc_Ba_secret)

                    ; #75087: <==closure== 55263 (pos)
                    (Pb_Bc_Pb_Pa_secret)

                    ; #75495: <==closure== 16067 (pos)
                    (Pb_Pa_Pb_Ba_secret)

                    ; #75919: <==commonly_known== 57097 (pos)
                    (Bc_Pb_Bc_Ba_secret)

                    ; #76485: <==commonly_known== 22690 (pos)
                    (Bc_Bb_Bc_Ba_secret)

                    ; #77057: <==closure== 55263 (pos)
                    (Pb_Pc_Bb_Pa_secret)

                    ; #78608: <==commonly_known== 50565 (neg)
                    (Pc_Ba_Bc_Ba_secret)

                    ; #78613: <==closure== 55263 (pos)
                    (Pb_Pc_Pb_Pa_secret)

                    ; #79014: <==commonly_known== 58030 (pos)
                    (Ba_Pc_Ba_secret)

                    ; #79193: <==closure== 54748 (pos)
                    (Bc_Bb_Pa_secret)

                    ; #79668: <==closure== 13685 (pos)
                    (Pc_Pa_Bc_Pa_secret)

                    ; #79793: <==closure== 76485 (pos)
                    (Pc_Pb_Bc_Pa_secret)

                    ; #79910: <==closure== 42625 (pos)
                    (Pa_Pc_Pa_secret)

                    ; #80196: <==closure== 55263 (pos)
                    (Bb_Pc_Pb_Ba_secret)

                    ; #81426: <==closure== 16067 (pos)
                    (Bb_Pa_Pb_Pa_secret)

                    ; #81667: <==closure== 76485 (pos)
                    (Bc_Bb_Pc_Pa_secret)

                    ; #81716: <==closure== 87021 (pos)
                    (Bc_Pa_secret)

                    ; #82068: <==closure== 55263 (pos)
                    (Pb_Pc_Pb_Ba_secret)

                    ; #82557: <==closure== 87021 (pos)
                    (Pc_Pa_secret)

                    ; #83104: <==closure== 59434 (pos)
                    (Bb_Ba_Pc_Pa_secret)

                    ; #83175: <==closure== 45720 (pos)
                    (Ba_Pc_Bb_Pa_secret)

                    ; #83490: <==closure== 76485 (pos)
                    (Pc_Bb_Pc_Pa_secret)

                    ; #83568: <==closure== 52886 (pos)
                    (Pa_Pb_Ba_secret)

                    ; #84330: <==closure== 22690 (pos)
                    (Pb_Pc_Pa_secret)

                    ; #84585: <==closure== 22690 (pos)
                    (Pb_Pc_Ba_secret)

                    ; #84746: <==closure== 76485 (pos)
                    (Pc_Bb_Pc_Ba_secret)

                    ; #85038: <==closure== 13685 (pos)
                    (Pc_Pa_Pc_Ba_secret)

                    ; #85392: <==closure== 52886 (pos)
                    (Ba_Pb_Pa_secret)

                    ; #85430: <==closure== 59434 (pos)
                    (Pb_Pa_Bc_Pa_secret)

                    ; #86104: <==commonly_known== 58758 (pos)
                    (Ba_Pb_Ba_secret)

                    ; #86752: <==closure== 47540 (pos)
                    (Bb_Pa_secret)

                    ; #87021: <==commonly_known== 55182 (pos)
                    (Bc_Ba_secret)

                    ; #87027: <==closure== 59434 (pos)
                    (Pb_Ba_Bc_Pa_secret)

                    ; #87232: <==closure== 16481 (pos)
                    (Ba_Pb_Pc_Pa_secret)

                    ; #87891: <==closure== 68508 (pos)
                    (Pc_Ba_Pb_Pa_secret)

                    ; #88149: <==closure== 45720 (pos)
                    (Ba_Bc_Bb_Pa_secret)

                    ; #88619: <==closure== 16481 (pos)
                    (Ba_Pb_Bc_Pa_secret)

                    ; #89243: <==commonly_known== 58709 (pos)
                    (Bb_Bc_Pb_Ba_secret)

                    ; #89847: <==closure== 59434 (pos)
                    (Bb_Pa_Bc_Pa_secret)

                    ; #89867: <==closure== 13685 (pos)
                    (Bc_Pa_Bc_Pa_secret)

                    ; #90101: <==closure== 45720 (pos)
                    (Ba_Pc_Pb_Pa_secret)

                    ; #90983: <==closure== 13685 (pos)
                    (Pc_Ba_Pc_Pa_secret)

                    ; #91135: <==closure== 13685 (pos)
                    (Bc_Ba_Pc_Pa_secret)

                    ; #91146: <==closure== 22690 (pos)
                    (Bb_Pc_Pa_secret)

                    ; #91598: <==closure== 55263 (pos)
                    (Bb_Pc_Pb_Pa_secret)

                    ; #91985: <==closure== 13685 (pos)
                    (Bc_Pa_Pc_Ba_secret)

                    ; #92223: <==closure== 45720 (pos)
                    (Pa_Bc_Pb_Pa_secret)

                    ; #97818: <==closure== 16067 (pos)
                    (Pb_Ba_Bb_Pa_secret)

                    ; #98967: <==closure== 16481 (pos)
                    (Pa_Pb_Bc_Ba_secret)

                    ; #10325: <==unclosure== 13016 (neg)
                    (not (Pb_Bc_Bb_Pa_not_secret))

                    ; #10394: <==unclosure== 16251 (neg)
                    (not (Pc_Pa_Bc_Ba_not_secret))

                    ; #11862: <==unclosure== 86136 (neg)
                    (not (Pc_Pb_Pc_Ba_not_secret))

                    ; #13016: <==negation-removal== 55263 (pos)
                    (not (Pb_Pc_Pb_Pa_not_secret))

                    ; #13538: <==unclosure== 79707 (neg)
                    (not (Bb_Pa_Bb_Ba_not_secret))

                    ; #15133: <==negation-removal== 58758 (pos)
                    (not (Bb_Pa_not_secret))

                    ; #16251: <==negation-removal== 13685 (pos)
                    (not (Pc_Pa_Pc_Pa_not_secret))

                    ; #17345: <==unclosure== 25785 (neg)
                    (not (Pa_Bb_Ba_not_secret))

                    ; #17418: <==negation-removal== 71503 (pos)
                    (not (Bb_Pc_Pb_Pa_not_secret))

                    ; #18156: <==unclosure== 38838 (neg)
                    (not (Pb_Pc_Ba_not_secret))

                    ; #18200: <==unclosure== 86136 (neg)
                    (not (Bc_Pb_Bc_Pa_not_secret))

                    ; #18443: <==negation-removal== 86104 (pos)
                    (not (Pa_Bb_Pa_not_secret))

                    ; #19065: <==negation-removal== 64029 (pos)
                    (not (Pb_Ba_Pb_Pa_not_secret))

                    ; #19173: <==unclosure== 16251 (neg)
                    (not (Bc_Pa_Bc_Ba_not_secret))

                    ; #19500: <==unclosure== 72202 (neg)
                    (not (Pb_Ba_Bc_Pa_not_secret))

                    ; #19805: <==negation-removal== 45720 (pos)
                    (not (Pa_Pc_Pb_Pa_not_secret))

                    ; #19874: <==unclosure== 50565 (neg)
                    (not (Pa_Bc_Ba_not_secret))

                    ; #20379: <==unclosure== 79707 (neg)
                    (not (Pb_Ba_Pb_Ba_not_secret))

                    ; #20810: <==unclosure== 19805 (neg)
                    (not (Ba_Bc_Pb_Pa_not_secret))

                    ; #21172: <==unclosure== 69131 (neg)
                    (not (Bc_Ba_Bb_Pa_not_secret))

                    ; #21450: <==negation-removal== 16481 (pos)
                    (not (Pa_Pb_Pc_Pa_not_secret))

                    ; #21459: <==negation-removal== 70947 (pos)
                    (not (Pb_Pa_Bb_Pa_not_secret))

                    ; #21477: <==unclosure== 13016 (neg)
                    (not (Bb_Pc_Bb_Ba_not_secret))

                    ; #21791: <==unclosure== 69131 (neg)
                    (not (Bc_Pa_Pb_Ba_not_secret))

                    ; #21852: <==unclosure== 21450 (neg)
                    (not (Pa_Pb_Pc_Ba_not_secret))

                    ; #22286: <==unclosure== 86136 (neg)
                    (not (Bc_Bb_Pc_Ba_not_secret))

                    ; #23172: <==unclosure== 72202 (neg)
                    (not (Pb_Pa_Bc_Ba_not_secret))

                    ; #23824: <==unclosure== 19805 (neg)
                    (not (Ba_Pc_Pb_Ba_not_secret))

                    ; #24785: <==unclosure== 72202 (neg)
                    (not (Bb_Pa_Pc_Ba_not_secret))

                    ; #25006: <==unclosure== 38838 (neg)
                    (not (Pb_Bc_Ba_not_secret))

                    ; #25785: <==negation-removal== 52886 (pos)
                    (not (Pa_Pb_Pa_not_secret))

                    ; #25820: <==unclosure== 32109 (neg)
                    (not (Pb_Ba_not_secret))

                    ; #26445: <==unclosure== 79707 (neg)
                    (not (Bb_Pa_Pb_Ba_not_secret))

                    ; #26507: <==negation-removal== 55151 (pos)
                    (not (Pa_Pb_Bc_Pa_not_secret))

                    ; #26930: <==unclosure== 50565 (neg)
                    (not (Ba_Bc_Ba_not_secret))

                    ; #28009: <==unclosure== 69131 (neg)
                    (not (Bc_Ba_Pb_Pa_not_secret))

                    ; #28391: <==unclosure== 79707 (neg)
                    (not (Pb_Pa_Pb_Ba_not_secret))

                    ; #29260: <==unclosure== 21450 (neg)
                    (not (Ba_Bb_Bc_Pa_not_secret))

                    ; #29282: <==negation-removal== 75919 (pos)
                    (not (Pc_Bb_Pc_Pa_not_secret))

                    ; #29287: <==unclosure== 21450 (neg)
                    (not (Pa_Pb_Bc_Ba_not_secret))

                    ; #30737: <==negation-removal== 89243 (pos)
                    (not (Pb_Pc_Bb_Pa_not_secret))

                    ; #32109: <==negation-removal== 47540 (pos)
                    (not (Pb_Pa_not_secret))

                    ; #32371: <==negation-removal== 79014 (pos)
                    (not (Pa_Bc_Pa_not_secret))

                    ; #32510: <==unclosure== 72202 (neg)
                    (not (Pb_Pa_Pc_Ba_not_secret))

                    ; #33404: <==unclosure== 69131 (neg)
                    (not (Bc_Pa_Bb_Ba_not_secret))

                    ; #33764: <==unclosure== 19805 (neg)
                    (not (Pa_Bc_Pb_Ba_not_secret))

                    ; #34301: <==unclosure== 72202 (neg)
                    (not (Pb_Ba_Pc_Ba_not_secret))

                    ; #35133: <==unclosure== 21450 (neg)
                    (not (Ba_Pb_Bc_Ba_not_secret))

                    ; #35265: <==unclosure== 38838 (neg)
                    (not (Bb_Bc_Ba_not_secret))

                    ; #35347: <==unclosure== 16251 (neg)
                    (not (Bc_Ba_Pc_Pa_not_secret))

                    ; #35439: <==unclosure== 79707 (neg)
                    (not (Pb_Ba_Bb_Ba_not_secret))

                    ; #36001: <==unclosure== 90982 (neg)
                    (not (Ba_not_secret))

                    ; #36102: <==negation-removal== 72434 (pos)
                    (not (Bb_Pa_Pb_Pa_not_secret))

                    ; #36221: <==unclosure== 79975 (neg)
                    (not (Pc_Pb_Ba_not_secret))

                    ; #36407: <==negation-removal== 35689 (pos)
                    (not (Pa_Bc_Pb_Pa_not_secret))

                    ; #36576: <==unclosure== 79707 (neg)
                    (not (Bb_Ba_Bb_Ba_not_secret))

                    ; #37863: <==negation-removal== 12770 (pos)
                    (not (Pb_Ba_Pc_Pa_not_secret))

                    ; #38242: <==negation-removal== 31642 (pos)
                    (not (Bc_Pa_Pb_Pa_not_secret))

                    ; #38612: <==unclosure== 69131 (neg)
                    (not (Bc_Ba_Pb_Ba_not_secret))

                    ; #38838: <==negation-removal== 22690 (pos)
                    (not (Pb_Pc_Pa_not_secret))

                    ; #39026: <==unclosure== 69131 (neg)
                    (not (Bc_Ba_Bb_Ba_not_secret))

                    ; #39109: <==unclosure== 13016 (neg)
                    (not (Bb_Pc_Bb_Pa_not_secret))

                    ; #39446: <==unclosure== 16251 (neg)
                    (not (Bc_Pa_Bc_Pa_not_secret))

                    ; #39751: <==unclosure== 69131 (neg)
                    (not (Pc_Ba_Pb_Ba_not_secret))

                    ; #39922: <==unclosure== 79975 (neg)
                    (not (Pc_Bb_Ba_not_secret))

                    ; #40122: <==unclosure== 79707 (neg)
                    (not (Bb_Pa_Bb_Pa_not_secret))

                    ; #40172: <==negation-removal== 20880 (pos)
                    (not (Pb_Bc_Pb_Pa_not_secret))

                    ; #40565: <==unclosure== 16251 (neg)
                    (not (Pc_Ba_Bc_Ba_not_secret))

                    ; #41758: <==unclosure== 79707 (neg)
                    (not (Pb_Ba_Bb_Pa_not_secret))

                    ; #41854: <==negation-removal== 87021 (pos)
                    (not (Pc_Pa_not_secret))

                    ; #42025: <==unclosure== 50565 (neg)
                    (not (Ba_Pc_Ba_not_secret))

                    ; #42383: <==unclosure== 72202 (neg)
                    (not (Bb_Ba_Bc_Ba_not_secret))

                    ; #42444: <==unclosure== 21450 (neg)
                    (not (Pa_Bb_Bc_Pa_not_secret))

                    ; #43655: <==unclosure== 38838 (neg)
                    (not (Bb_Bc_Pa_not_secret))

                    ; #43789: <==negation-removal== 13980 (pos)
                    (not (Pc_Pb_Bc_Pa_not_secret))

                    ; #44048: <==unclosure== 13016 (neg)
                    (not (Pb_Pc_Pb_Ba_not_secret))

                    ; #44965: <==negation-removal== 78608 (pos)
                    (not (Bc_Pa_Pc_Pa_not_secret))

                    ; #45871: <==unclosure== 16251 (neg)
                    (not (Bc_Ba_Pc_Ba_not_secret))

                    ; #46071: <==unclosure== 32109 (neg)
                    (not (Bb_Ba_not_secret))

                    ; #46129: <==unclosure== 79707 (neg)
                    (not (Bb_Ba_Pb_Pa_not_secret))

                    ; #46720: <==unclosure== 19805 (neg)
                    (not (Ba_Bc_Bb_Pa_not_secret))

                    ; #48100: <==unclosure== 19805 (neg)
                    (not (Ba_Pc_Bb_Ba_not_secret))

                    ; #49346: <==unclosure== 13016 (neg)
                    (not (Bb_Bc_Pb_Pa_not_secret))

                    ; #50565: <==negation-removal== 42625 (pos)
                    (not (Pa_Pc_Pa_not_secret))

                    ; #50698: <==unclosure== 69131 (neg)
                    (not (Pc_Pa_Pb_Ba_not_secret))

                    ; #50955: <==unclosure== 13016 (neg)
                    (not (Pb_Bc_Bb_Ba_not_secret))

                    ; #51501: <==unclosure== 21450 (neg)
                    (not (Ba_Bb_Bc_Ba_not_secret))

                    ; #53259: <==unclosure== 72202 (neg)
                    (not (Bb_Ba_Pc_Ba_not_secret))

                    ; #53830: <==unclosure== 21450 (neg)
                    (not (Ba_Bb_Pc_Ba_not_secret))

                    ; #53974: <==unclosure== 86136 (neg)
                    (not (Pc_Bb_Pc_Ba_not_secret))

                    ; #54994: <==unclosure== 13016 (neg)
                    (not (Bb_Bc_Bb_Ba_not_secret))

                    ; #56586: <==unclosure== 25785 (neg)
                    (not (Ba_Bb_Ba_not_secret))

                    ; #57209: <==unclosure== 79707 (neg)
                    (not (Pb_Pa_Bb_Ba_not_secret))

                    ; #57467: <==negation-removal== 10133 (pos)
                    (not (Bc_Pb_Pa_not_secret))

                    ; #57534: <==unclosure== 19805 (neg)
                    (not (Pa_Pc_Bb_Ba_not_secret))

                    ; #58194: <==negation-removal== 58709 (pos)
                    (not (Pc_Bb_Pa_not_secret))

                    ; #58602: <==unclosure== 21450 (neg)
                    (not (Ba_Bb_Pc_Pa_not_secret))

                    ; #59357: <==negation-removal== 16327 (pos)
                    (not (Bc_Pb_Pc_Pa_not_secret))

                    ; #59502: <==unclosure== 16251 (neg)
                    (not (Pc_Ba_Bc_Pa_not_secret))

                    ; #59912: <==unclosure== 86136 (neg)
                    (not (Pc_Bb_Bc_Ba_not_secret))

                    ; #61825: <==unclosure== 13016 (neg)
                    (not (Bb_Bc_Pb_Ba_not_secret))

                    ; #62046: <==negation-removal== 28938 (pos)
                    (not (Pa_Bb_Pc_Pa_not_secret))

                    ; #62737: <==negation-removal== 17357 (pos)
                    (not (Ba_Pb_Pc_Pa_not_secret))

                    ; #62795: <==unclosure== 21450 (neg)
                    (not (Ba_Pb_Pc_Ba_not_secret))

                    ; #63580: <==negation-removal== 16772 (pos)
                    (not (Ba_Pc_Pa_not_secret))

                    ; #63814: <==unclosure== 21450 (neg)
                    (not (Pa_Bb_Bc_Ba_not_secret))

                    ; #64517: <==unclosure== 50565 (neg)
                    (not (Pa_Pc_Ba_not_secret))

                    ; #64697: <==unclosure== 69131 (neg)
                    (not (Pc_Ba_Bb_Ba_not_secret))

                    ; #64754: <==unclosure== 38838 (neg)
                    (not (Bb_Pc_Ba_not_secret))

                    ; #64949: <==negation-removal== 10557 (pos)
                    (not (Pb_Bc_Pa_not_secret))

                    ; #65001: <==unclosure== 72202 (neg)
                    (not (Bb_Pa_Bc_Pa_not_secret))

                    ; #66290: <==unclosure== 79975 (neg)
                    (not (Bc_Pb_Ba_not_secret))

                    ; #66355: <==unclosure== 86136 (neg)
                    (not (Pc_Bb_Bc_Pa_not_secret))

                    ; #67668: <==unclosure== 19805 (neg)
                    (not (Pa_Pc_Pb_Ba_not_secret))

                    ; #68436: <==unclosure== 72202 (neg)
                    (not (Bb_Ba_Bc_Pa_not_secret))

                    ; #68703: <==unclosure== 13016 (neg)
                    (not (Bb_Pc_Pb_Ba_not_secret))

                    ; #68953: <==unclosure== 79707 (neg)
                    (not (Bb_Ba_Bb_Pa_not_secret))

                    ; #69131: <==negation-removal== 68508 (pos)
                    (not (Pc_Pa_Pb_Pa_not_secret))

                    ; #69514: <==negation-removal== 72328 (pos)
                    (not (Pc_Pa_Bc_Pa_not_secret))

                    ; #69777: <==unclosure== 19805 (neg)
                    (not (Ba_Bc_Pb_Ba_not_secret))

                    ; #70894: <==unclosure== 69131 (neg)
                    (not (Pc_Pa_Bb_Ba_not_secret))

                    ; #71504: <==unclosure== 25785 (neg)
                    (not (Ba_Pb_Ba_not_secret))

                    ; #71589: <==negation-removal== 55732 (pos)
                    (not (Ba_Pb_Pa_not_secret))

                    ; #71648: <==negation-removal== 57097 (pos)
                    (not (Bb_Pc_Pa_not_secret))

                    ; #72015: <==negation-removal== 16273 (pos)
                    (not (Pc_Pa_Bb_Pa_not_secret))

                    ; #72018: <==negation-removal== 39039 (pos)
                    (not (Ba_Pc_Pb_Pa_not_secret))

                    ; #72113: <==negation-removal== 61399 (pos)
                    (not (Pc_Ba_Pc_Pa_not_secret))

                    ; #72202: <==negation-removal== 59434 (pos)
                    (not (Pb_Pa_Pc_Pa_not_secret))

                    ; #73035: <==unclosure== 79707 (neg)
                    (not (Bb_Ba_Pb_Ba_not_secret))

                    ; #73177: <==negation-removal== 70725 (pos)
                    (not (Pa_Pc_Bb_Pa_not_secret))

                    ; #75001: <==unclosure== 72202 (neg)
                    (not (Bb_Ba_Pc_Pa_not_secret))

                    ; #75889: <==unclosure== 19805 (neg)
                    (not (Ba_Bc_Bb_Ba_not_secret))

                    ; #76784: <==unclosure== 16251 (neg)
                    (not (Pc_Ba_Pc_Ba_not_secret))

                    ; #77909: <==unclosure== 16251 (neg)
                    (not (Bc_Ba_Bc_Pa_not_secret))

                    ; #77911: <==unclosure== 69131 (neg)
                    (not (Bc_Pa_Bb_Pa_not_secret))

                    ; #77933: <==unclosure== 19805 (neg)
                    (not (Ba_Pc_Bb_Pa_not_secret))

                    ; #77979: <==unclosure== 50565 (neg)
                    (not (Ba_Bc_Pa_not_secret))

                    ; #78841: <==unclosure== 13016 (neg)
                    (not (Pb_Pc_Bb_Ba_not_secret))

                    ; #79707: <==negation-removal== 16067 (pos)
                    (not (Pb_Pa_Pb_Pa_not_secret))

                    ; #79916: <==unclosure== 86136 (neg)
                    (not (Bc_Bb_Pc_Pa_not_secret))

                    ; #79975: <==negation-removal== 54748 (pos)
                    (not (Pc_Pb_Pa_not_secret))

                    ; #80375: <==unclosure== 21450 (neg)
                    (not (Pa_Bb_Pc_Ba_not_secret))

                    ; #80533: <==unclosure== 16251 (neg)
                    (not (Bc_Pa_Pc_Ba_not_secret))

                    ; #81741: <==unclosure== 25785 (neg)
                    (not (Pa_Pb_Ba_not_secret))

                    ; #81866: <==unclosure== 79975 (neg)
                    (not (Bc_Bb_Ba_not_secret))

                    ; #81981: <==negation-removal== 58030 (pos)
                    (not (Bc_Pa_not_secret))

                    ; #81993: <==unclosure== 86136 (neg)
                    (not (Bc_Pb_Bc_Ba_not_secret))

                    ; #82142: <==unclosure== 21450 (neg)
                    (not (Ba_Pb_Bc_Pa_not_secret))

                    ; #83261: <==unclosure== 86136 (neg)
                    (not (Bc_Bb_Bc_Ba_not_secret))

                    ; #83325: <==unclosure== 13016 (neg)
                    (not (Pb_Bc_Pb_Ba_not_secret))

                    ; #83560: <==unclosure== 72202 (neg)
                    (not (Bb_Pa_Bc_Ba_not_secret))

                    ; #83737: <==unclosure== 72202 (neg)
                    (not (Pb_Ba_Bc_Ba_not_secret))

                    ; #85094: <==unclosure== 86136 (neg)
                    (not (Bc_Pb_Pc_Ba_not_secret))

                    ; #85431: <==unclosure== 69131 (neg)
                    (not (Pc_Ba_Bb_Pa_not_secret))

                    ; #86136: <==negation-removal== 76485 (pos)
                    (not (Pc_Pb_Pc_Pa_not_secret))

                    ; #86617: <==unclosure== 79975 (neg)
                    (not (Bc_Bb_Pa_not_secret))

                    ; #86857: <==unclosure== 86136 (neg)
                    (not (Bc_Bb_Bc_Pa_not_secret))

                    ; #87761: <==unclosure== 41854 (neg)
                    (not (Bc_Ba_not_secret))

                    ; #88017: <==unclosure== 13016 (neg)
                    (not (Bb_Bc_Bb_Pa_not_secret))

                    ; #88689: <==unclosure== 16251 (neg)
                    (not (Bc_Ba_Bc_Ba_not_secret))

                    ; #89242: <==unclosure== 19805 (neg)
                    (not (Pa_Bc_Bb_Pa_not_secret))

                    ; #89562: <==unclosure== 41854 (neg)
                    (not (Pc_Ba_not_secret))

                    ; #90083: <==unclosure== 86136 (neg)
                    (not (Pc_Pb_Bc_Ba_not_secret))

                    ; #90651: <==negation-removal== 53007 (pos)
                    (not (Pb_Pa_Bc_Pa_not_secret))

                    ; #90742: <==unclosure== 25785 (neg)
                    (not (Ba_Bb_Pa_not_secret))

                    ; #90982: <==negation-removal== 55182 (pos)
                    (not (Pa_not_secret))

                    ; #90994: <==negation-removal== 49484 (pos)
                    (not (Pc_Ba_Pb_Pa_not_secret))

                    ; #91588: <==unclosure== 19805 (neg)
                    (not (Pa_Bc_Bb_Ba_not_secret))

                    ; #91665: <==unclosure== 16251 (neg)
                    (not (Pc_Pa_Pc_Ba_not_secret))

                    ; #92956: <==negation-removal== 71029 (pos)
                    (not (Bb_Pa_Pc_Pa_not_secret))))

    (:action shout-1
        :precondition (and (at_l1)
                           (Ba_secret))
        :effect (and
                    ; #10283: <==closure== 43285 (pos)
                    (Ba_Pb_Pa_Pb_secret)

                    ; #10678: <==closure== 77056 (pos)
                    (Bb_Pa_Pc_Bb_secret)

                    ; #10856: <==closure== 68054 (pos)
                    (Pa_Pb_Bc_Bb_secret)

                    ; #11734: <==commonly_known== 31027 (pos)
                    (Ba_Bc_Ba_Bb_secret)

                    ; #11844: <==closure== 72536 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #12099: <==closure== 29376 (pos)
                    (Pc_Pa_Pc_Pb_secret)

                    ; #12624: <==commonly_known== 72536 (pos)
                    (Bc_Bb_Bc_Bb_secret)

                    ; #13393: <==closure== 11734 (pos)
                    (Ba_Bc_Pa_Pb_secret)

                    ; #13792: <==commonly_known== 85775 (neg)
                    (Pc_Bb_Ba_Bb_secret)

                    ; #13937: <==closure== 35564 (pos)
                    (Pc_Bb_Pa_Bb_secret)

                    ; #14617: <==closure== 11734 (pos)
                    (Ba_Pc_Ba_Pb_secret)

                    ; #15049: <==closure== 77056 (pos)
                    (Pb_Pa_Bc_Bb_secret)

                    ; #15968: <==closure== 70150 (pos)
                    (Bc_Pb_secret)

                    ; #16044: <==closure== 43285 (pos)
                    (Pa_Bb_Pa_Bb_secret)

                    ; #16080: <==commonly_known== 70150 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #16282: <==commonly_known== 80775 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #16580: <==closure== 16080 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #16830: <==commonly_known== 18147 (pos)
                    (Bb_Bc_Pa_Bb_secret)

                    ; #17094: <==closure== 31703 (pos)
                    (Pb_Bc_Pa_Bb_secret)

                    ; #17526: <==closure== 63218 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #17727: <==commonly_known== 82766 (pos)
                    (Bc_Pb_Ba_Bb_secret)

                    ; #17943: <==closure== 11734 (pos)
                    (Pa_Pc_Ba_Bb_secret)

                    ; #17960: <==closure== 77056 (pos)
                    (Bb_Pa_Bc_Pb_secret)

                    ; #18029: <==closure== 31703 (pos)
                    (Pb_Pc_Pa_Bb_secret)

                    ; #18147: <==commonly_known== 53350 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #18261: <==closure== 11734 (pos)
                    (Ba_Pc_Pa_Bb_secret)

                    ; #18898: <==closure== 43285 (pos)
                    (Pa_Pb_Pa_Bb_secret)

                    ; #19002: <==closure== 68054 (pos)
                    (Ba_Bb_Bc_Pb_secret)

                    ; #19320: <==closure== 11734 (pos)
                    (Pa_Bc_Pa_Bb_secret)

                    ; #19771: <==closure== 63218 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #21646: <==closure== 12624 (pos)
                    (Pc_Bb_Pc_Pb_secret)

                    ; #22606: <==commonly_known== 58500 (pos)
                    (Bc_Pa_Bc_Bb_secret)

                    ; #22686: <==commonly_known== 83578 (pos)
                    (Ba_Bb_secret)

                    ; #24482: <==closure== 77056 (pos)
                    (Pb_Pa_Pc_Bb_secret)

                    ; #27041: <==closure== 29376 (pos)
                    (Bc_Ba_Bc_Pb_secret)

                    ; #27422: <==closure== 43285 (pos)
                    (Pa_Pb_Pa_Pb_secret)

                    ; #28507: <==closure== 43285 (pos)
                    (Ba_Bb_Ba_Pb_secret)

                    ; #28839: <==commonly_known== 32511 (neg)
                    (Pa_Bc_Ba_Bb_secret)

                    ; #29280: <==closure== 35564 (pos)
                    (Pc_Pb_Pa_Pb_secret)

                    ; #29376: <==commonly_known== 16080 (pos)
                    (Bc_Ba_Bc_Bb_secret)

                    ; #30037: <==closure== 35564 (pos)
                    (Bc_Pb_Ba_Pb_secret)

                    ; #30736: <==closure== 12624 (pos)
                    (Pc_Bb_Pc_Bb_secret)

                    ; #31027: <==commonly_known== 22686 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #31385: <==closure== 43285 (pos)
                    (Pa_Pb_Ba_Bb_secret)

                    ; #31703: <==commonly_known== 31027 (pos)
                    (Bb_Bc_Ba_Bb_secret)

                    ; #31735: <==closure== 12624 (pos)
                    (Pc_Pb_Bc_Bb_secret)

                    ; #33289: <==closure== 31703 (pos)
                    (Pb_Bc_Pa_Pb_secret)

                    ; #33720: <==closure== 31703 (pos)
                    (Pb_Bc_Ba_Pb_secret)

                    ; #34439: <==closure== 43285 (pos)
                    (Ba_Pb_Ba_Pb_secret)

                    ; #34472: <==closure== 43285 (pos)
                    (Ba_Bb_Pa_Pb_secret)

                    ; #34494: <==closure== 77056 (pos)
                    (Bb_Pa_Pc_Pb_secret)

                    ; #35562: <==commonly_known== 20497 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #35564: <==commonly_known== 63218 (pos)
                    (Bc_Bb_Ba_Bb_secret)

                    ; #36172: <==commonly_known== 18147 (pos)
                    (Ba_Bc_Pa_Bb_secret)

                    ; #37748: <==closure== 22686 (pos)
                    (Pa_Pb_secret)

                    ; #38261: <==closure== 63218 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #38640: <==closure== 35564 (pos)
                    (Bc_Bb_Pa_Pb_secret)

                    ; #39855: <==closure== 68054 (pos)
                    (Pa_Pb_Pc_Bb_secret)

                    ; #40887: <==commonly_known== 16282 (pos)
                    (Bc_Ba_Pc_Bb_secret)

                    ; #41088: <==commonly_known== 78758 (neg)
                    (Pc_Bb_Bc_Bb_secret)

                    ; #42640: <==closure== 31027 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #42682: <==commonly_known== 11514 (neg)
                    (Pb_Ba_Bc_Bb_secret)

                    ; #43285: <==commonly_known== 63218 (pos)
                    (Ba_Bb_Ba_Bb_secret)

                    ; #43578: <==closure== 29376 (pos)
                    (Pc_Pa_Pc_Bb_secret)

                    ; #43642: <==commonly_known== 32511 (neg)
                    (Pb_Bc_Ba_Bb_secret)

                    ; #44413: <==commonly_known== 53350 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #45096: <==closure== 68054 (pos)
                    (Pa_Bb_Bc_Pb_secret)

                    ; #45401: <==closure== 70150 (pos)
                    (Pc_Pb_secret)

                    ; #45878: <==commonly_known== 35562 (pos)
                    (Ba_Pc_Ba_Bb_secret)

                    ; #46438: <==closure== 29376 (pos)
                    (Bc_Pa_Pc_Pb_secret)

                    ; #47239: <==closure== 83578 (pos)
                    (Pb_secret)

                    ; #48611: <==commonly_known== 84523 (pos)
                    (Bc_Bb_Pc_Bb_secret)

                    ; #48717: <==closure== 22686 (pos)
                    (Ba_Pb_secret)

                    ; #48741: <==closure== 31703 (pos)
                    (Pb_Pc_Pa_Pb_secret)

                    ; #48915: <==closure== 12624 (pos)
                    (Pc_Pb_Pc_Bb_secret)

                    ; #49462: <==closure== 35564 (pos)
                    (Pc_Pb_Ba_Bb_secret)

                    ; #49948: <==closure== 72536 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #50159: <==closure== 11734 (pos)
                    (Ba_Pc_Pa_Pb_secret)

                    ; #50213: <==closure== 11734 (pos)
                    (Pa_Pc_Ba_Pb_secret)

                    ; #51851: <==closure== 11734 (pos)
                    (Pa_Bc_Pa_Pb_secret)

                    ; #51956: <==closure== 72536 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #52018: <==closure== 68054 (pos)
                    (Ba_Bb_Pc_Pb_secret)

                    ; #52223: <==closure== 68054 (pos)
                    (Ba_Pb_Pc_Pb_secret)

                    ; #52500: <==closure== 31703 (pos)
                    (Bb_Pc_Ba_Pb_secret)

                    ; #53350: <==commonly_known== 25360 (neg)
                    (Pa_Bb_secret)

                    ; #53645: <==commonly_known== 35562 (pos)
                    (Bb_Pc_Ba_Bb_secret)

                    ; #53775: <==closure== 31703 (pos)
                    (Pb_Pc_Ba_Bb_secret)

                    ; #54023: <==commonly_known== 58500 (pos)
                    (Bb_Pa_Bc_Bb_secret)

                    ; #54842: <==closure== 11734 (pos)
                    (Pa_Pc_Pa_Pb_secret)

                    ; #55175: <==closure== 29376 (pos)
                    (Bc_Pa_Bc_Pb_secret)

                    ; #55441: <==commonly_known== 44413 (pos)
                    (Ba_Bb_Pa_Bb_secret)

                    ; #55557: <==commonly_known== 16282 (pos)
                    (Bb_Ba_Pc_Bb_secret)

                    ; #55639: <==closure== 29376 (pos)
                    (Pc_Ba_Pc_Pb_secret)

                    ; #55818: <==closure== 29376 (pos)
                    (Pc_Ba_Pc_Bb_secret)

                    ; #55958: <==closure== 35564 (pos)
                    (Bc_Pb_Pa_Bb_secret)

                    ; #56045: <==closure== 11734 (pos)
                    (Pa_Bc_Ba_Pb_secret)

                    ; #56440: <==closure== 68054 (pos)
                    (Ba_Pb_Bc_Pb_secret)

                    ; #57625: <==closure== 63218 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #58192: <==commonly_known== 82766 (pos)
                    (Ba_Pb_Ba_Bb_secret)

                    ; #58500: <==commonly_known== 84652 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #58560: <==closure== 77056 (pos)
                    (Pb_Pa_Bc_Pb_secret)

                    ; #58832: <==closure== 31027 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #58993: <==closure== 31027 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #59828: <==commonly_known== 87286 (pos)
                    (Ba_Pb_Bc_Bb_secret)

                    ; #60053: <==commonly_known== 11514 (neg)
                    (Pc_Ba_Bc_Bb_secret)

                    ; #61079: <==closure== 16080 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #61757: <==closure== 31703 (pos)
                    (Bb_Pc_Pa_Bb_secret)

                    ; #62185: <==commonly_known== 44413 (pos)
                    (Bc_Bb_Pa_Bb_secret)

                    ; #62865: <==closure== 12624 (pos)
                    (Bc_Bb_Pc_Pb_secret)

                    ; #63102: <==closure== 12624 (pos)
                    (Pc_Pb_Bc_Pb_secret)

                    ; #63218: <==commonly_known== 22686 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #63639: <==closure== 72536 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #63736: <==closure== 68054 (pos)
                    (Pa_Pb_Pc_Pb_secret)

                    ; #64101: <==closure== 35564 (pos)
                    (Pc_Pb_Ba_Pb_secret)

                    ; #64478: <==closure== 31027 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #64565: <==closure== 35564 (pos)
                    (Pc_Bb_Pa_Pb_secret)

                    ; #64763: <==commonly_known== 78758 (neg)
                    (Pa_Bb_Bc_Bb_secret)

                    ; #64996: <==closure== 43285 (pos)
                    (Pa_Bb_Pa_Pb_secret)

                    ; #65094: <==closure== 29376 (pos)
                    (Pc_Pa_Bc_Bb_secret)

                    ; #65191: <==closure== 35564 (pos)
                    (Pc_Bb_Ba_Pb_secret)

                    ; #65200: <==commonly_known== 85775 (neg)
                    (Pa_Bb_Ba_Bb_secret)

                    ; #65523: <==closure== 12624 (pos)
                    (Bc_Pb_Bc_Pb_secret)

                    ; #65584: <==closure== 68054 (pos)
                    (Pa_Pb_Bc_Pb_secret)

                    ; #67271: <==closure== 63218 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #67916: <==closure== 12624 (pos)
                    (Bc_Bb_Bc_Pb_secret)

                    ; #67960: <==closure== 31703 (pos)
                    (Bb_Bc_Pa_Pb_secret)

                    ; #68054: <==commonly_known== 72536 (pos)
                    (Ba_Bb_Bc_Bb_secret)

                    ; #68751: <==closure== 31703 (pos)
                    (Bb_Pc_Pa_Pb_secret)

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

                    ; #72883: <==closure== 12624 (pos)
                    (Pc_Pb_Pc_Pb_secret)

                    ; #73891: <==closure== 77056 (pos)
                    (Pb_Ba_Bc_Pb_secret)

                    ; #74193: <==closure== 43285 (pos)
                    (Pa_Bb_Ba_Pb_secret)

                    ; #74436: <==closure== 16080 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #74664: <==closure== 77056 (pos)
                    (Pb_Pa_Pc_Pb_secret)

                    ; #75605: <==closure== 35564 (pos)
                    (Pc_Pb_Pa_Bb_secret)

                    ; #75626: <==closure== 29376 (pos)
                    (Bc_Pa_Pc_Bb_secret)

                    ; #76039: <==closure== 68054 (pos)
                    (Pa_Bb_Pc_Bb_secret)

                    ; #77056: <==commonly_known== 16080 (pos)
                    (Bb_Ba_Bc_Bb_secret)

                    ; #77502: <==closure== 16080 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #77626: <==closure== 31703 (pos)
                    (Pb_Pc_Ba_Pb_secret)

                    ; #78208: <==closure== 12624 (pos)
                    (Pc_Bb_Bc_Pb_secret)

                    ; #78840: <==closure== 29376 (pos)
                    (Pc_Ba_Bc_Pb_secret)

                    ; #79576: <==closure== 35564 (pos)
                    (Bc_Pb_Pa_Pb_secret)

                    ; #79735: <==closure== 29376 (pos)
                    (Pc_Pa_Bc_Pb_secret)

                    ; #80775: <==commonly_known== 25360 (neg)
                    (Pc_Bb_secret)

                    ; #81225: <==closure== 68054 (pos)
                    (Ba_Pb_Pc_Bb_secret)

                    ; #81850: <==commonly_known== 84523 (pos)
                    (Ba_Bb_Pc_Bb_secret)

                    ; #81872: <==commonly_known== 87286 (pos)
                    (Bc_Pb_Bc_Bb_secret)

                    ; #81967: <==closure== 68054 (pos)
                    (Pa_Bb_Pc_Pb_secret)

                    ; #82588: <==closure== 43285 (pos)
                    (Pa_Pb_Ba_Pb_secret)

                    ; #82766: <==commonly_known== 20497 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #82840: <==closure== 43285 (pos)
                    (Ba_Pb_Pa_Bb_secret)

                    ; #82981: <==closure== 12624 (pos)
                    (Bc_Pb_Pc_Bb_secret)

                    ; #83578: origin
                    (Bb_secret)

                    ; #84523: <==commonly_known== 80775 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #85468: <==closure== 77056 (pos)
                    (Pb_Ba_Pc_Bb_secret)

                    ; #85637: <==closure== 77056 (pos)
                    (Bb_Ba_Pc_Pb_secret)

                    ; #86159: <==closure== 77056 (pos)
                    (Bb_Ba_Bc_Pb_secret)

                    ; #86235: <==closure== 77056 (pos)
                    (Pb_Ba_Pc_Pb_secret)

                    ; #87286: <==commonly_known== 84652 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #87816: <==closure== 29376 (pos)
                    (Bc_Ba_Pc_Pb_secret)

                    ; #90110: <==closure== 11734 (pos)
                    (Ba_Bc_Ba_Pb_secret)

                    ; #90518: <==closure== 31703 (pos)
                    (Bb_Bc_Ba_Pb_secret)

                    ; #91807: <==closure== 35564 (pos)
                    (Bc_Bb_Ba_Pb_secret)

                    ; #92148: <==closure== 12624 (pos)
                    (Bc_Pb_Pc_Pb_secret)

                    ; #98606: <==closure== 11734 (pos)
                    (Pa_Pc_Pa_Bb_secret)

                    ; #10263: <==negation-removal== 58500 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #10652: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Ba_Pb_not_secret))

                    ; #11040: <==unclosure== 86398 (neg)
                    (not (Pb_Bc_Pa_Bb_not_secret))

                    ; #11069: <==negation-removal== 64763 (pos)
                    (not (Ba_Pb_Pc_Pb_not_secret))

                    ; #11382: <==unclosure== 40295 (neg)
                    (not (Bb_Pa_Bc_Pb_not_secret))

                    ; #11514: <==negation-removal== 16080 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #11629: <==unclosure== 15812 (neg)
                    (not (Pa_Pb_Bc_Bb_not_secret))

                    ; #11945: <==unclosure== 15812 (neg)
                    (not (Pa_Bb_Bc_Pb_not_secret))

                    ; #12110: <==negation-removal== 59828 (pos)
                    (not (Pa_Bb_Pc_Pb_not_secret))

                    ; #12128: <==unclosure== 15812 (neg)
                    (not (Ba_Pb_Bc_Pb_not_secret))

                    ; #12293: <==unclosure== 12610 (neg)
                    (not (Bc_Pb_Ba_Pb_not_secret))

                    ; #12537: <==negation-removal== 11734 (pos)
                    (not (Pa_Pc_Pa_Pb_not_secret))

                    ; #12610: <==negation-removal== 35564 (pos)
                    (not (Pc_Pb_Pa_Pb_not_secret))

                    ; #14754: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Bc_Pb_not_secret))

                    ; #15433: <==unclosure== 32511 (neg)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #15683: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Ba_Pb_not_secret))

                    ; #15812: <==negation-removal== 68054 (pos)
                    (not (Pa_Pb_Pc_Pb_not_secret))

                    ; #15897: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Ba_Bb_not_secret))

                    ; #15919: <==unclosure== 15812 (neg)
                    (not (Pa_Pb_Pc_Bb_not_secret))

                    ; #17926: <==unclosure== 12537 (neg)
                    (not (Ba_Pc_Ba_Pb_not_secret))

                    ; #18374: <==unclosure== 40295 (neg)
                    (not (Pb_Ba_Bc_Pb_not_secret))

                    ; #18737: <==unclosure== 40295 (neg)
                    (not (Pb_Pa_Bc_Bb_not_secret))

                    ; #20396: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Ba_Bb_not_secret))

                    ; #20497: <==negation-removal== 22686 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #21209: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Ba_Bb_not_secret))

                    ; #21804: <==unclosure== 20497 (neg)
                    (not (Pa_Bb_not_secret))

                    ; #21877: <==negation-removal== 48611 (pos)
                    (not (Pc_Pb_Bc_Pb_not_secret))

                    ; #23882: <==unclosure== 72520 (neg)
                    (not (Ba_Pb_Pa_Bb_not_secret))

                    ; #24837: <==unclosure== 91487 (neg)
                    (not (Pc_Bb_Bc_Bb_not_secret))

                    ; #25360: <==negation-removal== 83578 (pos)
                    (not (Pb_not_secret))

                    ; #25628: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #26110: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Pa_Pb_not_secret))

                    ; #26937: <==negation-removal== 87286 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #27176: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #28599: <==unclosure== 72520 (neg)
                    (not (Ba_Pb_Ba_Pb_not_secret))

                    ; #29479: <==unclosure== 85775 (neg)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #29565: <==negation-removal== 60053 (pos)
                    (not (Bc_Pa_Pc_Pb_not_secret))

                    ; #30104: <==unclosure== 86398 (neg)
                    (not (Bb_Pc_Ba_Pb_not_secret))

                    ; #31222: <==unclosure== 40295 (neg)
                    (not (Bb_Pa_Pc_Bb_not_secret))

                    ; #31713: <==unclosure== 15812 (neg)
                    (not (Pa_Bb_Pc_Bb_not_secret))

                    ; #32300: <==unclosure== 12610 (neg)
                    (not (Pc_Bb_Ba_Pb_not_secret))

                    ; #32309: <==unclosure== 12537 (neg)
                    (not (Ba_Pc_Ba_Bb_not_secret))

                    ; #32511: <==negation-removal== 31027 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #32727: <==unclosure== 78758 (neg)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #33865: <==unclosure== 85775 (neg)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #34230: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Pa_Bb_not_secret))

                    ; #34249: <==negation-removal== 80775 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #34392: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Pc_Bb_not_secret))

                    ; #34413: <==unclosure== 72520 (neg)
                    (not (Pa_Bb_Ba_Bb_not_secret))

                    ; #34901: <==unclosure== 12610 (neg)
                    (not (Pc_Bb_Pa_Bb_not_secret))

                    ; #35128: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Pa_Pb_not_secret))

                    ; #36803: <==negation-removal== 81872 (pos)
                    (not (Pc_Bb_Pc_Pb_not_secret))

                    ; #37869: <==unclosure== 12610 (neg)
                    (not (Pc_Bb_Ba_Bb_not_secret))

                    ; #38285: <==negation-removal== 43642 (pos)
                    (not (Bb_Pc_Pa_Pb_not_secret))

                    ; #38328: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Bc_Bb_not_secret))

                    ; #38335: <==negation-removal== 35562 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #38947: <==unclosure== 91487 (neg)
                    (not (Pc_Bb_Bc_Pb_not_secret))

                    ; #38991: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Pc_Bb_not_secret))

                    ; #39329: <==negation-removal== 62185 (pos)
                    (not (Pc_Pb_Ba_Pb_not_secret))

                    ; #39748: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #40020: <==negation-removal== 45878 (pos)
                    (not (Pa_Bc_Pa_Pb_not_secret))

                    ; #40295: <==negation-removal== 77056 (pos)
                    (not (Pb_Pa_Pc_Pb_not_secret))

                    ; #41185: <==negation-removal== 81850 (pos)
                    (not (Pa_Pb_Bc_Pb_not_secret))

                    ; #41433: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Ba_Bb_not_secret))

                    ; #41520: <==negation-removal== 22606 (pos)
                    (not (Pc_Ba_Pc_Pb_not_secret))

                    ; #41562: <==unclosure== 78758 (neg)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #42334: <==unclosure== 90366 (neg)
                    (not (Pc_Ba_Pc_Bb_not_secret))

                    ; #42955: <==negation-removal== 53645 (pos)
                    (not (Pb_Bc_Pa_Pb_not_secret))

                    ; #43175: <==unclosure== 12610 (neg)
                    (not (Bc_Pb_Pa_Bb_not_secret))

                    ; #43765: <==unclosure== 84652 (neg)
                    (not (Bc_Bb_not_secret))

                    ; #43895: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Ba_Pb_not_secret))

                    ; #44762: <==unclosure== 86398 (neg)
                    (not (Pb_Pc_Ba_Bb_not_secret))

                    ; #47361: <==unclosure== 72520 (neg)
                    (not (Pa_Bb_Ba_Pb_not_secret))

                    ; #48024: <==unclosure== 90366 (neg)
                    (not (Bc_Pa_Bc_Pb_not_secret))

                    ; #48893: <==unclosure== 40295 (neg)
                    (not (Bb_Pa_Bc_Bb_not_secret))

                    ; #49066: <==unclosure== 91487 (neg)
                    (not (Pc_Pb_Pc_Bb_not_secret))

                    ; #50073: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Pc_Pb_not_secret))

                    ; #50331: <==unclosure== 12610 (neg)
                    (not (Pc_Pb_Ba_Bb_not_secret))

                    ; #50351: <==unclosure== 86398 (neg)
                    (not (Bb_Pc_Ba_Bb_not_secret))

                    ; #50412: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Bc_Pb_not_secret))

                    ; #50584: <==unclosure== 40295 (neg)
                    (not (Pb_Ba_Pc_Bb_not_secret))

                    ; #51665: <==unclosure== 91487 (neg)
                    (not (Pc_Pb_Bc_Bb_not_secret))

                    ; #52730: <==unclosure== 91487 (neg)
                    (not (Bc_Pb_Bc_Pb_not_secret))

                    ; #53266: <==negation-removal== 58192 (pos)
                    (not (Pa_Bb_Pa_Pb_not_secret))

                    ; #53895: <==unclosure== 90366 (neg)
                    (not (Pc_Ba_Bc_Pb_not_secret))

                    ; #54197: <==negation-removal== 18147 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #54436: <==unclosure== 12537 (neg)
                    (not (Ba_Pc_Pa_Bb_not_secret))

                    ; #55740: <==unclosure== 85775 (neg)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #56205: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Pc_Pb_not_secret))

                    ; #56214: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #56397: <==unclosure== 72520 (neg)
                    (not (Pa_Pb_Ba_Bb_not_secret))

                    ; #56907: <==unclosure== 12537 (neg)
                    (not (Pa_Bc_Ba_Pb_not_secret))

                    ; #57383: <==negation-removal== 65200 (pos)
                    (not (Ba_Pb_Pa_Pb_not_secret))

                    ; #59686: <==unclosure== 12537 (neg)
                    (not (Pa_Bc_Ba_Bb_not_secret))

                    ; #60365: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Bc_Pb_not_secret))

                    ; #60441: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Pc_Bb_not_secret))

                    ; #60515: <==negation-removal== 17727 (pos)
                    (not (Pc_Bb_Pa_Pb_not_secret))

                    ; #61289: <==unclosure== 90366 (neg)
                    (not (Pc_Pa_Bc_Bb_not_secret))

                    ; #61462: <==unclosure== 40295 (neg)
                    (not (Pb_Pa_Pc_Bb_not_secret))

                    ; #61872: <==unclosure== 72520 (neg)
                    (not (Pa_Pb_Pa_Bb_not_secret))

                    ; #63173: <==negation-removal== 44413 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #63518: <==negation-removal== 16830 (pos)
                    (not (Pb_Pc_Ba_Pb_not_secret))

                    ; #63527: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Pc_Pb_not_secret))

                    ; #63529: <==negation-removal== 55441 (pos)
                    (not (Pa_Pb_Ba_Pb_not_secret))

                    ; #63648: <==unclosure== 91487 (neg)
                    (not (Bc_Pb_Bc_Bb_not_secret))

                    ; #64110: <==unclosure== 72520 (neg)
                    (not (Pa_Bb_Pa_Bb_not_secret))

                    ; #64194: <==unclosure== 11514 (neg)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #64816: <==unclosure== 86398 (neg)
                    (not (Bb_Pc_Pa_Bb_not_secret))

                    ; #64824: <==unclosure== 32511 (neg)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #66261: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Pa_Pb_not_secret))

                    ; #66556: <==negation-removal== 53350 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #67016: <==unclosure== 32511 (neg)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #67657: <==unclosure== 25360 (neg)
                    (not (Bb_not_secret))

                    ; #67896: <==unclosure== 40295 (neg)
                    (not (Pb_Ba_Bc_Bb_not_secret))

                    ; #68006: <==negation-removal== 41088 (pos)
                    (not (Bc_Pb_Pc_Pb_not_secret))

                    ; #68349: <==negation-removal== 13792 (pos)
                    (not (Bc_Pb_Pa_Pb_not_secret))

                    ; #68593: <==negation-removal== 42682 (pos)
                    (not (Bb_Pa_Pc_Pb_not_secret))

                    ; #68950: <==unclosure== 11514 (neg)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #69202: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Pa_Pb_not_secret))

                    ; #70605: <==negation-removal== 84523 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #70852: <==unclosure== 11514 (neg)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #71046: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #72520: <==negation-removal== 43285 (pos)
                    (not (Pa_Pb_Pa_Pb_not_secret))

                    ; #72539: <==unclosure== 15812 (neg)
                    (not (Ba_Pb_Pc_Bb_not_secret))

                    ; #72999: <==unclosure== 12537 (neg)
                    (not (Pa_Bc_Pa_Bb_not_secret))

                    ; #73110: <==negation-removal== 16282 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #73970: <==unclosure== 12610 (neg)
                    (not (Pc_Pb_Pa_Bb_not_secret))

                    ; #75280: <==unclosure== 86398 (neg)
                    (not (Pb_Bc_Ba_Pb_not_secret))

                    ; #75671: <==unclosure== 86398 (neg)
                    (not (Pb_Pc_Pa_Bb_not_secret))

                    ; #75996: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Ba_Pb_not_secret))

                    ; #76025: <==unclosure== 15812 (neg)
                    (not (Pa_Bb_Bc_Bb_not_secret))

                    ; #76394: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Bc_Bb_not_secret))

                    ; #76560: <==unclosure== 12537 (neg)
                    (not (Pa_Pc_Pa_Bb_not_secret))

                    ; #77512: <==negation-removal== 28839 (pos)
                    (not (Ba_Pc_Pa_Pb_not_secret))

                    ; #77529: <==unclosure== 12537 (neg)
                    (not (Pa_Pc_Ba_Bb_not_secret))

                    ; #77743: <==negation-removal== 54023 (pos)
                    (not (Pb_Ba_Pc_Pb_not_secret))

                    ; #77960: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Pa_Bb_not_secret))

                    ; #78732: <==unclosure== 91487 (neg)
                    (not (Bc_Pb_Pc_Bb_not_secret))

                    ; #78758: <==negation-removal== 72536 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #79295: <==unclosure== 78758 (neg)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #80191: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Bc_Pb_not_secret))

                    ; #80234: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Bc_Bb_not_secret))

                    ; #80481: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Pc_Bb_not_secret))

                    ; #81341: <==unclosure== 86398 (neg)
                    (not (Pb_Bc_Ba_Bb_not_secret))

                    ; #81545: <==unclosure== 91487 (neg)
                    (not (Pc_Bb_Pc_Bb_not_secret))

                    ; #81750: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #81997: <==unclosure== 20497 (neg)
                    (not (Ba_Bb_not_secret))

                    ; #84652: <==negation-removal== 70150 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #84980: <==unclosure== 72520 (neg)
                    (not (Ba_Pb_Ba_Bb_not_secret))

                    ; #85125: <==negation-removal== 40887 (pos)
                    (not (Pc_Pa_Bc_Pb_not_secret))

                    ; #85257: <==unclosure== 12610 (neg)
                    (not (Bc_Pb_Ba_Bb_not_secret))

                    ; #85764: <==unclosure== 15812 (neg)
                    (not (Ba_Pb_Bc_Bb_not_secret))

                    ; #85775: <==negation-removal== 63218 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #85857: <==negation-removal== 36172 (pos)
                    (not (Pa_Pc_Ba_Pb_not_secret))

                    ; #86140: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #86398: <==negation-removal== 31703 (pos)
                    (not (Pb_Pc_Pa_Pb_not_secret))

                    ; #86899: <==negation-removal== 82766 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #87249: <==unclosure== 90366 (neg)
                    (not (Pc_Ba_Bc_Bb_not_secret))

                    ; #87875: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #88509: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Pa_Bb_not_secret))

                    ; #88822: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Bc_Bb_not_secret))

                    ; #89285: <==negation-removal== 55557 (pos)
                    (not (Pb_Pa_Bc_Pb_not_secret))

                    ; #89381: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Pa_Bb_not_secret))

                    ; #89490: <==unclosure== 90366 (neg)
                    (not (Bc_Pa_Pc_Bb_not_secret))

                    ; #89682: <==unclosure== 90366 (neg)
                    (not (Bc_Pa_Bc_Bb_not_secret))

                    ; #90366: <==negation-removal== 29376 (pos)
                    (not (Pc_Pa_Pc_Pb_not_secret))

                    ; #90892: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Pc_Pb_not_secret))

                    ; #91487: <==negation-removal== 12624 (pos)
                    (not (Pc_Pb_Pc_Pb_not_secret))

                    ; #92184: <==unclosure== 84652 (neg)
                    (not (Pc_Bb_not_secret))

                    ; #95552: <==unclosure== 90366 (neg)
                    (not (Pc_Pa_Pc_Bb_not_secret))))

    (:action shout-2
        :precondition (and (at_l2)
                           (Ba_secret))
        :effect (and
                    ; #10072: <==closure== 29596 (pos)
                    (Ba_Bc_Ba_Pc_secret)

                    ; #10283: <==closure== 43285 (pos)
                    (Ba_Pb_Pa_Pb_secret)

                    ; #10373: <==commonly_known== 25819 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #10533: <==closure== 50674 (pos)
                    (Pb_Pc_Pb_Bc_secret)

                    ; #10678: <==closure== 77056 (pos)
                    (Bb_Pa_Pc_Bb_secret)

                    ; #10734: <==commonly_known== 76804 (pos)
                    (Bb_Ba_Bb_Bc_secret)

                    ; #10856: <==closure== 68054 (pos)
                    (Pa_Pb_Bc_Bb_secret)

                    ; #11235: <==closure== 76804 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #11377: <==commonly_known== 76804 (pos)
                    (Bc_Ba_Bb_Bc_secret)

                    ; #11558: <==commonly_known== 56698 (neg)
                    (Pb_Ba_Bb_Bc_secret)

                    ; #11734: <==commonly_known== 31027 (pos)
                    (Ba_Bc_Ba_Bb_secret)

                    ; #11844: <==closure== 72536 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #12099: <==closure== 29376 (pos)
                    (Pc_Pa_Pc_Pb_secret)

                    ; #12624: <==commonly_known== 72536 (pos)
                    (Bc_Bb_Bc_Bb_secret)

                    ; #12666: <==commonly_known== 23121 (neg)
                    (Pb_Bc_Bb_Bc_secret)

                    ; #12735: <==closure== 82291 (pos)
                    (Bb_Pc_secret)

                    ; #13393: <==closure== 11734 (pos)
                    (Ba_Bc_Pa_Pb_secret)

                    ; #13394: <==commonly_known== 67546 (pos)
                    (Ba_Bc_Bb_Bc_secret)

                    ; #13462: <==closure== 10734 (pos)
                    (Pb_Pa_Bb_Pc_secret)

                    ; #13792: <==commonly_known== 85775 (neg)
                    (Pc_Bb_Ba_Bb_secret)

                    ; #13821: <==closure== 50674 (pos)
                    (Pb_Pc_Pb_Pc_secret)

                    ; #13937: <==closure== 35564 (pos)
                    (Pc_Bb_Pa_Bb_secret)

                    ; #14402: <==commonly_known== 37539 (pos)
                    (Bb_Pa_Bb_Bc_secret)

                    ; #14596: <==closure== 79565 (pos)
                    (Ba_Bb_Pa_Pc_secret)

                    ; #14617: <==closure== 11734 (pos)
                    (Ba_Pc_Ba_Pb_secret)

                    ; #14643: <==closure== 76804 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #15049: <==closure== 77056 (pos)
                    (Pb_Pa_Bc_Bb_secret)

                    ; #15527: <==closure== 10373 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #15877: <==closure== 13394 (pos)
                    (Pa_Pc_Bb_Pc_secret)

                    ; #15968: <==closure== 70150 (pos)
                    (Bc_Pb_secret)

                    ; #16028: <==closure== 86175 (pos)
                    (Bb_Bc_Pa_Pc_secret)

                    ; #16044: <==closure== 43285 (pos)
                    (Pa_Bb_Pa_Bb_secret)

                    ; #16080: <==commonly_known== 70150 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #16282: <==commonly_known== 80775 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #16393: <==closure== 79565 (pos)
                    (Pa_Bb_Pa_Pc_secret)

                    ; #16580: <==closure== 16080 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #16830: <==commonly_known== 18147 (pos)
                    (Bb_Bc_Pa_Bb_secret)

                    ; #17094: <==closure== 31703 (pos)
                    (Pb_Bc_Pa_Bb_secret)

                    ; #17270: <==closure== 86175 (pos)
                    (Pb_Pc_Ba_Pc_secret)

                    ; #17526: <==closure== 63218 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #17727: <==commonly_known== 82766 (pos)
                    (Bc_Pb_Ba_Bb_secret)

                    ; #17871: <==closure== 62149 (pos)
                    (Bc_Pb_Pa_Bc_secret)

                    ; #17872: <==closure== 10734 (pos)
                    (Pb_Ba_Pb_Pc_secret)

                    ; #17943: <==closure== 11734 (pos)
                    (Pa_Pc_Ba_Bb_secret)

                    ; #17960: <==closure== 77056 (pos)
                    (Bb_Pa_Bc_Pb_secret)

                    ; #18029: <==closure== 31703 (pos)
                    (Pb_Pc_Pa_Bb_secret)

                    ; #18147: <==commonly_known== 53350 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #18261: <==closure== 11734 (pos)
                    (Ba_Pc_Pa_Bb_secret)

                    ; #18330: <==closure== 11377 (pos)
                    (Bc_Ba_Bb_Pc_secret)

                    ; #18898: <==closure== 43285 (pos)
                    (Pa_Pb_Pa_Bb_secret)

                    ; #19002: <==closure== 68054 (pos)
                    (Ba_Bb_Bc_Pb_secret)

                    ; #19320: <==closure== 11734 (pos)
                    (Pa_Bc_Pa_Bb_secret)

                    ; #19489: origin
                    (Bc_secret)

                    ; #19771: <==closure== 63218 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #19938: <==closure== 67546 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #20147: <==commonly_known== 89302 (pos)
                    (Bc_Bb_Pa_Bc_secret)

                    ; #20261: <==closure== 86175 (pos)
                    (Pb_Pc_Pa_Bc_secret)

                    ; #20372: <==closure== 79565 (pos)
                    (Pa_Pb_Ba_Bc_secret)

                    ; #20540: <==closure== 11377 (pos)
                    (Bc_Pa_Pb_Pc_secret)

                    ; #20673: <==closure== 62149 (pos)
                    (Bc_Bb_Pa_Pc_secret)

                    ; #21067: <==closure== 62149 (pos)
                    (Bc_Pb_Ba_Pc_secret)

                    ; #21358: <==closure== 86175 (pos)
                    (Bb_Pc_Ba_Pc_secret)

                    ; #21646: <==closure== 12624 (pos)
                    (Pc_Bb_Pc_Pb_secret)

                    ; #21738: <==closure== 50674 (pos)
                    (Pb_Pc_Bb_Bc_secret)

                    ; #21875: <==commonly_known== 57281 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #22606: <==commonly_known== 58500 (pos)
                    (Bc_Pa_Bc_Bb_secret)

                    ; #22686: <==commonly_known== 83578 (pos)
                    (Ba_Bb_secret)

                    ; #23010: <==commonly_known== 27541 (pos)
                    (Ba_Pc_Bb_Bc_secret)

                    ; #23558: <==closure== 50674 (pos)
                    (Bb_Bc_Bb_Pc_secret)

                    ; #24237: <==closure== 10734 (pos)
                    (Pb_Ba_Bb_Pc_secret)

                    ; #24482: <==closure== 77056 (pos)
                    (Pb_Pa_Pc_Bb_secret)

                    ; #25347: <==closure== 11377 (pos)
                    (Pc_Pa_Bb_Pc_secret)

                    ; #25819: <==commonly_known== 19489 (pos)
                    (Ba_Bc_secret)

                    ; #25825: <==closure== 19489 (pos)
                    (Pc_secret)

                    ; #26451: <==closure== 67546 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #27041: <==closure== 29376 (pos)
                    (Bc_Ba_Bc_Pb_secret)

                    ; #27422: <==closure== 43285 (pos)
                    (Pa_Pb_Pa_Pb_secret)

                    ; #27541: <==commonly_known== 80308 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #27712: <==closure== 86175 (pos)
                    (Bb_Pc_Pa_Pc_secret)

                    ; #28228: <==commonly_known== 64857 (pos)
                    (Bc_Ba_Pb_Bc_secret)

                    ; #28507: <==closure== 43285 (pos)
                    (Ba_Bb_Ba_Pb_secret)

                    ; #28839: <==commonly_known== 32511 (neg)
                    (Pa_Bc_Ba_Bb_secret)

                    ; #29234: <==closure== 79565 (pos)
                    (Ba_Bb_Ba_Pc_secret)

                    ; #29280: <==closure== 35564 (pos)
                    (Pc_Pb_Pa_Pb_secret)

                    ; #29376: <==commonly_known== 16080 (pos)
                    (Bc_Ba_Bc_Bb_secret)

                    ; #29596: <==commonly_known== 10373 (pos)
                    (Ba_Bc_Ba_Bc_secret)

                    ; #30037: <==closure== 35564 (pos)
                    (Bc_Pb_Ba_Pb_secret)

                    ; #30506: <==commonly_known== 53583 (neg)
                    (Pb_Bc_Ba_Bc_secret)

                    ; #30518: <==closure== 50674 (pos)
                    (Bb_Bc_Pb_Pc_secret)

                    ; #30736: <==closure== 12624 (pos)
                    (Pc_Bb_Pc_Bb_secret)

                    ; #30810: <==closure== 29596 (pos)
                    (Ba_Pc_Ba_Pc_secret)

                    ; #30900: <==closure== 79565 (pos)
                    (Pa_Bb_Pa_Bc_secret)

                    ; #31027: <==commonly_known== 22686 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #31234: <==closure== 50674 (pos)
                    (Pb_Bc_Pb_Bc_secret)

                    ; #31385: <==closure== 43285 (pos)
                    (Pa_Pb_Ba_Bb_secret)

                    ; #31703: <==commonly_known== 31027 (pos)
                    (Bb_Bc_Ba_Bb_secret)

                    ; #31735: <==closure== 12624 (pos)
                    (Pc_Pb_Bc_Bb_secret)

                    ; #31778: <==closure== 10734 (pos)
                    (Pb_Ba_Pb_Bc_secret)

                    ; #31786: <==closure== 10734 (pos)
                    (Bb_Pa_Pb_Pc_secret)

                    ; #32110: <==closure== 10373 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #32118: <==commonly_known== 64995 (pos)
                    (Ba_Pb_Ba_Bc_secret)

                    ; #33289: <==closure== 31703 (pos)
                    (Pb_Bc_Pa_Pb_secret)

                    ; #33699: <==closure== 11377 (pos)
                    (Bc_Pa_Pb_Bc_secret)

                    ; #33720: <==closure== 31703 (pos)
                    (Pb_Bc_Ba_Pb_secret)

                    ; #33983: <==commonly_known== 53583 (neg)
                    (Pa_Bc_Ba_Bc_secret)

                    ; #34439: <==closure== 43285 (pos)
                    (Ba_Pb_Ba_Pb_secret)

                    ; #34472: <==closure== 43285 (pos)
                    (Ba_Bb_Pa_Pb_secret)

                    ; #34494: <==closure== 77056 (pos)
                    (Bb_Pa_Pc_Pb_secret)

                    ; #35203: <==closure== 62149 (pos)
                    (Pc_Pb_Pa_Pc_secret)

                    ; #35562: <==commonly_known== 20497 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #35564: <==commonly_known== 63218 (pos)
                    (Bc_Bb_Ba_Bb_secret)

                    ; #35715: <==closure== 76804 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #35829: <==closure== 67546 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #36060: <==closure== 11377 (pos)
                    (Bc_Ba_Pb_Pc_secret)

                    ; #36172: <==commonly_known== 18147 (pos)
                    (Ba_Bc_Pa_Bb_secret)

                    ; #37309: <==closure== 10373 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #37539: <==commonly_known== 80308 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #37636: <==closure== 62149 (pos)
                    (Bc_Pb_Pa_Pc_secret)

                    ; #37748: <==closure== 22686 (pos)
                    (Pa_Pb_secret)

                    ; #38261: <==closure== 63218 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #38640: <==closure== 35564 (pos)
                    (Bc_Bb_Pa_Pb_secret)

                    ; #39081: <==closure== 29596 (pos)
                    (Pa_Pc_Ba_Bc_secret)

                    ; #39855: <==closure== 68054 (pos)
                    (Pa_Pb_Pc_Bb_secret)

                    ; #40002: <==closure== 79565 (pos)
                    (Pa_Pb_Ba_Pc_secret)

                    ; #40887: <==commonly_known== 16282 (pos)
                    (Bc_Ba_Pc_Bb_secret)

                    ; #41088: <==commonly_known== 78758 (neg)
                    (Pc_Bb_Bc_Bb_secret)

                    ; #41545: <==closure== 79565 (pos)
                    (Pa_Pb_Pa_Pc_secret)

                    ; #41696: <==closure== 29596 (pos)
                    (Pa_Pc_Pa_Pc_secret)

                    ; #41792: <==closure== 11377 (pos)
                    (Pc_Pa_Pb_Bc_secret)

                    ; #42247: <==closure== 82801 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #42640: <==closure== 31027 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #42682: <==commonly_known== 11514 (neg)
                    (Pb_Ba_Bc_Bb_secret)

                    ; #42787: <==closure== 13394 (pos)
                    (Ba_Pc_Pb_Bc_secret)

                    ; #42882: <==commonly_known== 27541 (pos)
                    (Bb_Pc_Bb_Bc_secret)

                    ; #43121: <==closure== 13394 (pos)
                    (Ba_Pc_Bb_Pc_secret)

                    ; #43285: <==commonly_known== 63218 (pos)
                    (Ba_Bb_Ba_Bb_secret)

                    ; #43578: <==closure== 29376 (pos)
                    (Pc_Pa_Pc_Bb_secret)

                    ; #43642: <==commonly_known== 32511 (neg)
                    (Pb_Bc_Ba_Bb_secret)

                    ; #44173: <==closure== 10734 (pos)
                    (Pb_Pa_Pb_Pc_secret)

                    ; #44413: <==commonly_known== 53350 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #45078: <==closure== 29596 (pos)
                    (Ba_Pc_Pa_Bc_secret)

                    ; #45096: <==closure== 68054 (pos)
                    (Pa_Bb_Bc_Pb_secret)

                    ; #45401: <==closure== 70150 (pos)
                    (Pc_Pb_secret)

                    ; #45843: <==closure== 82801 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #45878: <==commonly_known== 35562 (pos)
                    (Ba_Pc_Ba_Bb_secret)

                    ; #46211: <==closure== 13394 (pos)
                    (Pa_Bc_Bb_Pc_secret)

                    ; #46438: <==closure== 29376 (pos)
                    (Bc_Pa_Pc_Pb_secret)

                    ; #46451: <==closure== 13394 (pos)
                    (Pa_Pc_Pb_Bc_secret)

                    ; #47239: <==closure== 83578 (pos)
                    (Pb_secret)

                    ; #47593: <==closure== 29596 (pos)
                    (Pa_Bc_Ba_Pc_secret)

                    ; #47756: <==closure== 13394 (pos)
                    (Ba_Bc_Bb_Pc_secret)

                    ; #48073: <==closure== 79565 (pos)
                    (Ba_Pb_Ba_Pc_secret)

                    ; #48246: <==closure== 13394 (pos)
                    (Pa_Pc_Pb_Pc_secret)

                    ; #48291: <==commonly_known== 89302 (pos)
                    (Ba_Bb_Pa_Bc_secret)

                    ; #48458: <==closure== 86175 (pos)
                    (Pb_Bc_Ba_Pc_secret)

                    ; #48611: <==commonly_known== 84523 (pos)
                    (Bc_Bb_Pc_Bb_secret)

                    ; #48658: <==closure== 10734 (pos)
                    (Pb_Pa_Pb_Bc_secret)

                    ; #48717: <==closure== 22686 (pos)
                    (Ba_Pb_secret)

                    ; #48741: <==closure== 31703 (pos)
                    (Pb_Pc_Pa_Pb_secret)

                    ; #48915: <==closure== 12624 (pos)
                    (Pc_Pb_Pc_Bb_secret)

                    ; #49462: <==closure== 35564 (pos)
                    (Pc_Pb_Ba_Bb_secret)

                    ; #49948: <==closure== 72536 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #50159: <==closure== 11734 (pos)
                    (Ba_Pc_Pa_Pb_secret)

                    ; #50213: <==closure== 11734 (pos)
                    (Pa_Pc_Ba_Pb_secret)

                    ; #50476: <==closure== 10734 (pos)
                    (Bb_Ba_Bb_Pc_secret)

                    ; #50555: <==closure== 13394 (pos)
                    (Ba_Pc_Pb_Pc_secret)

                    ; #50674: <==commonly_known== 67546 (pos)
                    (Bb_Bc_Bb_Bc_secret)

                    ; #51496: <==closure== 86175 (pos)
                    (Bb_Bc_Ba_Pc_secret)

                    ; #51851: <==closure== 11734 (pos)
                    (Pa_Bc_Pa_Pb_secret)

                    ; #51956: <==closure== 72536 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #52018: <==closure== 68054 (pos)
                    (Ba_Bb_Pc_Pb_secret)

                    ; #52223: <==closure== 68054 (pos)
                    (Ba_Pb_Pc_Pb_secret)

                    ; #52224: <==closure== 10734 (pos)
                    (Bb_Pa_Bb_Pc_secret)

                    ; #52358: <==closure== 29596 (pos)
                    (Pa_Bc_Pa_Bc_secret)

                    ; #52500: <==closure== 31703 (pos)
                    (Bb_Pc_Ba_Pb_secret)

                    ; #52962: <==commonly_known== 64995 (pos)
                    (Bc_Pb_Ba_Bc_secret)

                    ; #53350: <==commonly_known== 25360 (neg)
                    (Pa_Bb_secret)

                    ; #53645: <==commonly_known== 35562 (pos)
                    (Bb_Pc_Ba_Bb_secret)

                    ; #53775: <==closure== 31703 (pos)
                    (Pb_Pc_Ba_Bb_secret)

                    ; #54023: <==commonly_known== 58500 (pos)
                    (Bb_Pa_Bc_Bb_secret)

                    ; #54650: <==closure== 10373 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #54759: <==commonly_known== 65579 (pos)
                    (Ba_Pc_Ba_Bc_secret)

                    ; #54842: <==closure== 11734 (pos)
                    (Pa_Pc_Pa_Pb_secret)

                    ; #55050: <==closure== 79565 (pos)
                    (Ba_Pb_Pa_Pc_secret)

                    ; #55083: <==commonly_known== 78610 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #55175: <==closure== 29376 (pos)
                    (Bc_Pa_Bc_Pb_secret)

                    ; #55441: <==commonly_known== 44413 (pos)
                    (Ba_Bb_Pa_Bb_secret)

                    ; #55525: <==commonly_known== 63669 (neg)
                    (Pc_Bb_Ba_Bc_secret)

                    ; #55557: <==commonly_known== 16282 (pos)
                    (Bb_Ba_Pc_Bb_secret)

                    ; #55639: <==closure== 29376 (pos)
                    (Pc_Ba_Pc_Pb_secret)

                    ; #55818: <==closure== 29376 (pos)
                    (Pc_Ba_Pc_Bb_secret)

                    ; #55958: <==closure== 35564 (pos)
                    (Bc_Pb_Pa_Bb_secret)

                    ; #56045: <==closure== 11734 (pos)
                    (Pa_Bc_Ba_Pb_secret)

                    ; #56274: <==commonly_known== 21875 (pos)
                    (Bb_Bc_Pa_Bc_secret)

                    ; #56440: <==closure== 68054 (pos)
                    (Ba_Pb_Bc_Pb_secret)

                    ; #57078: <==closure== 25819 (pos)
                    (Pa_Pc_secret)

                    ; #57273: <==closure== 62149 (pos)
                    (Pc_Bb_Pa_Pc_secret)

                    ; #57281: <==commonly_known== 75512 (neg)
                    (Pa_Bc_secret)

                    ; #57625: <==closure== 63218 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #57716: <==closure== 10734 (pos)
                    (Pb_Pa_Bb_Bc_secret)

                    ; #58192: <==commonly_known== 82766 (pos)
                    (Ba_Pb_Ba_Bb_secret)

                    ; #58428: <==closure== 10734 (pos)
                    (Bb_Ba_Pb_Pc_secret)

                    ; #58500: <==commonly_known== 84652 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #58560: <==closure== 77056 (pos)
                    (Pb_Pa_Bc_Pb_secret)

                    ; #58832: <==closure== 31027 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #58993: <==closure== 31027 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #59025: <==closure== 13394 (pos)
                    (Pa_Bc_Pb_Pc_secret)

                    ; #59828: <==commonly_known== 87286 (pos)
                    (Ba_Pb_Bc_Bb_secret)

                    ; #59909: <==closure== 13394 (pos)
                    (Pa_Bc_Pb_Bc_secret)

                    ; #60034: <==closure== 13394 (pos)
                    (Ba_Bc_Pb_Pc_secret)

                    ; #60053: <==commonly_known== 11514 (neg)
                    (Pc_Ba_Bc_Bb_secret)

                    ; #60160: <==closure== 62149 (pos)
                    (Pc_Bb_Pa_Bc_secret)

                    ; #61079: <==closure== 16080 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #61364: <==closure== 50674 (pos)
                    (Pb_Bc_Pb_Pc_secret)

                    ; #61688: <==closure== 67546 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #61757: <==closure== 31703 (pos)
                    (Bb_Pc_Pa_Bb_secret)

                    ; #62093: <==closure== 11377 (pos)
                    (Pc_Ba_Pb_Bc_secret)

                    ; #62149: <==commonly_known== 82801 (pos)
                    (Bc_Bb_Ba_Bc_secret)

                    ; #62185: <==commonly_known== 44413 (pos)
                    (Bc_Bb_Pa_Bb_secret)

                    ; #62865: <==closure== 12624 (pos)
                    (Bc_Bb_Pc_Pb_secret)

                    ; #63036: <==closure== 50674 (pos)
                    (Pb_Bc_Bb_Pc_secret)

                    ; #63102: <==closure== 12624 (pos)
                    (Pc_Pb_Bc_Pb_secret)

                    ; #63218: <==commonly_known== 22686 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #63639: <==closure== 72536 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #63726: <==closure== 10373 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #63736: <==closure== 68054 (pos)
                    (Pa_Pb_Pc_Pb_secret)

                    ; #63743: <==closure== 86175 (pos)
                    (Bb_Pc_Pa_Bc_secret)

                    ; #64101: <==closure== 35564 (pos)
                    (Pc_Pb_Ba_Pb_secret)

                    ; #64478: <==closure== 31027 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #64565: <==closure== 35564 (pos)
                    (Pc_Bb_Pa_Pb_secret)

                    ; #64730: <==closure== 11377 (pos)
                    (Pc_Ba_Pb_Pc_secret)

                    ; #64763: <==commonly_known== 78758 (neg)
                    (Pa_Bb_Bc_Bb_secret)

                    ; #64857: <==commonly_known== 78610 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #64995: <==commonly_known== 12294 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #64996: <==closure== 43285 (pos)
                    (Pa_Bb_Pa_Pb_secret)

                    ; #65094: <==closure== 29376 (pos)
                    (Pc_Pa_Bc_Bb_secret)

                    ; #65191: <==closure== 35564 (pos)
                    (Pc_Bb_Ba_Pb_secret)

                    ; #65200: <==commonly_known== 85775 (neg)
                    (Pa_Bb_Ba_Bb_secret)

                    ; #65523: <==closure== 12624 (pos)
                    (Bc_Pb_Bc_Pb_secret)

                    ; #65579: <==commonly_known== 12294 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #65580: <==closure== 50674 (pos)
                    (Bb_Pc_Bb_Pc_secret)

                    ; #65584: <==closure== 68054 (pos)
                    (Pa_Pb_Bc_Pb_secret)

                    ; #65747: <==closure== 86175 (pos)
                    (Pb_Pc_Ba_Bc_secret)

                    ; #67271: <==closure== 63218 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #67546: <==commonly_known== 82291 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #67916: <==closure== 12624 (pos)
                    (Bc_Bb_Bc_Pb_secret)

                    ; #67960: <==closure== 31703 (pos)
                    (Bb_Bc_Pa_Pb_secret)

                    ; #68054: <==commonly_known== 72536 (pos)
                    (Ba_Bb_Bc_Bb_secret)

                    ; #68206: <==closure== 29596 (pos)
                    (Pa_Pc_Pa_Bc_secret)

                    ; #68486: <==closure== 79565 (pos)
                    (Pa_Pb_Pa_Bc_secret)

                    ; #68540: <==closure== 50674 (pos)
                    (Bb_Pc_Pb_Bc_secret)

                    ; #68560: <==closure== 29596 (pos)
                    (Ba_Pc_Pa_Pc_secret)

                    ; #68751: <==closure== 31703 (pos)
                    (Bb_Pc_Pa_Pb_secret)

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

                    ; #71651: <==closure== 13394 (pos)
                    (Pa_Pc_Bb_Bc_secret)

                    ; #71847: <==closure== 16080 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #72536: <==commonly_known== 70150 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #72883: <==closure== 12624 (pos)
                    (Pc_Pb_Pc_Pb_secret)

                    ; #72896: <==commonly_known== 55083 (pos)
                    (Ba_Bc_Pb_Bc_secret)

                    ; #73510: <==closure== 50674 (pos)
                    (Bb_Pc_Pb_Pc_secret)

                    ; #73645: <==closure== 82801 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #73891: <==closure== 77056 (pos)
                    (Pb_Ba_Bc_Pb_secret)

                    ; #73909: <==closure== 76804 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #74193: <==closure== 43285 (pos)
                    (Pa_Bb_Ba_Pb_secret)

                    ; #74352: <==closure== 11377 (pos)
                    (Pc_Ba_Bb_Pc_secret)

                    ; #74436: <==closure== 16080 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #74551: <==closure== 86175 (pos)
                    (Pb_Pc_Pa_Pc_secret)

                    ; #74664: <==closure== 77056 (pos)
                    (Pb_Pa_Pc_Pb_secret)

                    ; #75586: <==closure== 11377 (pos)
                    (Bc_Pa_Bb_Pc_secret)

                    ; #75605: <==closure== 35564 (pos)
                    (Pc_Pb_Pa_Bb_secret)

                    ; #75626: <==closure== 29376 (pos)
                    (Bc_Pa_Pc_Bb_secret)

                    ; #75816: <==closure== 25819 (pos)
                    (Ba_Pc_secret)

                    ; #76039: <==closure== 68054 (pos)
                    (Pa_Bb_Pc_Bb_secret)

                    ; #76217: <==closure== 29596 (pos)
                    (Pa_Bc_Pa_Pc_secret)

                    ; #76683: <==closure== 79565 (pos)
                    (Ba_Pb_Pa_Bc_secret)

                    ; #76770: <==closure== 62149 (pos)
                    (Pc_Pb_Ba_Pc_secret)

                    ; #76804: <==commonly_known== 82291 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #76959: <==commonly_known== 55083 (pos)
                    (Bb_Bc_Pb_Bc_secret)

                    ; #77056: <==commonly_known== 16080 (pos)
                    (Bb_Ba_Bc_Bb_secret)

                    ; #77502: <==closure== 16080 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #77626: <==closure== 31703 (pos)
                    (Pb_Pc_Ba_Pb_secret)

                    ; #78208: <==closure== 12624 (pos)
                    (Pc_Bb_Bc_Pb_secret)

                    ; #78610: <==commonly_known== 75512 (neg)
                    (Pb_Bc_secret)

                    ; #78840: <==closure== 29376 (pos)
                    (Pc_Ba_Bc_Pb_secret)

                    ; #79565: <==commonly_known== 82801 (pos)
                    (Ba_Bb_Ba_Bc_secret)

                    ; #79576: <==closure== 35564 (pos)
                    (Bc_Pb_Pa_Pb_secret)

                    ; #79636: <==closure== 11377 (pos)
                    (Pc_Pa_Pb_Pc_secret)

                    ; #79735: <==closure== 29376 (pos)
                    (Pc_Pa_Bc_Pb_secret)

                    ; #80396: <==closure== 50674 (pos)
                    (Pb_Pc_Bb_Pc_secret)

                    ; #80775: <==commonly_known== 25360 (neg)
                    (Pc_Bb_secret)

                    ; #81053: <==commonly_known== 23121 (neg)
                    (Pa_Bc_Bb_Bc_secret)

                    ; #81225: <==closure== 68054 (pos)
                    (Ba_Pb_Pc_Bb_secret)

                    ; #81850: <==commonly_known== 84523 (pos)
                    (Ba_Bb_Pc_Bb_secret)

                    ; #81872: <==commonly_known== 87286 (pos)
                    (Bc_Pb_Bc_Bb_secret)

                    ; #81967: <==closure== 68054 (pos)
                    (Pa_Bb_Pc_Pb_secret)

                    ; #81978: <==closure== 86175 (pos)
                    (Pb_Bc_Pa_Bc_secret)

                    ; #82291: <==commonly_known== 19489 (pos)
                    (Bb_Bc_secret)

                    ; #82304: <==closure== 86175 (pos)
                    (Pb_Bc_Pa_Pc_secret)

                    ; #82355: <==commonly_known== 21875 (pos)
                    (Ba_Bc_Pa_Bc_secret)

                    ; #82588: <==closure== 43285 (pos)
                    (Pa_Pb_Ba_Pb_secret)

                    ; #82766: <==commonly_known== 20497 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #82801: <==commonly_known== 25819 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #82840: <==closure== 43285 (pos)
                    (Ba_Pb_Pa_Bb_secret)

                    ; #82981: <==closure== 12624 (pos)
                    (Bc_Pb_Pc_Bb_secret)

                    ; #83153: <==commonly_known== 65579 (pos)
                    (Bb_Pc_Ba_Bc_secret)

                    ; #83578: origin
                    (Bb_secret)

                    ; #83827: <==commonly_known== 37539 (pos)
                    (Bc_Pa_Bb_Bc_secret)

                    ; #83986: <==closure== 62149 (pos)
                    (Pc_Pb_Ba_Bc_secret)

                    ; #84229: <==closure== 82801 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #84503: <==closure== 62149 (pos)
                    (Pc_Bb_Ba_Pc_secret)

                    ; #84523: <==commonly_known== 80775 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #85468: <==closure== 77056 (pos)
                    (Pb_Ba_Pc_Bb_secret)

                    ; #85637: <==closure== 77056 (pos)
                    (Bb_Ba_Pc_Pb_secret)

                    ; #85781: <==closure== 29596 (pos)
                    (Pa_Pc_Ba_Pc_secret)

                    ; #86159: <==closure== 77056 (pos)
                    (Bb_Ba_Bc_Pb_secret)

                    ; #86175: <==commonly_known== 10373 (pos)
                    (Bb_Bc_Ba_Bc_secret)

                    ; #86235: <==closure== 77056 (pos)
                    (Pb_Ba_Pc_Pb_secret)

                    ; #87059: <==closure== 62149 (pos)
                    (Bc_Bb_Ba_Pc_secret)

                    ; #87286: <==commonly_known== 84652 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #87617: <==closure== 79565 (pos)
                    (Pa_Bb_Ba_Pc_secret)

                    ; #87633: <==closure== 11377 (pos)
                    (Pc_Pa_Bb_Bc_secret)

                    ; #87816: <==closure== 29376 (pos)
                    (Bc_Ba_Pc_Pb_secret)

                    ; #89302: <==commonly_known== 57281 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #89943: <==commonly_known== 56698 (neg)
                    (Pc_Ba_Bb_Bc_secret)

                    ; #90110: <==closure== 11734 (pos)
                    (Ba_Bc_Ba_Pb_secret)

                    ; #90129: <==closure== 10734 (pos)
                    (Bb_Pa_Pb_Bc_secret)

                    ; #90518: <==closure== 31703 (pos)
                    (Bb_Bc_Ba_Pb_secret)

                    ; #90642: <==commonly_known== 63669 (neg)
                    (Pa_Bb_Ba_Bc_secret)

                    ; #91431: <==closure== 67546 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #91807: <==closure== 35564 (pos)
                    (Bc_Bb_Ba_Pb_secret)

                    ; #91975: <==closure== 62149 (pos)
                    (Pc_Pb_Pa_Bc_secret)

                    ; #92148: <==closure== 12624 (pos)
                    (Bc_Pb_Pc_Pb_secret)

                    ; #92575: <==closure== 29596 (pos)
                    (Ba_Bc_Pa_Pc_secret)

                    ; #94204: <==commonly_known== 64857 (pos)
                    (Bb_Ba_Pb_Bc_secret)

                    ; #98606: <==closure== 11734 (pos)
                    (Pa_Pc_Pa_Bb_secret)

                    ; #10263: <==negation-removal== 58500 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #10652: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Ba_Pb_not_secret))

                    ; #10721: <==unclosure== 64734 (neg)
                    (not (Pa_Bb_Ba_Pc_not_secret))

                    ; #11040: <==unclosure== 86398 (neg)
                    (not (Pb_Bc_Pa_Bb_not_secret))

                    ; #11069: <==negation-removal== 64763 (pos)
                    (not (Ba_Pb_Pc_Pb_not_secret))

                    ; #11295: <==unclosure== 81803 (neg)
                    (not (Pa_Bc_Pa_Bc_not_secret))

                    ; #11382: <==unclosure== 40295 (neg)
                    (not (Bb_Pa_Bc_Pb_not_secret))

                    ; #11514: <==negation-removal== 16080 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #11629: <==unclosure== 15812 (neg)
                    (not (Pa_Pb_Bc_Bb_not_secret))

                    ; #11945: <==unclosure== 15812 (neg)
                    (not (Pa_Bb_Bc_Pb_not_secret))

                    ; #12110: <==negation-removal== 59828 (pos)
                    (not (Pa_Bb_Pc_Pb_not_secret))

                    ; #12128: <==unclosure== 15812 (neg)
                    (not (Ba_Pb_Bc_Pb_not_secret))

                    ; #12145: <==unclosure== 81248 (neg)
                    (not (Pb_Pa_Bb_Bc_not_secret))

                    ; #12190: <==negation-removal== 76959 (pos)
                    (not (Pb_Pc_Bb_Pc_not_secret))

                    ; #12293: <==unclosure== 12610 (neg)
                    (not (Bc_Pb_Ba_Pb_not_secret))

                    ; #12294: <==negation-removal== 25819 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #12305: <==negation-removal== 27541 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #12459: <==unclosure== 64734 (neg)
                    (not (Ba_Pb_Ba_Pc_not_secret))

                    ; #12537: <==negation-removal== 11734 (pos)
                    (not (Pa_Pc_Pa_Pb_not_secret))

                    ; #12610: <==negation-removal== 35564 (pos)
                    (not (Pc_Pb_Pa_Pb_not_secret))

                    ; #12711: <==unclosure== 88288 (neg)
                    (not (Bc_Pa_Bb_Pc_not_secret))

                    ; #12997: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Ba_Bc_not_secret))

                    ; #13087: <==unclosure== 23121 (neg)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #13201: <==unclosure== 76037 (neg)
                    (not (Bb_Pc_Pb_Bc_not_secret))

                    ; #13700: <==negation-removal== 94204 (pos)
                    (not (Pb_Pa_Bb_Pc_not_secret))

                    ; #14169: <==negation-removal== 64995 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #14260: <==unclosure== 39643 (neg)
                    (not (Pb_Pc_Pa_Bc_not_secret))

                    ; #14389: <==unclosure== 81803 (neg)
                    (not (Pa_Pc_Pa_Bc_not_secret))

                    ; #14754: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Bc_Pb_not_secret))

                    ; #15132: <==unclosure== 81803 (neg)
                    (not (Ba_Pc_Ba_Pc_not_secret))

                    ; #15433: <==unclosure== 32511 (neg)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #15683: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Ba_Pb_not_secret))

                    ; #15812: <==negation-removal== 68054 (pos)
                    (not (Pa_Pb_Pc_Pb_not_secret))

                    ; #15897: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Ba_Bb_not_secret))

                    ; #15919: <==unclosure== 15812 (neg)
                    (not (Pa_Pb_Pc_Bb_not_secret))

                    ; #16354: <==unclosure== 64734 (neg)
                    (not (Pa_Bb_Pa_Bc_not_secret))

                    ; #17749: <==unclosure== 12294 (neg)
                    (not (Ba_Bc_not_secret))

                    ; #17792: <==unclosure== 81803 (neg)
                    (not (Ba_Pc_Pa_Bc_not_secret))

                    ; #17826: <==unclosure== 80308 (neg)
                    (not (Pb_Bc_not_secret))

                    ; #17926: <==unclosure== 12537 (neg)
                    (not (Ba_Pc_Ba_Pb_not_secret))

                    ; #18374: <==unclosure== 40295 (neg)
                    (not (Pb_Ba_Bc_Pb_not_secret))

                    ; #18406: <==negation-removal== 90642 (pos)
                    (not (Ba_Pb_Pa_Pc_not_secret))

                    ; #18509: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #18737: <==unclosure== 40295 (neg)
                    (not (Pb_Pa_Bc_Bb_not_secret))

                    ; #19603: <==unclosure== 56698 (neg)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #20396: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Ba_Bb_not_secret))

                    ; #20455: <==negation-removal== 89943 (pos)
                    (not (Bc_Pa_Pb_Pc_not_secret))

                    ; #20497: <==negation-removal== 22686 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #21209: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Ba_Bb_not_secret))

                    ; #21598: <==negation-removal== 83153 (pos)
                    (not (Pb_Bc_Pa_Pc_not_secret))

                    ; #21804: <==unclosure== 20497 (neg)
                    (not (Pa_Bb_not_secret))

                    ; #21877: <==negation-removal== 48611 (pos)
                    (not (Pc_Pb_Bc_Pb_not_secret))

                    ; #22437: <==unclosure== 23121 (neg)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #23121: <==negation-removal== 67546 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #23882: <==unclosure== 72520 (neg)
                    (not (Ba_Pb_Pa_Bb_not_secret))

                    ; #24451: <==negation-removal== 12666 (pos)
                    (not (Bb_Pc_Pb_Pc_not_secret))

                    ; #24510: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Pb_Bc_not_secret))

                    ; #24837: <==unclosure== 91487 (neg)
                    (not (Pc_Bb_Bc_Bb_not_secret))

                    ; #24989: <==negation-removal== 32118 (pos)
                    (not (Pa_Bb_Pa_Pc_not_secret))

                    ; #25082: <==unclosure== 63669 (neg)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #25360: <==negation-removal== 83578 (pos)
                    (not (Pb_not_secret))

                    ; #25628: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #25780: <==unclosure== 53583 (neg)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #26110: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Pa_Pb_not_secret))

                    ; #26228: <==unclosure== 81248 (neg)
                    (not (Pb_Ba_Bb_Pc_not_secret))

                    ; #26255: <==unclosure== 88288 (neg)
                    (not (Pc_Ba_Pb_Bc_not_secret))

                    ; #26653: <==negation-removal== 11558 (pos)
                    (not (Bb_Pa_Pb_Pc_not_secret))

                    ; #26776: <==unclosure== 64734 (neg)
                    (not (Ba_Pb_Ba_Bc_not_secret))

                    ; #26873: <==unclosure== 39557 (neg)
                    (not (Ba_Pc_Pb_Bc_not_secret))

                    ; #26937: <==negation-removal== 87286 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #27176: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #27486: <==unclosure== 64734 (neg)
                    (not (Pa_Pb_Pa_Bc_not_secret))

                    ; #28599: <==unclosure== 72520 (neg)
                    (not (Ba_Pb_Ba_Pb_not_secret))

                    ; #29479: <==unclosure== 85775 (neg)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #29565: <==negation-removal== 60053 (pos)
                    (not (Bc_Pa_Pc_Pb_not_secret))

                    ; #30104: <==unclosure== 86398 (neg)
                    (not (Bb_Pc_Ba_Pb_not_secret))

                    ; #30543: <==unclosure== 39643 (neg)
                    (not (Bb_Pc_Ba_Bc_not_secret))

                    ; #31222: <==unclosure== 40295 (neg)
                    (not (Bb_Pa_Pc_Bb_not_secret))

                    ; #31713: <==unclosure== 15812 (neg)
                    (not (Pa_Bb_Pc_Bb_not_secret))

                    ; #32300: <==unclosure== 12610 (neg)
                    (not (Pc_Bb_Ba_Pb_not_secret))

                    ; #32309: <==unclosure== 12537 (neg)
                    (not (Ba_Pc_Ba_Bb_not_secret))

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

                    ; #34230: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Pa_Bb_not_secret))

                    ; #34249: <==negation-removal== 80775 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #34392: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Pc_Bb_not_secret))

                    ; #34413: <==unclosure== 72520 (neg)
                    (not (Pa_Bb_Ba_Bb_not_secret))

                    ; #34479: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Bb_Bc_not_secret))

                    ; #34901: <==unclosure== 12610 (neg)
                    (not (Pc_Bb_Pa_Bb_not_secret))

                    ; #35128: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Pa_Pb_not_secret))

                    ; #35391: <==unclosure== 39643 (neg)
                    (not (Bb_Pc_Pa_Bc_not_secret))

                    ; #36221: <==unclosure== 81248 (neg)
                    (not (Pb_Ba_Bb_Bc_not_secret))

                    ; #36803: <==negation-removal== 81872 (pos)
                    (not (Pc_Bb_Pc_Pb_not_secret))

                    ; #37089: <==negation-removal== 57281 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #37633: <==negation-removal== 55525 (pos)
                    (not (Bc_Pb_Pa_Pc_not_secret))

                    ; #37737: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Pb_Pc_not_secret))

                    ; #37869: <==unclosure== 12610 (neg)
                    (not (Pc_Bb_Ba_Bb_not_secret))

                    ; #37964: <==unclosure== 79309 (neg)
                    (not (Bc_Pb_Pa_Bc_not_secret))

                    ; #38285: <==negation-removal== 43642 (pos)
                    (not (Bb_Pc_Pa_Pb_not_secret))

                    ; #38328: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Bc_Bb_not_secret))

                    ; #38330: <==unclosure== 39557 (neg)
                    (not (Pa_Pc_Pb_Bc_not_secret))

                    ; #38335: <==negation-removal== 35562 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #38351: <==negation-removal== 72896 (pos)
                    (not (Pa_Pc_Bb_Pc_not_secret))

                    ; #38549: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Ba_Pc_not_secret))

                    ; #38750: <==unclosure== 39557 (neg)
                    (not (Pa_Bc_Bb_Pc_not_secret))

                    ; #38752: <==unclosure== 81803 (neg)
                    (not (Pa_Bc_Ba_Pc_not_secret))

                    ; #38781: <==unclosure== 76037 (neg)
                    (not (Pb_Pc_Pb_Bc_not_secret))

                    ; #38825: <==unclosure== 39557 (neg)
                    (not (Pa_Bc_Bb_Bc_not_secret))

                    ; #38947: <==unclosure== 91487 (neg)
                    (not (Pc_Bb_Bc_Pb_not_secret))

                    ; #38991: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Pc_Bb_not_secret))

                    ; #39257: <==negation-removal== 21875 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #39329: <==negation-removal== 62185 (pos)
                    (not (Pc_Pb_Ba_Pb_not_secret))

                    ; #39512: <==unclosure== 39557 (neg)
                    (not (Ba_Pc_Bb_Bc_not_secret))

                    ; #39557: <==negation-removal== 13394 (pos)
                    (not (Pa_Pc_Pb_Pc_not_secret))

                    ; #39643: <==negation-removal== 86175 (pos)
                    (not (Pb_Pc_Pa_Pc_not_secret))

                    ; #39748: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #40020: <==negation-removal== 45878 (pos)
                    (not (Pa_Bc_Pa_Pb_not_secret))

                    ; #40253: <==negation-removal== 89302 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #40295: <==negation-removal== 77056 (pos)
                    (not (Pb_Pa_Pc_Pb_not_secret))

                    ; #40805: <==negation-removal== 64857 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #41113: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #41185: <==negation-removal== 81850 (pos)
                    (not (Pa_Pb_Bc_Pb_not_secret))

                    ; #41433: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Ba_Bb_not_secret))

                    ; #41520: <==unclosure== 39557 (neg)
                    (not (Ba_Pc_Bb_Pc_not_secret))

                    ; #41520: <==negation-removal== 22606 (pos)
                    (not (Pc_Ba_Pc_Pb_not_secret))

                    ; #41562: <==unclosure== 78758 (neg)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #42277: <==unclosure== 39557 (neg)
                    (not (Pa_Pc_Bb_Bc_not_secret))

                    ; #42334: <==unclosure== 90366 (neg)
                    (not (Pc_Ba_Pc_Bb_not_secret))

                    ; #42651: <==negation-removal== 55083 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #42955: <==negation-removal== 53645 (pos)
                    (not (Pb_Bc_Pa_Pb_not_secret))

                    ; #43098: <==unclosure== 81248 (neg)
                    (not (Pb_Ba_Pb_Bc_not_secret))

                    ; #43175: <==unclosure== 12610 (neg)
                    (not (Bc_Pb_Pa_Bb_not_secret))

                    ; #43521: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Bb_Bc_not_secret))

                    ; #43765: <==unclosure== 84652 (neg)
                    (not (Bc_Bb_not_secret))

                    ; #43895: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Ba_Pb_not_secret))

                    ; #44050: <==unclosure== 88288 (neg)
                    (not (Bc_Pa_Bb_Bc_not_secret))

                    ; #44212: <==negation-removal== 48291 (pos)
                    (not (Pa_Pb_Ba_Pc_not_secret))

                    ; #44762: <==unclosure== 86398 (neg)
                    (not (Pb_Pc_Ba_Bb_not_secret))

                    ; #44909: <==unclosure== 79309 (neg)
                    (not (Pc_Bb_Pa_Bc_not_secret))

                    ; #46342: <==negation-removal== 14402 (pos)
                    (not (Pb_Ba_Pb_Pc_not_secret))

                    ; #46483: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Ba_Pc_not_secret))

                    ; #47113: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Ba_Bc_not_secret))

                    ; #47361: <==unclosure== 72520 (neg)
                    (not (Pa_Bb_Ba_Pb_not_secret))

                    ; #47476: <==negation-removal== 56274 (pos)
                    (not (Pb_Pc_Ba_Pc_not_secret))

                    ; #47796: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Pb_Pc_not_secret))

                    ; #47832: <==negation-removal== 33983 (pos)
                    (not (Ba_Pc_Pa_Pc_not_secret))

                    ; #47945: <==unclosure== 76037 (neg)
                    (not (Bb_Pc_Bb_Pc_not_secret))

                    ; #48024: <==unclosure== 90366 (neg)
                    (not (Bc_Pa_Bc_Pb_not_secret))

                    ; #48413: <==negation-removal== 52962 (pos)
                    (not (Pc_Bb_Pa_Pc_not_secret))

                    ; #48893: <==unclosure== 40295 (neg)
                    (not (Bb_Pa_Bc_Bb_not_secret))

                    ; #49056: <==unclosure== 79309 (neg)
                    (not (Pc_Pb_Ba_Bc_not_secret))

                    ; #49066: <==unclosure== 91487 (neg)
                    (not (Pc_Pb_Pc_Bb_not_secret))

                    ; #50045: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Pa_Pc_not_secret))

                    ; #50073: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Pc_Pb_not_secret))

                    ; #50190: <==unclosure== 63669 (neg)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #50296: <==unclosure== 39643 (neg)
                    (not (Pb_Pc_Ba_Bc_not_secret))

                    ; #50331: <==unclosure== 12610 (neg)
                    (not (Pc_Pb_Ba_Bb_not_secret))

                    ; #50351: <==unclosure== 86398 (neg)
                    (not (Bb_Pc_Ba_Bb_not_secret))

                    ; #50412: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Bc_Pb_not_secret))

                    ; #50584: <==unclosure== 40295 (neg)
                    (not (Pb_Ba_Pc_Bb_not_secret))

                    ; #51665: <==unclosure== 91487 (neg)
                    (not (Pc_Pb_Bc_Bb_not_secret))

                    ; #51671: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Bb_Bc_not_secret))

                    ; #52183: <==unclosure== 39643 (neg)
                    (not (Pb_Bc_Ba_Pc_not_secret))

                    ; #52226: <==unclosure== 63669 (neg)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #52730: <==unclosure== 91487 (neg)
                    (not (Bc_Pb_Bc_Pb_not_secret))

                    ; #52839: <==unclosure== 39557 (neg)
                    (not (Pa_Bc_Pb_Bc_not_secret))

                    ; #53266: <==negation-removal== 58192 (pos)
                    (not (Pa_Bb_Pa_Pb_not_secret))

                    ; #53583: <==negation-removal== 10373 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #53895: <==unclosure== 90366 (neg)
                    (not (Pc_Ba_Bc_Pb_not_secret))

                    ; #54192: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Pa_Bc_not_secret))

                    ; #54197: <==negation-removal== 18147 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #54436: <==unclosure== 12537 (neg)
                    (not (Ba_Pc_Pa_Bb_not_secret))

                    ; #54679: <==negation-removal== 20147 (pos)
                    (not (Pc_Pb_Ba_Pc_not_secret))

                    ; #54966: <==unclosure== 23121 (neg)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #55031: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Ba_Pc_not_secret))

                    ; #55352: <==negation-removal== 82355 (pos)
                    (not (Pa_Pc_Ba_Pc_not_secret))

                    ; #55740: <==unclosure== 85775 (neg)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #56205: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Pc_Pb_not_secret))

                    ; #56214: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #56397: <==unclosure== 72520 (neg)
                    (not (Pa_Pb_Ba_Bb_not_secret))

                    ; #56698: <==negation-removal== 76804 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #56907: <==unclosure== 12537 (neg)
                    (not (Pa_Bc_Ba_Pb_not_secret))

                    ; #56961: <==negation-removal== 23010 (pos)
                    (not (Pa_Bc_Pb_Pc_not_secret))

                    ; #57383: <==negation-removal== 65200 (pos)
                    (not (Ba_Pb_Pa_Pb_not_secret))

                    ; #57780: <==unclosure== 81803 (neg)
                    (not (Ba_Pc_Ba_Bc_not_secret))

                    ; #57806: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #57966: <==unclosure== 88288 (neg)
                    (not (Bc_Pa_Pb_Bc_not_secret))

                    ; #58678: <==unclosure== 64734 (neg)
                    (not (Pa_Bb_Ba_Bc_not_secret))

                    ; #58775: <==unclosure== 88288 (neg)
                    (not (Pc_Pa_Bb_Bc_not_secret))

                    ; #59686: <==unclosure== 12537 (neg)
                    (not (Pa_Bc_Ba_Bb_not_secret))

                    ; #60355: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Pa_Pc_not_secret))

                    ; #60365: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Bc_Pb_not_secret))

                    ; #60441: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Pc_Bb_not_secret))

                    ; #60515: <==negation-removal== 17727 (pos)
                    (not (Pc_Bb_Pa_Pb_not_secret))

                    ; #60741: <==unclosure== 79309 (neg)
                    (not (Bc_Pb_Ba_Bc_not_secret))

                    ; #61154: <==negation-removal== 78610 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #61289: <==unclosure== 90366 (neg)
                    (not (Pc_Pa_Bc_Bb_not_secret))

                    ; #61462: <==unclosure== 40295 (neg)
                    (not (Pb_Pa_Pc_Bb_not_secret))

                    ; #61481: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Pb_Pc_not_secret))

                    ; #61872: <==unclosure== 72520 (neg)
                    (not (Pa_Pb_Pa_Bb_not_secret))

                    ; #62391: <==unclosure== 76037 (neg)
                    (not (Pb_Pc_Bb_Bc_not_secret))

                    ; #62591: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Bb_Bc_not_secret))

                    ; #62834: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Pb_Bc_not_secret))

                    ; #63173: <==negation-removal== 44413 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #63320: <==unclosure== 64734 (neg)
                    (not (Pa_Pb_Ba_Bc_not_secret))

                    ; #63518: <==negation-removal== 16830 (pos)
                    (not (Pb_Pc_Ba_Pb_not_secret))

                    ; #63527: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Pc_Pb_not_secret))

                    ; #63529: <==negation-removal== 55441 (pos)
                    (not (Pa_Pb_Ba_Pb_not_secret))

                    ; #63632: <==unclosure== 88288 (neg)
                    (not (Pc_Pa_Pb_Bc_not_secret))

                    ; #63648: <==unclosure== 91487 (neg)
                    (not (Bc_Pb_Bc_Bb_not_secret))

                    ; #63669: <==negation-removal== 82801 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #64110: <==unclosure== 72520 (neg)
                    (not (Pa_Bb_Pa_Bb_not_secret))

                    ; #64169: <==negation-removal== 42882 (pos)
                    (not (Pb_Bc_Pb_Pc_not_secret))

                    ; #64194: <==unclosure== 11514 (neg)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #64456: <==unclosure== 88288 (neg)
                    (not (Pc_Ba_Bb_Bc_not_secret))

                    ; #64734: <==negation-removal== 79565 (pos)
                    (not (Pa_Pb_Pa_Pc_not_secret))

                    ; #64816: <==unclosure== 86398 (neg)
                    (not (Bb_Pc_Pa_Bb_not_secret))

                    ; #64824: <==unclosure== 32511 (neg)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #65074: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Ba_Bc_not_secret))

                    ; #65273: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Bb_Pc_not_secret))

                    ; #66071: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Pa_Bc_not_secret))

                    ; #66261: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Pa_Pb_not_secret))

                    ; #66556: <==negation-removal== 53350 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #67016: <==unclosure== 32511 (neg)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #67516: <==negation-removal== 28228 (pos)
                    (not (Pc_Pa_Bb_Pc_not_secret))

                    ; #67657: <==unclosure== 25360 (neg)
                    (not (Bb_not_secret))

                    ; #67896: <==unclosure== 40295 (neg)
                    (not (Pb_Ba_Bc_Bb_not_secret))

                    ; #68006: <==negation-removal== 41088 (pos)
                    (not (Bc_Pb_Pc_Pb_not_secret))

                    ; #68177: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Pa_Pc_not_secret))

                    ; #68349: <==negation-removal== 13792 (pos)
                    (not (Bc_Pb_Pa_Pb_not_secret))

                    ; #68586: <==negation-removal== 83827 (pos)
                    (not (Pc_Ba_Pb_Pc_not_secret))

                    ; #68593: <==negation-removal== 42682 (pos)
                    (not (Bb_Pa_Pc_Pb_not_secret))

                    ; #68605: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Pb_Pc_not_secret))

                    ; #68699: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Pa_Bc_not_secret))

                    ; #68950: <==unclosure== 11514 (neg)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #69202: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Pa_Pb_not_secret))

                    ; #69553: <==unclosure== 81248 (neg)
                    (not (Bb_Pa_Bb_Pc_not_secret))

                    ; #69553: <==unclosure== 88288 (neg)
                    (not (Pc_Ba_Bb_Pc_not_secret))

                    ; #70372: <==unclosure== 39643 (neg)
                    (not (Pb_Bc_Pa_Bc_not_secret))

                    ; #70605: <==negation-removal== 84523 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #70852: <==unclosure== 11514 (neg)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #71046: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #71451: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Ba_Pc_not_secret))

                    ; #71552: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #71701: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Ba_Bc_not_secret))

                    ; #72185: <==unclosure== 81248 (neg)
                    (not (Bb_Pa_Pb_Bc_not_secret))

                    ; #72334: <==unclosure== 81803 (neg)
                    (not (Pa_Bc_Ba_Bc_not_secret))

                    ; #72520: <==negation-removal== 43285 (pos)
                    (not (Pa_Pb_Pa_Pb_not_secret))

                    ; #72539: <==unclosure== 15812 (neg)
                    (not (Ba_Pb_Pc_Bb_not_secret))

                    ; #72999: <==unclosure== 12537 (neg)
                    (not (Pa_Bc_Pa_Bb_not_secret))

                    ; #73045: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #73110: <==negation-removal== 16282 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #73625: <==unclosure== 79309 (neg)
                    (not (Pc_Bb_Ba_Bc_not_secret))

                    ; #73666: <==unclosure== 56698 (neg)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #73822: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Bb_Pc_not_secret))

                    ; #73970: <==unclosure== 12610 (neg)
                    (not (Pc_Pb_Pa_Bb_not_secret))

                    ; #74182: <==unclosure== 76037 (neg)
                    (not (Pb_Bc_Pb_Bc_not_secret))

                    ; #74285: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #74285: <==unclosure== 12294 (neg)
                    (not (Pa_Bc_not_secret))

                    ; #74400: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Pa_Pc_not_secret))

                    ; #75076: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Pa_Bc_not_secret))

                    ; #75280: <==unclosure== 86398 (neg)
                    (not (Pb_Bc_Ba_Pb_not_secret))

                    ; #75512: <==negation-removal== 19489 (pos)
                    (not (Pc_not_secret))

                    ; #75671: <==unclosure== 86398 (neg)
                    (not (Pb_Pc_Pa_Bb_not_secret))

                    ; #75996: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Ba_Pb_not_secret))

                    ; #76025: <==unclosure== 15812 (neg)
                    (not (Pa_Bb_Bc_Bb_not_secret))

                    ; #76037: <==negation-removal== 50674 (pos)
                    (not (Pb_Pc_Pb_Pc_not_secret))

                    ; #76394: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Bc_Bb_not_secret))

                    ; #76560: <==unclosure== 12537 (neg)
                    (not (Pa_Pc_Pa_Bb_not_secret))

                    ; #77020: <==unclosure== 53583 (neg)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #77157: <==unclosure== 79309 (neg)
                    (not (Bc_Pb_Ba_Pc_not_secret))

                    ; #77512: <==negation-removal== 28839 (pos)
                    (not (Ba_Pc_Pa_Pb_not_secret))

                    ; #77529: <==unclosure== 12537 (neg)
                    (not (Pa_Pc_Ba_Bb_not_secret))

                    ; #77622: <==unclosure== 39643 (neg)
                    (not (Pb_Bc_Ba_Bc_not_secret))

                    ; #77743: <==negation-removal== 54023 (pos)
                    (not (Pb_Ba_Pc_Pb_not_secret))

                    ; #77788: <==unclosure== 75512 (neg)
                    (not (Bc_not_secret))

                    ; #77960: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Pa_Bb_not_secret))

                    ; #78107: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Pb_Bc_not_secret))

                    ; #78732: <==unclosure== 91487 (neg)
                    (not (Bc_Pb_Pc_Bb_not_secret))

                    ; #78758: <==negation-removal== 72536 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #78796: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Bb_Pc_not_secret))

                    ; #78860: <==unclosure== 53583 (neg)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #79165: <==unclosure== 76037 (neg)
                    (not (Pb_Bc_Bb_Pc_not_secret))

                    ; #79295: <==unclosure== 78758 (neg)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #79309: <==negation-removal== 62149 (pos)
                    (not (Pc_Pb_Pa_Pc_not_secret))

                    ; #79441: <==unclosure== 79309 (neg)
                    (not (Pc_Pb_Pa_Bc_not_secret))

                    ; #79686: <==unclosure== 56698 (neg)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #80191: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Bc_Pb_not_secret))

                    ; #80234: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Bc_Bb_not_secret))

                    ; #80308: <==negation-removal== 82291 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #80481: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Pc_Bb_not_secret))

                    ; #80834: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Pb_Bc_not_secret))

                    ; #80914: <==unclosure== 39643 (neg)
                    (not (Bb_Pc_Ba_Pc_not_secret))

                    ; #81248: <==negation-removal== 10734 (pos)
                    (not (Pb_Pa_Pb_Pc_not_secret))

                    ; #81341: <==unclosure== 86398 (neg)
                    (not (Pb_Bc_Ba_Bb_not_secret))

                    ; #81545: <==unclosure== 91487 (neg)
                    (not (Pc_Bb_Pc_Bb_not_secret))

                    ; #81750: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #81803: <==negation-removal== 29596 (pos)
                    (not (Pa_Pc_Pa_Pc_not_secret))

                    ; #81997: <==unclosure== 20497 (neg)
                    (not (Ba_Bb_not_secret))

                    ; #82285: <==negation-removal== 54759 (pos)
                    (not (Pa_Bc_Pa_Pc_not_secret))

                    ; #82851: <==unclosure== 76037 (neg)
                    (not (Bb_Pc_Bb_Bc_not_secret))

                    ; #82918: <==unclosure== 81248 (neg)
                    (not (Bb_Pa_Bb_Bc_not_secret))

                    ; #83089: <==unclosure== 80308 (neg)
                    (not (Bb_Bc_not_secret))

                    ; #84652: <==negation-removal== 70150 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #84980: <==unclosure== 72520 (neg)
                    (not (Ba_Pb_Ba_Bb_not_secret))

                    ; #85125: <==negation-removal== 40887 (pos)
                    (not (Pc_Pa_Bc_Pb_not_secret))

                    ; #85257: <==unclosure== 12610 (neg)
                    (not (Bc_Pb_Ba_Bb_not_secret))

                    ; #85764: <==unclosure== 15812 (neg)
                    (not (Ba_Pb_Bc_Bb_not_secret))

                    ; #85775: <==negation-removal== 63218 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #85857: <==negation-removal== 36172 (pos)
                    (not (Pa_Pc_Ba_Pb_not_secret))

                    ; #86140: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #86398: <==negation-removal== 31703 (pos)
                    (not (Pb_Pc_Pa_Pb_not_secret))

                    ; #86425: <==unclosure== 76037 (neg)
                    (not (Pb_Bc_Bb_Bc_not_secret))

                    ; #86571: <==unclosure== 79309 (neg)
                    (not (Pc_Bb_Ba_Pc_not_secret))

                    ; #86899: <==negation-removal== 82766 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #87061: <==unclosure== 64734 (neg)
                    (not (Ba_Pb_Pa_Bc_not_secret))

                    ; #87249: <==unclosure== 90366 (neg)
                    (not (Pc_Ba_Bc_Bb_not_secret))

                    ; #87875: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #88089: <==negation-removal== 65579 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #88288: <==negation-removal== 11377 (pos)
                    (not (Pc_Pa_Pb_Pc_not_secret))

                    ; #88509: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Pa_Bb_not_secret))

                    ; #88822: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Bc_Bb_not_secret))

                    ; #89285: <==negation-removal== 55557 (pos)
                    (not (Pb_Pa_Bc_Pb_not_secret))

                    ; #89381: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Pa_Bb_not_secret))

                    ; #89428: <==negation-removal== 81053 (pos)
                    (not (Ba_Pc_Pb_Pc_not_secret))

                    ; #89490: <==unclosure== 90366 (neg)
                    (not (Bc_Pa_Pc_Bb_not_secret))

                    ; #89542: <==unclosure== 56698 (neg)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #89682: <==unclosure== 90366 (neg)
                    (not (Bc_Pa_Bc_Bb_not_secret))

                    ; #90366: <==negation-removal== 29376 (pos)
                    (not (Pc_Pa_Pc_Pb_not_secret))

                    ; #90892: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Pc_Pb_not_secret))

                    ; #91297: <==unclosure== 81803 (neg)
                    (not (Pa_Pc_Ba_Bc_not_secret))

                    ; #91486: <==unclosure== 81248 (neg)
                    (not (Pb_Pa_Pb_Bc_not_secret))

                    ; #91487: <==negation-removal== 12624 (pos)
                    (not (Pc_Pb_Pc_Pb_not_secret))

                    ; #92110: <==negation-removal== 30506 (pos)
                    (not (Bb_Pc_Pa_Pc_not_secret))

                    ; #92184: <==unclosure== 84652 (neg)
                    (not (Pc_Bb_not_secret))

                    ; #92215: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Bb_Pc_not_secret))

                    ; #95552: <==unclosure== 90366 (neg)
                    (not (Pc_Pa_Pc_Bb_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Ba_secret))
        :effect (and
                    ; #10072: <==closure== 29596 (pos)
                    (Ba_Bc_Ba_Pc_secret)

                    ; #10283: <==closure== 43285 (pos)
                    (Ba_Pb_Pa_Pb_secret)

                    ; #10373: <==commonly_known== 25819 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #10533: <==closure== 50674 (pos)
                    (Pb_Pc_Pb_Bc_secret)

                    ; #10678: <==closure== 77056 (pos)
                    (Bb_Pa_Pc_Bb_secret)

                    ; #10734: <==commonly_known== 76804 (pos)
                    (Bb_Ba_Bb_Bc_secret)

                    ; #10856: <==closure== 68054 (pos)
                    (Pa_Pb_Bc_Bb_secret)

                    ; #11235: <==closure== 76804 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #11377: <==commonly_known== 76804 (pos)
                    (Bc_Ba_Bb_Bc_secret)

                    ; #11558: <==commonly_known== 56698 (neg)
                    (Pb_Ba_Bb_Bc_secret)

                    ; #11734: <==commonly_known== 31027 (pos)
                    (Ba_Bc_Ba_Bb_secret)

                    ; #11844: <==closure== 72536 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #12099: <==closure== 29376 (pos)
                    (Pc_Pa_Pc_Pb_secret)

                    ; #12624: <==commonly_known== 72536 (pos)
                    (Bc_Bb_Bc_Bb_secret)

                    ; #12666: <==commonly_known== 23121 (neg)
                    (Pb_Bc_Bb_Bc_secret)

                    ; #12735: <==closure== 82291 (pos)
                    (Bb_Pc_secret)

                    ; #13393: <==closure== 11734 (pos)
                    (Ba_Bc_Pa_Pb_secret)

                    ; #13394: <==commonly_known== 67546 (pos)
                    (Ba_Bc_Bb_Bc_secret)

                    ; #13462: <==closure== 10734 (pos)
                    (Pb_Pa_Bb_Pc_secret)

                    ; #13792: <==commonly_known== 85775 (neg)
                    (Pc_Bb_Ba_Bb_secret)

                    ; #13821: <==closure== 50674 (pos)
                    (Pb_Pc_Pb_Pc_secret)

                    ; #13937: <==closure== 35564 (pos)
                    (Pc_Bb_Pa_Bb_secret)

                    ; #14402: <==commonly_known== 37539 (pos)
                    (Bb_Pa_Bb_Bc_secret)

                    ; #14596: <==closure== 79565 (pos)
                    (Ba_Bb_Pa_Pc_secret)

                    ; #14617: <==closure== 11734 (pos)
                    (Ba_Pc_Ba_Pb_secret)

                    ; #14643: <==closure== 76804 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #15049: <==closure== 77056 (pos)
                    (Pb_Pa_Bc_Bb_secret)

                    ; #15527: <==closure== 10373 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #15877: <==closure== 13394 (pos)
                    (Pa_Pc_Bb_Pc_secret)

                    ; #15968: <==closure== 70150 (pos)
                    (Bc_Pb_secret)

                    ; #16028: <==closure== 86175 (pos)
                    (Bb_Bc_Pa_Pc_secret)

                    ; #16044: <==closure== 43285 (pos)
                    (Pa_Bb_Pa_Bb_secret)

                    ; #16080: <==commonly_known== 70150 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #16282: <==commonly_known== 80775 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #16393: <==closure== 79565 (pos)
                    (Pa_Bb_Pa_Pc_secret)

                    ; #16580: <==closure== 16080 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #16830: <==commonly_known== 18147 (pos)
                    (Bb_Bc_Pa_Bb_secret)

                    ; #17094: <==closure== 31703 (pos)
                    (Pb_Bc_Pa_Bb_secret)

                    ; #17270: <==closure== 86175 (pos)
                    (Pb_Pc_Ba_Pc_secret)

                    ; #17526: <==closure== 63218 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #17727: <==commonly_known== 82766 (pos)
                    (Bc_Pb_Ba_Bb_secret)

                    ; #17871: <==closure== 62149 (pos)
                    (Bc_Pb_Pa_Bc_secret)

                    ; #17872: <==closure== 10734 (pos)
                    (Pb_Ba_Pb_Pc_secret)

                    ; #17943: <==closure== 11734 (pos)
                    (Pa_Pc_Ba_Bb_secret)

                    ; #17960: <==closure== 77056 (pos)
                    (Bb_Pa_Bc_Pb_secret)

                    ; #18029: <==closure== 31703 (pos)
                    (Pb_Pc_Pa_Bb_secret)

                    ; #18147: <==commonly_known== 53350 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #18261: <==closure== 11734 (pos)
                    (Ba_Pc_Pa_Bb_secret)

                    ; #18330: <==closure== 11377 (pos)
                    (Bc_Ba_Bb_Pc_secret)

                    ; #18898: <==closure== 43285 (pos)
                    (Pa_Pb_Pa_Bb_secret)

                    ; #19002: <==closure== 68054 (pos)
                    (Ba_Bb_Bc_Pb_secret)

                    ; #19320: <==closure== 11734 (pos)
                    (Pa_Bc_Pa_Bb_secret)

                    ; #19489: origin
                    (Bc_secret)

                    ; #19771: <==closure== 63218 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #19938: <==closure== 67546 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #20147: <==commonly_known== 89302 (pos)
                    (Bc_Bb_Pa_Bc_secret)

                    ; #20261: <==closure== 86175 (pos)
                    (Pb_Pc_Pa_Bc_secret)

                    ; #20372: <==closure== 79565 (pos)
                    (Pa_Pb_Ba_Bc_secret)

                    ; #20540: <==closure== 11377 (pos)
                    (Bc_Pa_Pb_Pc_secret)

                    ; #20673: <==closure== 62149 (pos)
                    (Bc_Bb_Pa_Pc_secret)

                    ; #21067: <==closure== 62149 (pos)
                    (Bc_Pb_Ba_Pc_secret)

                    ; #21358: <==closure== 86175 (pos)
                    (Bb_Pc_Ba_Pc_secret)

                    ; #21646: <==closure== 12624 (pos)
                    (Pc_Bb_Pc_Pb_secret)

                    ; #21738: <==closure== 50674 (pos)
                    (Pb_Pc_Bb_Bc_secret)

                    ; #21875: <==commonly_known== 57281 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #22606: <==commonly_known== 58500 (pos)
                    (Bc_Pa_Bc_Bb_secret)

                    ; #22686: <==commonly_known== 83578 (pos)
                    (Ba_Bb_secret)

                    ; #23010: <==commonly_known== 27541 (pos)
                    (Ba_Pc_Bb_Bc_secret)

                    ; #23558: <==closure== 50674 (pos)
                    (Bb_Bc_Bb_Pc_secret)

                    ; #24237: <==closure== 10734 (pos)
                    (Pb_Ba_Bb_Pc_secret)

                    ; #24482: <==closure== 77056 (pos)
                    (Pb_Pa_Pc_Bb_secret)

                    ; #25347: <==closure== 11377 (pos)
                    (Pc_Pa_Bb_Pc_secret)

                    ; #25819: <==commonly_known== 19489 (pos)
                    (Ba_Bc_secret)

                    ; #25825: <==closure== 19489 (pos)
                    (Pc_secret)

                    ; #26451: <==closure== 67546 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #27041: <==closure== 29376 (pos)
                    (Bc_Ba_Bc_Pb_secret)

                    ; #27422: <==closure== 43285 (pos)
                    (Pa_Pb_Pa_Pb_secret)

                    ; #27541: <==commonly_known== 80308 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #27712: <==closure== 86175 (pos)
                    (Bb_Pc_Pa_Pc_secret)

                    ; #28228: <==commonly_known== 64857 (pos)
                    (Bc_Ba_Pb_Bc_secret)

                    ; #28507: <==closure== 43285 (pos)
                    (Ba_Bb_Ba_Pb_secret)

                    ; #28839: <==commonly_known== 32511 (neg)
                    (Pa_Bc_Ba_Bb_secret)

                    ; #29234: <==closure== 79565 (pos)
                    (Ba_Bb_Ba_Pc_secret)

                    ; #29280: <==closure== 35564 (pos)
                    (Pc_Pb_Pa_Pb_secret)

                    ; #29376: <==commonly_known== 16080 (pos)
                    (Bc_Ba_Bc_Bb_secret)

                    ; #29596: <==commonly_known== 10373 (pos)
                    (Ba_Bc_Ba_Bc_secret)

                    ; #30037: <==closure== 35564 (pos)
                    (Bc_Pb_Ba_Pb_secret)

                    ; #30506: <==commonly_known== 53583 (neg)
                    (Pb_Bc_Ba_Bc_secret)

                    ; #30518: <==closure== 50674 (pos)
                    (Bb_Bc_Pb_Pc_secret)

                    ; #30736: <==closure== 12624 (pos)
                    (Pc_Bb_Pc_Bb_secret)

                    ; #30810: <==closure== 29596 (pos)
                    (Ba_Pc_Ba_Pc_secret)

                    ; #30900: <==closure== 79565 (pos)
                    (Pa_Bb_Pa_Bc_secret)

                    ; #31027: <==commonly_known== 22686 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #31234: <==closure== 50674 (pos)
                    (Pb_Bc_Pb_Bc_secret)

                    ; #31385: <==closure== 43285 (pos)
                    (Pa_Pb_Ba_Bb_secret)

                    ; #31703: <==commonly_known== 31027 (pos)
                    (Bb_Bc_Ba_Bb_secret)

                    ; #31735: <==closure== 12624 (pos)
                    (Pc_Pb_Bc_Bb_secret)

                    ; #31778: <==closure== 10734 (pos)
                    (Pb_Ba_Pb_Bc_secret)

                    ; #31786: <==closure== 10734 (pos)
                    (Bb_Pa_Pb_Pc_secret)

                    ; #32110: <==closure== 10373 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #32118: <==commonly_known== 64995 (pos)
                    (Ba_Pb_Ba_Bc_secret)

                    ; #33289: <==closure== 31703 (pos)
                    (Pb_Bc_Pa_Pb_secret)

                    ; #33699: <==closure== 11377 (pos)
                    (Bc_Pa_Pb_Bc_secret)

                    ; #33720: <==closure== 31703 (pos)
                    (Pb_Bc_Ba_Pb_secret)

                    ; #33983: <==commonly_known== 53583 (neg)
                    (Pa_Bc_Ba_Bc_secret)

                    ; #34439: <==closure== 43285 (pos)
                    (Ba_Pb_Ba_Pb_secret)

                    ; #34472: <==closure== 43285 (pos)
                    (Ba_Bb_Pa_Pb_secret)

                    ; #34494: <==closure== 77056 (pos)
                    (Bb_Pa_Pc_Pb_secret)

                    ; #35203: <==closure== 62149 (pos)
                    (Pc_Pb_Pa_Pc_secret)

                    ; #35562: <==commonly_known== 20497 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #35564: <==commonly_known== 63218 (pos)
                    (Bc_Bb_Ba_Bb_secret)

                    ; #35715: <==closure== 76804 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #35829: <==closure== 67546 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #36060: <==closure== 11377 (pos)
                    (Bc_Ba_Pb_Pc_secret)

                    ; #36172: <==commonly_known== 18147 (pos)
                    (Ba_Bc_Pa_Bb_secret)

                    ; #37309: <==closure== 10373 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #37539: <==commonly_known== 80308 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #37636: <==closure== 62149 (pos)
                    (Bc_Pb_Pa_Pc_secret)

                    ; #37748: <==closure== 22686 (pos)
                    (Pa_Pb_secret)

                    ; #38261: <==closure== 63218 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #38640: <==closure== 35564 (pos)
                    (Bc_Bb_Pa_Pb_secret)

                    ; #39081: <==closure== 29596 (pos)
                    (Pa_Pc_Ba_Bc_secret)

                    ; #39855: <==closure== 68054 (pos)
                    (Pa_Pb_Pc_Bb_secret)

                    ; #40002: <==closure== 79565 (pos)
                    (Pa_Pb_Ba_Pc_secret)

                    ; #40887: <==commonly_known== 16282 (pos)
                    (Bc_Ba_Pc_Bb_secret)

                    ; #41088: <==commonly_known== 78758 (neg)
                    (Pc_Bb_Bc_Bb_secret)

                    ; #41545: <==closure== 79565 (pos)
                    (Pa_Pb_Pa_Pc_secret)

                    ; #41696: <==closure== 29596 (pos)
                    (Pa_Pc_Pa_Pc_secret)

                    ; #41792: <==closure== 11377 (pos)
                    (Pc_Pa_Pb_Bc_secret)

                    ; #42247: <==closure== 82801 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #42640: <==closure== 31027 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #42682: <==commonly_known== 11514 (neg)
                    (Pb_Ba_Bc_Bb_secret)

                    ; #42787: <==closure== 13394 (pos)
                    (Ba_Pc_Pb_Bc_secret)

                    ; #42882: <==commonly_known== 27541 (pos)
                    (Bb_Pc_Bb_Bc_secret)

                    ; #43121: <==closure== 13394 (pos)
                    (Ba_Pc_Bb_Pc_secret)

                    ; #43285: <==commonly_known== 63218 (pos)
                    (Ba_Bb_Ba_Bb_secret)

                    ; #43578: <==closure== 29376 (pos)
                    (Pc_Pa_Pc_Bb_secret)

                    ; #43642: <==commonly_known== 32511 (neg)
                    (Pb_Bc_Ba_Bb_secret)

                    ; #44173: <==closure== 10734 (pos)
                    (Pb_Pa_Pb_Pc_secret)

                    ; #44413: <==commonly_known== 53350 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #45078: <==closure== 29596 (pos)
                    (Ba_Pc_Pa_Bc_secret)

                    ; #45096: <==closure== 68054 (pos)
                    (Pa_Bb_Bc_Pb_secret)

                    ; #45401: <==closure== 70150 (pos)
                    (Pc_Pb_secret)

                    ; #45843: <==closure== 82801 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #45878: <==commonly_known== 35562 (pos)
                    (Ba_Pc_Ba_Bb_secret)

                    ; #46211: <==closure== 13394 (pos)
                    (Pa_Bc_Bb_Pc_secret)

                    ; #46438: <==closure== 29376 (pos)
                    (Bc_Pa_Pc_Pb_secret)

                    ; #46451: <==closure== 13394 (pos)
                    (Pa_Pc_Pb_Bc_secret)

                    ; #47239: <==closure== 83578 (pos)
                    (Pb_secret)

                    ; #47593: <==closure== 29596 (pos)
                    (Pa_Bc_Ba_Pc_secret)

                    ; #47756: <==closure== 13394 (pos)
                    (Ba_Bc_Bb_Pc_secret)

                    ; #48073: <==closure== 79565 (pos)
                    (Ba_Pb_Ba_Pc_secret)

                    ; #48246: <==closure== 13394 (pos)
                    (Pa_Pc_Pb_Pc_secret)

                    ; #48291: <==commonly_known== 89302 (pos)
                    (Ba_Bb_Pa_Bc_secret)

                    ; #48458: <==closure== 86175 (pos)
                    (Pb_Bc_Ba_Pc_secret)

                    ; #48611: <==commonly_known== 84523 (pos)
                    (Bc_Bb_Pc_Bb_secret)

                    ; #48658: <==closure== 10734 (pos)
                    (Pb_Pa_Pb_Bc_secret)

                    ; #48717: <==closure== 22686 (pos)
                    (Ba_Pb_secret)

                    ; #48741: <==closure== 31703 (pos)
                    (Pb_Pc_Pa_Pb_secret)

                    ; #48915: <==closure== 12624 (pos)
                    (Pc_Pb_Pc_Bb_secret)

                    ; #49462: <==closure== 35564 (pos)
                    (Pc_Pb_Ba_Bb_secret)

                    ; #49948: <==closure== 72536 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #50159: <==closure== 11734 (pos)
                    (Ba_Pc_Pa_Pb_secret)

                    ; #50213: <==closure== 11734 (pos)
                    (Pa_Pc_Ba_Pb_secret)

                    ; #50476: <==closure== 10734 (pos)
                    (Bb_Ba_Bb_Pc_secret)

                    ; #50555: <==closure== 13394 (pos)
                    (Ba_Pc_Pb_Pc_secret)

                    ; #50674: <==commonly_known== 67546 (pos)
                    (Bb_Bc_Bb_Bc_secret)

                    ; #51496: <==closure== 86175 (pos)
                    (Bb_Bc_Ba_Pc_secret)

                    ; #51851: <==closure== 11734 (pos)
                    (Pa_Bc_Pa_Pb_secret)

                    ; #51956: <==closure== 72536 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #52018: <==closure== 68054 (pos)
                    (Ba_Bb_Pc_Pb_secret)

                    ; #52223: <==closure== 68054 (pos)
                    (Ba_Pb_Pc_Pb_secret)

                    ; #52224: <==closure== 10734 (pos)
                    (Bb_Pa_Bb_Pc_secret)

                    ; #52358: <==closure== 29596 (pos)
                    (Pa_Bc_Pa_Bc_secret)

                    ; #52500: <==closure== 31703 (pos)
                    (Bb_Pc_Ba_Pb_secret)

                    ; #52962: <==commonly_known== 64995 (pos)
                    (Bc_Pb_Ba_Bc_secret)

                    ; #53350: <==commonly_known== 25360 (neg)
                    (Pa_Bb_secret)

                    ; #53645: <==commonly_known== 35562 (pos)
                    (Bb_Pc_Ba_Bb_secret)

                    ; #53775: <==closure== 31703 (pos)
                    (Pb_Pc_Ba_Bb_secret)

                    ; #54023: <==commonly_known== 58500 (pos)
                    (Bb_Pa_Bc_Bb_secret)

                    ; #54650: <==closure== 10373 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #54759: <==commonly_known== 65579 (pos)
                    (Ba_Pc_Ba_Bc_secret)

                    ; #54842: <==closure== 11734 (pos)
                    (Pa_Pc_Pa_Pb_secret)

                    ; #55050: <==closure== 79565 (pos)
                    (Ba_Pb_Pa_Pc_secret)

                    ; #55083: <==commonly_known== 78610 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #55175: <==closure== 29376 (pos)
                    (Bc_Pa_Bc_Pb_secret)

                    ; #55441: <==commonly_known== 44413 (pos)
                    (Ba_Bb_Pa_Bb_secret)

                    ; #55525: <==commonly_known== 63669 (neg)
                    (Pc_Bb_Ba_Bc_secret)

                    ; #55557: <==commonly_known== 16282 (pos)
                    (Bb_Ba_Pc_Bb_secret)

                    ; #55639: <==closure== 29376 (pos)
                    (Pc_Ba_Pc_Pb_secret)

                    ; #55818: <==closure== 29376 (pos)
                    (Pc_Ba_Pc_Bb_secret)

                    ; #55958: <==closure== 35564 (pos)
                    (Bc_Pb_Pa_Bb_secret)

                    ; #56045: <==closure== 11734 (pos)
                    (Pa_Bc_Ba_Pb_secret)

                    ; #56274: <==commonly_known== 21875 (pos)
                    (Bb_Bc_Pa_Bc_secret)

                    ; #56440: <==closure== 68054 (pos)
                    (Ba_Pb_Bc_Pb_secret)

                    ; #57078: <==closure== 25819 (pos)
                    (Pa_Pc_secret)

                    ; #57273: <==closure== 62149 (pos)
                    (Pc_Bb_Pa_Pc_secret)

                    ; #57281: <==commonly_known== 75512 (neg)
                    (Pa_Bc_secret)

                    ; #57625: <==closure== 63218 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #57716: <==closure== 10734 (pos)
                    (Pb_Pa_Bb_Bc_secret)

                    ; #58192: <==commonly_known== 82766 (pos)
                    (Ba_Pb_Ba_Bb_secret)

                    ; #58428: <==closure== 10734 (pos)
                    (Bb_Ba_Pb_Pc_secret)

                    ; #58500: <==commonly_known== 84652 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #58560: <==closure== 77056 (pos)
                    (Pb_Pa_Bc_Pb_secret)

                    ; #58832: <==closure== 31027 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #58993: <==closure== 31027 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #59025: <==closure== 13394 (pos)
                    (Pa_Bc_Pb_Pc_secret)

                    ; #59828: <==commonly_known== 87286 (pos)
                    (Ba_Pb_Bc_Bb_secret)

                    ; #59909: <==closure== 13394 (pos)
                    (Pa_Bc_Pb_Bc_secret)

                    ; #60034: <==closure== 13394 (pos)
                    (Ba_Bc_Pb_Pc_secret)

                    ; #60053: <==commonly_known== 11514 (neg)
                    (Pc_Ba_Bc_Bb_secret)

                    ; #60160: <==closure== 62149 (pos)
                    (Pc_Bb_Pa_Bc_secret)

                    ; #61079: <==closure== 16080 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #61364: <==closure== 50674 (pos)
                    (Pb_Bc_Pb_Pc_secret)

                    ; #61688: <==closure== 67546 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #61757: <==closure== 31703 (pos)
                    (Bb_Pc_Pa_Bb_secret)

                    ; #62093: <==closure== 11377 (pos)
                    (Pc_Ba_Pb_Bc_secret)

                    ; #62149: <==commonly_known== 82801 (pos)
                    (Bc_Bb_Ba_Bc_secret)

                    ; #62185: <==commonly_known== 44413 (pos)
                    (Bc_Bb_Pa_Bb_secret)

                    ; #62865: <==closure== 12624 (pos)
                    (Bc_Bb_Pc_Pb_secret)

                    ; #63036: <==closure== 50674 (pos)
                    (Pb_Bc_Bb_Pc_secret)

                    ; #63102: <==closure== 12624 (pos)
                    (Pc_Pb_Bc_Pb_secret)

                    ; #63218: <==commonly_known== 22686 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #63639: <==closure== 72536 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #63726: <==closure== 10373 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #63736: <==closure== 68054 (pos)
                    (Pa_Pb_Pc_Pb_secret)

                    ; #63743: <==closure== 86175 (pos)
                    (Bb_Pc_Pa_Bc_secret)

                    ; #64101: <==closure== 35564 (pos)
                    (Pc_Pb_Ba_Pb_secret)

                    ; #64478: <==closure== 31027 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #64565: <==closure== 35564 (pos)
                    (Pc_Bb_Pa_Pb_secret)

                    ; #64730: <==closure== 11377 (pos)
                    (Pc_Ba_Pb_Pc_secret)

                    ; #64763: <==commonly_known== 78758 (neg)
                    (Pa_Bb_Bc_Bb_secret)

                    ; #64857: <==commonly_known== 78610 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #64995: <==commonly_known== 12294 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #64996: <==closure== 43285 (pos)
                    (Pa_Bb_Pa_Pb_secret)

                    ; #65094: <==closure== 29376 (pos)
                    (Pc_Pa_Bc_Bb_secret)

                    ; #65191: <==closure== 35564 (pos)
                    (Pc_Bb_Ba_Pb_secret)

                    ; #65200: <==commonly_known== 85775 (neg)
                    (Pa_Bb_Ba_Bb_secret)

                    ; #65523: <==closure== 12624 (pos)
                    (Bc_Pb_Bc_Pb_secret)

                    ; #65579: <==commonly_known== 12294 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #65580: <==closure== 50674 (pos)
                    (Bb_Pc_Bb_Pc_secret)

                    ; #65584: <==closure== 68054 (pos)
                    (Pa_Pb_Bc_Pb_secret)

                    ; #65747: <==closure== 86175 (pos)
                    (Pb_Pc_Ba_Bc_secret)

                    ; #67271: <==closure== 63218 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #67546: <==commonly_known== 82291 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #67916: <==closure== 12624 (pos)
                    (Bc_Bb_Bc_Pb_secret)

                    ; #67960: <==closure== 31703 (pos)
                    (Bb_Bc_Pa_Pb_secret)

                    ; #68054: <==commonly_known== 72536 (pos)
                    (Ba_Bb_Bc_Bb_secret)

                    ; #68206: <==closure== 29596 (pos)
                    (Pa_Pc_Pa_Bc_secret)

                    ; #68486: <==closure== 79565 (pos)
                    (Pa_Pb_Pa_Bc_secret)

                    ; #68540: <==closure== 50674 (pos)
                    (Bb_Pc_Pb_Bc_secret)

                    ; #68560: <==closure== 29596 (pos)
                    (Ba_Pc_Pa_Pc_secret)

                    ; #68751: <==closure== 31703 (pos)
                    (Bb_Pc_Pa_Pb_secret)

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

                    ; #71651: <==closure== 13394 (pos)
                    (Pa_Pc_Bb_Bc_secret)

                    ; #71847: <==closure== 16080 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #72536: <==commonly_known== 70150 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #72883: <==closure== 12624 (pos)
                    (Pc_Pb_Pc_Pb_secret)

                    ; #72896: <==commonly_known== 55083 (pos)
                    (Ba_Bc_Pb_Bc_secret)

                    ; #73510: <==closure== 50674 (pos)
                    (Bb_Pc_Pb_Pc_secret)

                    ; #73645: <==closure== 82801 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #73891: <==closure== 77056 (pos)
                    (Pb_Ba_Bc_Pb_secret)

                    ; #73909: <==closure== 76804 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #74193: <==closure== 43285 (pos)
                    (Pa_Bb_Ba_Pb_secret)

                    ; #74352: <==closure== 11377 (pos)
                    (Pc_Ba_Bb_Pc_secret)

                    ; #74436: <==closure== 16080 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #74551: <==closure== 86175 (pos)
                    (Pb_Pc_Pa_Pc_secret)

                    ; #74664: <==closure== 77056 (pos)
                    (Pb_Pa_Pc_Pb_secret)

                    ; #75586: <==closure== 11377 (pos)
                    (Bc_Pa_Bb_Pc_secret)

                    ; #75605: <==closure== 35564 (pos)
                    (Pc_Pb_Pa_Bb_secret)

                    ; #75626: <==closure== 29376 (pos)
                    (Bc_Pa_Pc_Bb_secret)

                    ; #75816: <==closure== 25819 (pos)
                    (Ba_Pc_secret)

                    ; #76039: <==closure== 68054 (pos)
                    (Pa_Bb_Pc_Bb_secret)

                    ; #76217: <==closure== 29596 (pos)
                    (Pa_Bc_Pa_Pc_secret)

                    ; #76683: <==closure== 79565 (pos)
                    (Ba_Pb_Pa_Bc_secret)

                    ; #76770: <==closure== 62149 (pos)
                    (Pc_Pb_Ba_Pc_secret)

                    ; #76804: <==commonly_known== 82291 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #76959: <==commonly_known== 55083 (pos)
                    (Bb_Bc_Pb_Bc_secret)

                    ; #77056: <==commonly_known== 16080 (pos)
                    (Bb_Ba_Bc_Bb_secret)

                    ; #77502: <==closure== 16080 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #77626: <==closure== 31703 (pos)
                    (Pb_Pc_Ba_Pb_secret)

                    ; #78208: <==closure== 12624 (pos)
                    (Pc_Bb_Bc_Pb_secret)

                    ; #78610: <==commonly_known== 75512 (neg)
                    (Pb_Bc_secret)

                    ; #78840: <==closure== 29376 (pos)
                    (Pc_Ba_Bc_Pb_secret)

                    ; #79565: <==commonly_known== 82801 (pos)
                    (Ba_Bb_Ba_Bc_secret)

                    ; #79576: <==closure== 35564 (pos)
                    (Bc_Pb_Pa_Pb_secret)

                    ; #79636: <==closure== 11377 (pos)
                    (Pc_Pa_Pb_Pc_secret)

                    ; #79735: <==closure== 29376 (pos)
                    (Pc_Pa_Bc_Pb_secret)

                    ; #80396: <==closure== 50674 (pos)
                    (Pb_Pc_Bb_Pc_secret)

                    ; #80775: <==commonly_known== 25360 (neg)
                    (Pc_Bb_secret)

                    ; #81053: <==commonly_known== 23121 (neg)
                    (Pa_Bc_Bb_Bc_secret)

                    ; #81225: <==closure== 68054 (pos)
                    (Ba_Pb_Pc_Bb_secret)

                    ; #81850: <==commonly_known== 84523 (pos)
                    (Ba_Bb_Pc_Bb_secret)

                    ; #81872: <==commonly_known== 87286 (pos)
                    (Bc_Pb_Bc_Bb_secret)

                    ; #81967: <==closure== 68054 (pos)
                    (Pa_Bb_Pc_Pb_secret)

                    ; #81978: <==closure== 86175 (pos)
                    (Pb_Bc_Pa_Bc_secret)

                    ; #82291: <==commonly_known== 19489 (pos)
                    (Bb_Bc_secret)

                    ; #82304: <==closure== 86175 (pos)
                    (Pb_Bc_Pa_Pc_secret)

                    ; #82355: <==commonly_known== 21875 (pos)
                    (Ba_Bc_Pa_Bc_secret)

                    ; #82588: <==closure== 43285 (pos)
                    (Pa_Pb_Ba_Pb_secret)

                    ; #82766: <==commonly_known== 20497 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #82801: <==commonly_known== 25819 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #82840: <==closure== 43285 (pos)
                    (Ba_Pb_Pa_Bb_secret)

                    ; #82981: <==closure== 12624 (pos)
                    (Bc_Pb_Pc_Bb_secret)

                    ; #83153: <==commonly_known== 65579 (pos)
                    (Bb_Pc_Ba_Bc_secret)

                    ; #83578: origin
                    (Bb_secret)

                    ; #83827: <==commonly_known== 37539 (pos)
                    (Bc_Pa_Bb_Bc_secret)

                    ; #83986: <==closure== 62149 (pos)
                    (Pc_Pb_Ba_Bc_secret)

                    ; #84229: <==closure== 82801 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #84503: <==closure== 62149 (pos)
                    (Pc_Bb_Ba_Pc_secret)

                    ; #84523: <==commonly_known== 80775 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #85468: <==closure== 77056 (pos)
                    (Pb_Ba_Pc_Bb_secret)

                    ; #85637: <==closure== 77056 (pos)
                    (Bb_Ba_Pc_Pb_secret)

                    ; #85781: <==closure== 29596 (pos)
                    (Pa_Pc_Ba_Pc_secret)

                    ; #86159: <==closure== 77056 (pos)
                    (Bb_Ba_Bc_Pb_secret)

                    ; #86175: <==commonly_known== 10373 (pos)
                    (Bb_Bc_Ba_Bc_secret)

                    ; #86235: <==closure== 77056 (pos)
                    (Pb_Ba_Pc_Pb_secret)

                    ; #87059: <==closure== 62149 (pos)
                    (Bc_Bb_Ba_Pc_secret)

                    ; #87286: <==commonly_known== 84652 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #87617: <==closure== 79565 (pos)
                    (Pa_Bb_Ba_Pc_secret)

                    ; #87633: <==closure== 11377 (pos)
                    (Pc_Pa_Bb_Bc_secret)

                    ; #87816: <==closure== 29376 (pos)
                    (Bc_Ba_Pc_Pb_secret)

                    ; #89302: <==commonly_known== 57281 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #89943: <==commonly_known== 56698 (neg)
                    (Pc_Ba_Bb_Bc_secret)

                    ; #90110: <==closure== 11734 (pos)
                    (Ba_Bc_Ba_Pb_secret)

                    ; #90129: <==closure== 10734 (pos)
                    (Bb_Pa_Pb_Bc_secret)

                    ; #90518: <==closure== 31703 (pos)
                    (Bb_Bc_Ba_Pb_secret)

                    ; #90642: <==commonly_known== 63669 (neg)
                    (Pa_Bb_Ba_Bc_secret)

                    ; #91431: <==closure== 67546 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #91807: <==closure== 35564 (pos)
                    (Bc_Bb_Ba_Pb_secret)

                    ; #91975: <==closure== 62149 (pos)
                    (Pc_Pb_Pa_Bc_secret)

                    ; #92148: <==closure== 12624 (pos)
                    (Bc_Pb_Pc_Pb_secret)

                    ; #92575: <==closure== 29596 (pos)
                    (Ba_Bc_Pa_Pc_secret)

                    ; #94204: <==commonly_known== 64857 (pos)
                    (Bb_Ba_Pb_Bc_secret)

                    ; #98606: <==closure== 11734 (pos)
                    (Pa_Pc_Pa_Bb_secret)

                    ; #10263: <==negation-removal== 58500 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #10652: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Ba_Pb_not_secret))

                    ; #10721: <==unclosure== 64734 (neg)
                    (not (Pa_Bb_Ba_Pc_not_secret))

                    ; #11040: <==unclosure== 86398 (neg)
                    (not (Pb_Bc_Pa_Bb_not_secret))

                    ; #11069: <==negation-removal== 64763 (pos)
                    (not (Ba_Pb_Pc_Pb_not_secret))

                    ; #11295: <==unclosure== 81803 (neg)
                    (not (Pa_Bc_Pa_Bc_not_secret))

                    ; #11382: <==unclosure== 40295 (neg)
                    (not (Bb_Pa_Bc_Pb_not_secret))

                    ; #11514: <==negation-removal== 16080 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #11629: <==unclosure== 15812 (neg)
                    (not (Pa_Pb_Bc_Bb_not_secret))

                    ; #11945: <==unclosure== 15812 (neg)
                    (not (Pa_Bb_Bc_Pb_not_secret))

                    ; #12110: <==negation-removal== 59828 (pos)
                    (not (Pa_Bb_Pc_Pb_not_secret))

                    ; #12128: <==unclosure== 15812 (neg)
                    (not (Ba_Pb_Bc_Pb_not_secret))

                    ; #12145: <==unclosure== 81248 (neg)
                    (not (Pb_Pa_Bb_Bc_not_secret))

                    ; #12190: <==negation-removal== 76959 (pos)
                    (not (Pb_Pc_Bb_Pc_not_secret))

                    ; #12293: <==unclosure== 12610 (neg)
                    (not (Bc_Pb_Ba_Pb_not_secret))

                    ; #12294: <==negation-removal== 25819 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #12305: <==negation-removal== 27541 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #12459: <==unclosure== 64734 (neg)
                    (not (Ba_Pb_Ba_Pc_not_secret))

                    ; #12537: <==negation-removal== 11734 (pos)
                    (not (Pa_Pc_Pa_Pb_not_secret))

                    ; #12610: <==negation-removal== 35564 (pos)
                    (not (Pc_Pb_Pa_Pb_not_secret))

                    ; #12711: <==unclosure== 88288 (neg)
                    (not (Bc_Pa_Bb_Pc_not_secret))

                    ; #12997: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Ba_Bc_not_secret))

                    ; #13087: <==unclosure== 23121 (neg)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #13201: <==unclosure== 76037 (neg)
                    (not (Bb_Pc_Pb_Bc_not_secret))

                    ; #13700: <==negation-removal== 94204 (pos)
                    (not (Pb_Pa_Bb_Pc_not_secret))

                    ; #14169: <==negation-removal== 64995 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #14260: <==unclosure== 39643 (neg)
                    (not (Pb_Pc_Pa_Bc_not_secret))

                    ; #14389: <==unclosure== 81803 (neg)
                    (not (Pa_Pc_Pa_Bc_not_secret))

                    ; #14754: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Bc_Pb_not_secret))

                    ; #15132: <==unclosure== 81803 (neg)
                    (not (Ba_Pc_Ba_Pc_not_secret))

                    ; #15433: <==unclosure== 32511 (neg)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #15683: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Ba_Pb_not_secret))

                    ; #15812: <==negation-removal== 68054 (pos)
                    (not (Pa_Pb_Pc_Pb_not_secret))

                    ; #15897: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Ba_Bb_not_secret))

                    ; #15919: <==unclosure== 15812 (neg)
                    (not (Pa_Pb_Pc_Bb_not_secret))

                    ; #16354: <==unclosure== 64734 (neg)
                    (not (Pa_Bb_Pa_Bc_not_secret))

                    ; #17749: <==unclosure== 12294 (neg)
                    (not (Ba_Bc_not_secret))

                    ; #17792: <==unclosure== 81803 (neg)
                    (not (Ba_Pc_Pa_Bc_not_secret))

                    ; #17826: <==unclosure== 80308 (neg)
                    (not (Pb_Bc_not_secret))

                    ; #17926: <==unclosure== 12537 (neg)
                    (not (Ba_Pc_Ba_Pb_not_secret))

                    ; #18374: <==unclosure== 40295 (neg)
                    (not (Pb_Ba_Bc_Pb_not_secret))

                    ; #18406: <==negation-removal== 90642 (pos)
                    (not (Ba_Pb_Pa_Pc_not_secret))

                    ; #18509: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #18737: <==unclosure== 40295 (neg)
                    (not (Pb_Pa_Bc_Bb_not_secret))

                    ; #19603: <==unclosure== 56698 (neg)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #20396: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Ba_Bb_not_secret))

                    ; #20455: <==negation-removal== 89943 (pos)
                    (not (Bc_Pa_Pb_Pc_not_secret))

                    ; #20497: <==negation-removal== 22686 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #21209: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Ba_Bb_not_secret))

                    ; #21598: <==negation-removal== 83153 (pos)
                    (not (Pb_Bc_Pa_Pc_not_secret))

                    ; #21804: <==unclosure== 20497 (neg)
                    (not (Pa_Bb_not_secret))

                    ; #21877: <==negation-removal== 48611 (pos)
                    (not (Pc_Pb_Bc_Pb_not_secret))

                    ; #22437: <==unclosure== 23121 (neg)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #23121: <==negation-removal== 67546 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #23882: <==unclosure== 72520 (neg)
                    (not (Ba_Pb_Pa_Bb_not_secret))

                    ; #24451: <==negation-removal== 12666 (pos)
                    (not (Bb_Pc_Pb_Pc_not_secret))

                    ; #24510: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Pb_Bc_not_secret))

                    ; #24837: <==unclosure== 91487 (neg)
                    (not (Pc_Bb_Bc_Bb_not_secret))

                    ; #24989: <==negation-removal== 32118 (pos)
                    (not (Pa_Bb_Pa_Pc_not_secret))

                    ; #25082: <==unclosure== 63669 (neg)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #25360: <==negation-removal== 83578 (pos)
                    (not (Pb_not_secret))

                    ; #25628: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #25780: <==unclosure== 53583 (neg)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #26110: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Pa_Pb_not_secret))

                    ; #26228: <==unclosure== 81248 (neg)
                    (not (Pb_Ba_Bb_Pc_not_secret))

                    ; #26255: <==unclosure== 88288 (neg)
                    (not (Pc_Ba_Pb_Bc_not_secret))

                    ; #26653: <==negation-removal== 11558 (pos)
                    (not (Bb_Pa_Pb_Pc_not_secret))

                    ; #26776: <==unclosure== 64734 (neg)
                    (not (Ba_Pb_Ba_Bc_not_secret))

                    ; #26873: <==unclosure== 39557 (neg)
                    (not (Ba_Pc_Pb_Bc_not_secret))

                    ; #26937: <==negation-removal== 87286 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #27176: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #27486: <==unclosure== 64734 (neg)
                    (not (Pa_Pb_Pa_Bc_not_secret))

                    ; #28599: <==unclosure== 72520 (neg)
                    (not (Ba_Pb_Ba_Pb_not_secret))

                    ; #29479: <==unclosure== 85775 (neg)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #29565: <==negation-removal== 60053 (pos)
                    (not (Bc_Pa_Pc_Pb_not_secret))

                    ; #30104: <==unclosure== 86398 (neg)
                    (not (Bb_Pc_Ba_Pb_not_secret))

                    ; #30543: <==unclosure== 39643 (neg)
                    (not (Bb_Pc_Ba_Bc_not_secret))

                    ; #31222: <==unclosure== 40295 (neg)
                    (not (Bb_Pa_Pc_Bb_not_secret))

                    ; #31713: <==unclosure== 15812 (neg)
                    (not (Pa_Bb_Pc_Bb_not_secret))

                    ; #32300: <==unclosure== 12610 (neg)
                    (not (Pc_Bb_Ba_Pb_not_secret))

                    ; #32309: <==unclosure== 12537 (neg)
                    (not (Ba_Pc_Ba_Bb_not_secret))

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

                    ; #34230: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Pa_Bb_not_secret))

                    ; #34249: <==negation-removal== 80775 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #34392: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Pc_Bb_not_secret))

                    ; #34413: <==unclosure== 72520 (neg)
                    (not (Pa_Bb_Ba_Bb_not_secret))

                    ; #34479: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Bb_Bc_not_secret))

                    ; #34901: <==unclosure== 12610 (neg)
                    (not (Pc_Bb_Pa_Bb_not_secret))

                    ; #35128: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Pa_Pb_not_secret))

                    ; #35391: <==unclosure== 39643 (neg)
                    (not (Bb_Pc_Pa_Bc_not_secret))

                    ; #36221: <==unclosure== 81248 (neg)
                    (not (Pb_Ba_Bb_Bc_not_secret))

                    ; #36803: <==negation-removal== 81872 (pos)
                    (not (Pc_Bb_Pc_Pb_not_secret))

                    ; #37089: <==negation-removal== 57281 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #37633: <==negation-removal== 55525 (pos)
                    (not (Bc_Pb_Pa_Pc_not_secret))

                    ; #37737: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Pb_Pc_not_secret))

                    ; #37869: <==unclosure== 12610 (neg)
                    (not (Pc_Bb_Ba_Bb_not_secret))

                    ; #37964: <==unclosure== 79309 (neg)
                    (not (Bc_Pb_Pa_Bc_not_secret))

                    ; #38285: <==negation-removal== 43642 (pos)
                    (not (Bb_Pc_Pa_Pb_not_secret))

                    ; #38328: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Bc_Bb_not_secret))

                    ; #38330: <==unclosure== 39557 (neg)
                    (not (Pa_Pc_Pb_Bc_not_secret))

                    ; #38335: <==negation-removal== 35562 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #38351: <==negation-removal== 72896 (pos)
                    (not (Pa_Pc_Bb_Pc_not_secret))

                    ; #38549: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Ba_Pc_not_secret))

                    ; #38750: <==unclosure== 39557 (neg)
                    (not (Pa_Bc_Bb_Pc_not_secret))

                    ; #38752: <==unclosure== 81803 (neg)
                    (not (Pa_Bc_Ba_Pc_not_secret))

                    ; #38781: <==unclosure== 76037 (neg)
                    (not (Pb_Pc_Pb_Bc_not_secret))

                    ; #38825: <==unclosure== 39557 (neg)
                    (not (Pa_Bc_Bb_Bc_not_secret))

                    ; #38947: <==unclosure== 91487 (neg)
                    (not (Pc_Bb_Bc_Pb_not_secret))

                    ; #38991: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Pc_Bb_not_secret))

                    ; #39257: <==negation-removal== 21875 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #39329: <==negation-removal== 62185 (pos)
                    (not (Pc_Pb_Ba_Pb_not_secret))

                    ; #39512: <==unclosure== 39557 (neg)
                    (not (Ba_Pc_Bb_Bc_not_secret))

                    ; #39557: <==negation-removal== 13394 (pos)
                    (not (Pa_Pc_Pb_Pc_not_secret))

                    ; #39643: <==negation-removal== 86175 (pos)
                    (not (Pb_Pc_Pa_Pc_not_secret))

                    ; #39748: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #40020: <==negation-removal== 45878 (pos)
                    (not (Pa_Bc_Pa_Pb_not_secret))

                    ; #40253: <==negation-removal== 89302 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #40295: <==negation-removal== 77056 (pos)
                    (not (Pb_Pa_Pc_Pb_not_secret))

                    ; #40805: <==negation-removal== 64857 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #41113: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #41185: <==negation-removal== 81850 (pos)
                    (not (Pa_Pb_Bc_Pb_not_secret))

                    ; #41433: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Ba_Bb_not_secret))

                    ; #41520: <==unclosure== 39557 (neg)
                    (not (Ba_Pc_Bb_Pc_not_secret))

                    ; #41520: <==negation-removal== 22606 (pos)
                    (not (Pc_Ba_Pc_Pb_not_secret))

                    ; #41562: <==unclosure== 78758 (neg)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #42277: <==unclosure== 39557 (neg)
                    (not (Pa_Pc_Bb_Bc_not_secret))

                    ; #42334: <==unclosure== 90366 (neg)
                    (not (Pc_Ba_Pc_Bb_not_secret))

                    ; #42651: <==negation-removal== 55083 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #42955: <==negation-removal== 53645 (pos)
                    (not (Pb_Bc_Pa_Pb_not_secret))

                    ; #43098: <==unclosure== 81248 (neg)
                    (not (Pb_Ba_Pb_Bc_not_secret))

                    ; #43175: <==unclosure== 12610 (neg)
                    (not (Bc_Pb_Pa_Bb_not_secret))

                    ; #43521: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Bb_Bc_not_secret))

                    ; #43765: <==unclosure== 84652 (neg)
                    (not (Bc_Bb_not_secret))

                    ; #43895: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Ba_Pb_not_secret))

                    ; #44050: <==unclosure== 88288 (neg)
                    (not (Bc_Pa_Bb_Bc_not_secret))

                    ; #44212: <==negation-removal== 48291 (pos)
                    (not (Pa_Pb_Ba_Pc_not_secret))

                    ; #44762: <==unclosure== 86398 (neg)
                    (not (Pb_Pc_Ba_Bb_not_secret))

                    ; #44909: <==unclosure== 79309 (neg)
                    (not (Pc_Bb_Pa_Bc_not_secret))

                    ; #46342: <==negation-removal== 14402 (pos)
                    (not (Pb_Ba_Pb_Pc_not_secret))

                    ; #46483: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Ba_Pc_not_secret))

                    ; #47113: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Ba_Bc_not_secret))

                    ; #47361: <==unclosure== 72520 (neg)
                    (not (Pa_Bb_Ba_Pb_not_secret))

                    ; #47476: <==negation-removal== 56274 (pos)
                    (not (Pb_Pc_Ba_Pc_not_secret))

                    ; #47796: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Pb_Pc_not_secret))

                    ; #47832: <==negation-removal== 33983 (pos)
                    (not (Ba_Pc_Pa_Pc_not_secret))

                    ; #47945: <==unclosure== 76037 (neg)
                    (not (Bb_Pc_Bb_Pc_not_secret))

                    ; #48024: <==unclosure== 90366 (neg)
                    (not (Bc_Pa_Bc_Pb_not_secret))

                    ; #48413: <==negation-removal== 52962 (pos)
                    (not (Pc_Bb_Pa_Pc_not_secret))

                    ; #48893: <==unclosure== 40295 (neg)
                    (not (Bb_Pa_Bc_Bb_not_secret))

                    ; #49056: <==unclosure== 79309 (neg)
                    (not (Pc_Pb_Ba_Bc_not_secret))

                    ; #49066: <==unclosure== 91487 (neg)
                    (not (Pc_Pb_Pc_Bb_not_secret))

                    ; #50045: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Pa_Pc_not_secret))

                    ; #50073: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Pc_Pb_not_secret))

                    ; #50190: <==unclosure== 63669 (neg)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #50296: <==unclosure== 39643 (neg)
                    (not (Pb_Pc_Ba_Bc_not_secret))

                    ; #50331: <==unclosure== 12610 (neg)
                    (not (Pc_Pb_Ba_Bb_not_secret))

                    ; #50351: <==unclosure== 86398 (neg)
                    (not (Bb_Pc_Ba_Bb_not_secret))

                    ; #50412: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Bc_Pb_not_secret))

                    ; #50584: <==unclosure== 40295 (neg)
                    (not (Pb_Ba_Pc_Bb_not_secret))

                    ; #51665: <==unclosure== 91487 (neg)
                    (not (Pc_Pb_Bc_Bb_not_secret))

                    ; #51671: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Bb_Bc_not_secret))

                    ; #52183: <==unclosure== 39643 (neg)
                    (not (Pb_Bc_Ba_Pc_not_secret))

                    ; #52226: <==unclosure== 63669 (neg)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #52730: <==unclosure== 91487 (neg)
                    (not (Bc_Pb_Bc_Pb_not_secret))

                    ; #52839: <==unclosure== 39557 (neg)
                    (not (Pa_Bc_Pb_Bc_not_secret))

                    ; #53266: <==negation-removal== 58192 (pos)
                    (not (Pa_Bb_Pa_Pb_not_secret))

                    ; #53583: <==negation-removal== 10373 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #53895: <==unclosure== 90366 (neg)
                    (not (Pc_Ba_Bc_Pb_not_secret))

                    ; #54192: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Pa_Bc_not_secret))

                    ; #54197: <==negation-removal== 18147 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #54436: <==unclosure== 12537 (neg)
                    (not (Ba_Pc_Pa_Bb_not_secret))

                    ; #54679: <==negation-removal== 20147 (pos)
                    (not (Pc_Pb_Ba_Pc_not_secret))

                    ; #54966: <==unclosure== 23121 (neg)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #55031: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Ba_Pc_not_secret))

                    ; #55352: <==negation-removal== 82355 (pos)
                    (not (Pa_Pc_Ba_Pc_not_secret))

                    ; #55740: <==unclosure== 85775 (neg)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #56205: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Pc_Pb_not_secret))

                    ; #56214: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #56397: <==unclosure== 72520 (neg)
                    (not (Pa_Pb_Ba_Bb_not_secret))

                    ; #56698: <==negation-removal== 76804 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #56907: <==unclosure== 12537 (neg)
                    (not (Pa_Bc_Ba_Pb_not_secret))

                    ; #56961: <==negation-removal== 23010 (pos)
                    (not (Pa_Bc_Pb_Pc_not_secret))

                    ; #57383: <==negation-removal== 65200 (pos)
                    (not (Ba_Pb_Pa_Pb_not_secret))

                    ; #57780: <==unclosure== 81803 (neg)
                    (not (Ba_Pc_Ba_Bc_not_secret))

                    ; #57806: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #57966: <==unclosure== 88288 (neg)
                    (not (Bc_Pa_Pb_Bc_not_secret))

                    ; #58678: <==unclosure== 64734 (neg)
                    (not (Pa_Bb_Ba_Bc_not_secret))

                    ; #58775: <==unclosure== 88288 (neg)
                    (not (Pc_Pa_Bb_Bc_not_secret))

                    ; #59686: <==unclosure== 12537 (neg)
                    (not (Pa_Bc_Ba_Bb_not_secret))

                    ; #60355: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Pa_Pc_not_secret))

                    ; #60365: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Bc_Pb_not_secret))

                    ; #60441: <==unclosure== 91487 (neg)
                    (not (Bc_Bb_Pc_Bb_not_secret))

                    ; #60515: <==negation-removal== 17727 (pos)
                    (not (Pc_Bb_Pa_Pb_not_secret))

                    ; #60741: <==unclosure== 79309 (neg)
                    (not (Bc_Pb_Ba_Bc_not_secret))

                    ; #61154: <==negation-removal== 78610 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #61289: <==unclosure== 90366 (neg)
                    (not (Pc_Pa_Bc_Bb_not_secret))

                    ; #61462: <==unclosure== 40295 (neg)
                    (not (Pb_Pa_Pc_Bb_not_secret))

                    ; #61481: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Pb_Pc_not_secret))

                    ; #61872: <==unclosure== 72520 (neg)
                    (not (Pa_Pb_Pa_Bb_not_secret))

                    ; #62391: <==unclosure== 76037 (neg)
                    (not (Pb_Pc_Bb_Bc_not_secret))

                    ; #62591: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Bb_Bc_not_secret))

                    ; #62834: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Pb_Bc_not_secret))

                    ; #63173: <==negation-removal== 44413 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #63320: <==unclosure== 64734 (neg)
                    (not (Pa_Pb_Ba_Bc_not_secret))

                    ; #63518: <==negation-removal== 16830 (pos)
                    (not (Pb_Pc_Ba_Pb_not_secret))

                    ; #63527: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Pc_Pb_not_secret))

                    ; #63529: <==negation-removal== 55441 (pos)
                    (not (Pa_Pb_Ba_Pb_not_secret))

                    ; #63632: <==unclosure== 88288 (neg)
                    (not (Pc_Pa_Pb_Bc_not_secret))

                    ; #63648: <==unclosure== 91487 (neg)
                    (not (Bc_Pb_Bc_Bb_not_secret))

                    ; #63669: <==negation-removal== 82801 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #64110: <==unclosure== 72520 (neg)
                    (not (Pa_Bb_Pa_Bb_not_secret))

                    ; #64169: <==negation-removal== 42882 (pos)
                    (not (Pb_Bc_Pb_Pc_not_secret))

                    ; #64194: <==unclosure== 11514 (neg)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #64456: <==unclosure== 88288 (neg)
                    (not (Pc_Ba_Bb_Bc_not_secret))

                    ; #64734: <==negation-removal== 79565 (pos)
                    (not (Pa_Pb_Pa_Pc_not_secret))

                    ; #64816: <==unclosure== 86398 (neg)
                    (not (Bb_Pc_Pa_Bb_not_secret))

                    ; #64824: <==unclosure== 32511 (neg)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #65074: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Ba_Bc_not_secret))

                    ; #65273: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Bb_Pc_not_secret))

                    ; #66071: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Pa_Bc_not_secret))

                    ; #66261: <==unclosure== 12610 (neg)
                    (not (Bc_Bb_Pa_Pb_not_secret))

                    ; #66556: <==negation-removal== 53350 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #67016: <==unclosure== 32511 (neg)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #67516: <==negation-removal== 28228 (pos)
                    (not (Pc_Pa_Bb_Pc_not_secret))

                    ; #67657: <==unclosure== 25360 (neg)
                    (not (Bb_not_secret))

                    ; #67896: <==unclosure== 40295 (neg)
                    (not (Pb_Ba_Bc_Bb_not_secret))

                    ; #68006: <==negation-removal== 41088 (pos)
                    (not (Bc_Pb_Pc_Pb_not_secret))

                    ; #68177: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Pa_Pc_not_secret))

                    ; #68349: <==negation-removal== 13792 (pos)
                    (not (Bc_Pb_Pa_Pb_not_secret))

                    ; #68586: <==negation-removal== 83827 (pos)
                    (not (Pc_Ba_Pb_Pc_not_secret))

                    ; #68593: <==negation-removal== 42682 (pos)
                    (not (Bb_Pa_Pc_Pb_not_secret))

                    ; #68605: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Pb_Pc_not_secret))

                    ; #68699: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Pa_Bc_not_secret))

                    ; #68950: <==unclosure== 11514 (neg)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #69202: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Pa_Pb_not_secret))

                    ; #69553: <==unclosure== 81248 (neg)
                    (not (Bb_Pa_Bb_Pc_not_secret))

                    ; #69553: <==unclosure== 88288 (neg)
                    (not (Pc_Ba_Bb_Pc_not_secret))

                    ; #70372: <==unclosure== 39643 (neg)
                    (not (Pb_Bc_Pa_Bc_not_secret))

                    ; #70605: <==negation-removal== 84523 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #70852: <==unclosure== 11514 (neg)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #71046: <==unclosure== 78758 (neg)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #71451: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Ba_Pc_not_secret))

                    ; #71552: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #71701: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Ba_Bc_not_secret))

                    ; #72185: <==unclosure== 81248 (neg)
                    (not (Bb_Pa_Pb_Bc_not_secret))

                    ; #72334: <==unclosure== 81803 (neg)
                    (not (Pa_Bc_Ba_Bc_not_secret))

                    ; #72520: <==negation-removal== 43285 (pos)
                    (not (Pa_Pb_Pa_Pb_not_secret))

                    ; #72539: <==unclosure== 15812 (neg)
                    (not (Ba_Pb_Pc_Bb_not_secret))

                    ; #72999: <==unclosure== 12537 (neg)
                    (not (Pa_Bc_Pa_Bb_not_secret))

                    ; #73045: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #73110: <==negation-removal== 16282 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #73625: <==unclosure== 79309 (neg)
                    (not (Pc_Bb_Ba_Bc_not_secret))

                    ; #73666: <==unclosure== 56698 (neg)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #73822: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Bb_Pc_not_secret))

                    ; #73970: <==unclosure== 12610 (neg)
                    (not (Pc_Pb_Pa_Bb_not_secret))

                    ; #74182: <==unclosure== 76037 (neg)
                    (not (Pb_Bc_Pb_Bc_not_secret))

                    ; #74285: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #74285: <==unclosure== 12294 (neg)
                    (not (Pa_Bc_not_secret))

                    ; #74400: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Pa_Pc_not_secret))

                    ; #75076: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Pa_Bc_not_secret))

                    ; #75280: <==unclosure== 86398 (neg)
                    (not (Pb_Bc_Ba_Pb_not_secret))

                    ; #75512: <==negation-removal== 19489 (pos)
                    (not (Pc_not_secret))

                    ; #75671: <==unclosure== 86398 (neg)
                    (not (Pb_Pc_Pa_Bb_not_secret))

                    ; #75996: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Ba_Pb_not_secret))

                    ; #76025: <==unclosure== 15812 (neg)
                    (not (Pa_Bb_Bc_Bb_not_secret))

                    ; #76037: <==negation-removal== 50674 (pos)
                    (not (Pb_Pc_Pb_Pc_not_secret))

                    ; #76394: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Bc_Bb_not_secret))

                    ; #76560: <==unclosure== 12537 (neg)
                    (not (Pa_Pc_Pa_Bb_not_secret))

                    ; #77020: <==unclosure== 53583 (neg)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #77157: <==unclosure== 79309 (neg)
                    (not (Bc_Pb_Ba_Pc_not_secret))

                    ; #77512: <==negation-removal== 28839 (pos)
                    (not (Ba_Pc_Pa_Pb_not_secret))

                    ; #77529: <==unclosure== 12537 (neg)
                    (not (Pa_Pc_Ba_Bb_not_secret))

                    ; #77622: <==unclosure== 39643 (neg)
                    (not (Pb_Bc_Ba_Bc_not_secret))

                    ; #77743: <==negation-removal== 54023 (pos)
                    (not (Pb_Ba_Pc_Pb_not_secret))

                    ; #77788: <==unclosure== 75512 (neg)
                    (not (Bc_not_secret))

                    ; #77960: <==unclosure== 86398 (neg)
                    (not (Bb_Bc_Pa_Bb_not_secret))

                    ; #78107: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Pb_Bc_not_secret))

                    ; #78732: <==unclosure== 91487 (neg)
                    (not (Bc_Pb_Pc_Bb_not_secret))

                    ; #78758: <==negation-removal== 72536 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #78796: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Bb_Pc_not_secret))

                    ; #78860: <==unclosure== 53583 (neg)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #79165: <==unclosure== 76037 (neg)
                    (not (Pb_Bc_Bb_Pc_not_secret))

                    ; #79295: <==unclosure== 78758 (neg)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #79309: <==negation-removal== 62149 (pos)
                    (not (Pc_Pb_Pa_Pc_not_secret))

                    ; #79441: <==unclosure== 79309 (neg)
                    (not (Pc_Pb_Pa_Bc_not_secret))

                    ; #79686: <==unclosure== 56698 (neg)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #80191: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Bc_Pb_not_secret))

                    ; #80234: <==unclosure== 40295 (neg)
                    (not (Bb_Ba_Bc_Bb_not_secret))

                    ; #80308: <==negation-removal== 82291 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #80481: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Pc_Bb_not_secret))

                    ; #80834: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Pb_Bc_not_secret))

                    ; #80914: <==unclosure== 39643 (neg)
                    (not (Bb_Pc_Ba_Pc_not_secret))

                    ; #81248: <==negation-removal== 10734 (pos)
                    (not (Pb_Pa_Pb_Pc_not_secret))

                    ; #81341: <==unclosure== 86398 (neg)
                    (not (Pb_Bc_Ba_Bb_not_secret))

                    ; #81545: <==unclosure== 91487 (neg)
                    (not (Pc_Bb_Pc_Bb_not_secret))

                    ; #81750: <==unclosure== 11514 (neg)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #81803: <==negation-removal== 29596 (pos)
                    (not (Pa_Pc_Pa_Pc_not_secret))

                    ; #81997: <==unclosure== 20497 (neg)
                    (not (Ba_Bb_not_secret))

                    ; #82285: <==negation-removal== 54759 (pos)
                    (not (Pa_Bc_Pa_Pc_not_secret))

                    ; #82851: <==unclosure== 76037 (neg)
                    (not (Bb_Pc_Bb_Bc_not_secret))

                    ; #82918: <==unclosure== 81248 (neg)
                    (not (Bb_Pa_Bb_Bc_not_secret))

                    ; #83089: <==unclosure== 80308 (neg)
                    (not (Bb_Bc_not_secret))

                    ; #84652: <==negation-removal== 70150 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #84980: <==unclosure== 72520 (neg)
                    (not (Ba_Pb_Ba_Bb_not_secret))

                    ; #85125: <==negation-removal== 40887 (pos)
                    (not (Pc_Pa_Bc_Pb_not_secret))

                    ; #85257: <==unclosure== 12610 (neg)
                    (not (Bc_Pb_Ba_Bb_not_secret))

                    ; #85764: <==unclosure== 15812 (neg)
                    (not (Ba_Pb_Bc_Bb_not_secret))

                    ; #85775: <==negation-removal== 63218 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #85857: <==negation-removal== 36172 (pos)
                    (not (Pa_Pc_Ba_Pb_not_secret))

                    ; #86140: <==unclosure== 85775 (neg)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #86398: <==negation-removal== 31703 (pos)
                    (not (Pb_Pc_Pa_Pb_not_secret))

                    ; #86425: <==unclosure== 76037 (neg)
                    (not (Pb_Bc_Bb_Bc_not_secret))

                    ; #86571: <==unclosure== 79309 (neg)
                    (not (Pc_Bb_Ba_Pc_not_secret))

                    ; #86899: <==negation-removal== 82766 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #87061: <==unclosure== 64734 (neg)
                    (not (Ba_Pb_Pa_Bc_not_secret))

                    ; #87249: <==unclosure== 90366 (neg)
                    (not (Pc_Ba_Bc_Bb_not_secret))

                    ; #87875: <==unclosure== 32511 (neg)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #88089: <==negation-removal== 65579 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #88288: <==negation-removal== 11377 (pos)
                    (not (Pc_Pa_Pb_Pc_not_secret))

                    ; #88509: <==unclosure== 12537 (neg)
                    (not (Ba_Bc_Pa_Bb_not_secret))

                    ; #88822: <==unclosure== 15812 (neg)
                    (not (Ba_Bb_Bc_Bb_not_secret))

                    ; #89285: <==negation-removal== 55557 (pos)
                    (not (Pb_Pa_Bc_Pb_not_secret))

                    ; #89381: <==unclosure== 72520 (neg)
                    (not (Ba_Bb_Pa_Bb_not_secret))

                    ; #89428: <==negation-removal== 81053 (pos)
                    (not (Ba_Pc_Pb_Pc_not_secret))

                    ; #89490: <==unclosure== 90366 (neg)
                    (not (Bc_Pa_Pc_Bb_not_secret))

                    ; #89542: <==unclosure== 56698 (neg)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #89682: <==unclosure== 90366 (neg)
                    (not (Bc_Pa_Bc_Bb_not_secret))

                    ; #90366: <==negation-removal== 29376 (pos)
                    (not (Pc_Pa_Pc_Pb_not_secret))

                    ; #90892: <==unclosure== 90366 (neg)
                    (not (Bc_Ba_Pc_Pb_not_secret))

                    ; #91297: <==unclosure== 81803 (neg)
                    (not (Pa_Pc_Ba_Bc_not_secret))

                    ; #91486: <==unclosure== 81248 (neg)
                    (not (Pb_Pa_Pb_Bc_not_secret))

                    ; #91487: <==negation-removal== 12624 (pos)
                    (not (Pc_Pb_Pc_Pb_not_secret))

                    ; #92110: <==negation-removal== 30506 (pos)
                    (not (Bb_Pc_Pa_Pc_not_secret))

                    ; #92184: <==unclosure== 84652 (neg)
                    (not (Pc_Bb_not_secret))

                    ; #92215: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Bb_Pc_not_secret))

                    ; #95552: <==unclosure== 90366 (neg)
                    (not (Pc_Pa_Pc_Bb_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (at_l4))
        :effect (and
                    ; #10072: <==closure== 29596 (pos)
                    (Ba_Bc_Ba_Pc_secret)

                    ; #10373: <==commonly_known== 25819 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #10533: <==closure== 50674 (pos)
                    (Pb_Pc_Pb_Bc_secret)

                    ; #10734: <==commonly_known== 76804 (pos)
                    (Bb_Ba_Bb_Bc_secret)

                    ; #11235: <==closure== 76804 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #11377: <==commonly_known== 76804 (pos)
                    (Bc_Ba_Bb_Bc_secret)

                    ; #11558: <==commonly_known== 56698 (neg)
                    (Pb_Ba_Bb_Bc_secret)

                    ; #12666: <==commonly_known== 23121 (neg)
                    (Pb_Bc_Bb_Bc_secret)

                    ; #12735: <==closure== 82291 (pos)
                    (Bb_Pc_secret)

                    ; #13394: <==commonly_known== 67546 (pos)
                    (Ba_Bc_Bb_Bc_secret)

                    ; #13462: <==closure== 10734 (pos)
                    (Pb_Pa_Bb_Pc_secret)

                    ; #13821: <==closure== 50674 (pos)
                    (Pb_Pc_Pb_Pc_secret)

                    ; #14402: <==commonly_known== 37539 (pos)
                    (Bb_Pa_Bb_Bc_secret)

                    ; #14596: <==closure== 79565 (pos)
                    (Ba_Bb_Pa_Pc_secret)

                    ; #14643: <==closure== 76804 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #15527: <==closure== 10373 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #15877: <==closure== 13394 (pos)
                    (Pa_Pc_Bb_Pc_secret)

                    ; #16028: <==closure== 86175 (pos)
                    (Bb_Bc_Pa_Pc_secret)

                    ; #16393: <==closure== 79565 (pos)
                    (Pa_Bb_Pa_Pc_secret)

                    ; #17270: <==closure== 86175 (pos)
                    (Pb_Pc_Ba_Pc_secret)

                    ; #17871: <==closure== 62149 (pos)
                    (Bc_Pb_Pa_Bc_secret)

                    ; #17872: <==closure== 10734 (pos)
                    (Pb_Ba_Pb_Pc_secret)

                    ; #18330: <==closure== 11377 (pos)
                    (Bc_Ba_Bb_Pc_secret)

                    ; #19489: origin
                    (Bc_secret)

                    ; #19938: <==closure== 67546 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #20147: <==commonly_known== 89302 (pos)
                    (Bc_Bb_Pa_Bc_secret)

                    ; #20261: <==closure== 86175 (pos)
                    (Pb_Pc_Pa_Bc_secret)

                    ; #20372: <==closure== 79565 (pos)
                    (Pa_Pb_Ba_Bc_secret)

                    ; #20540: <==closure== 11377 (pos)
                    (Bc_Pa_Pb_Pc_secret)

                    ; #20673: <==closure== 62149 (pos)
                    (Bc_Bb_Pa_Pc_secret)

                    ; #21067: <==closure== 62149 (pos)
                    (Bc_Pb_Ba_Pc_secret)

                    ; #21358: <==closure== 86175 (pos)
                    (Bb_Pc_Ba_Pc_secret)

                    ; #21738: <==closure== 50674 (pos)
                    (Pb_Pc_Bb_Bc_secret)

                    ; #21875: <==commonly_known== 57281 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #23010: <==commonly_known== 27541 (pos)
                    (Ba_Pc_Bb_Bc_secret)

                    ; #23558: <==closure== 50674 (pos)
                    (Bb_Bc_Bb_Pc_secret)

                    ; #24237: <==closure== 10734 (pos)
                    (Pb_Ba_Bb_Pc_secret)

                    ; #25347: <==closure== 11377 (pos)
                    (Pc_Pa_Bb_Pc_secret)

                    ; #25819: <==commonly_known== 19489 (pos)
                    (Ba_Bc_secret)

                    ; #25825: <==closure== 19489 (pos)
                    (Pc_secret)

                    ; #26451: <==closure== 67546 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #27541: <==commonly_known== 80308 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #27712: <==closure== 86175 (pos)
                    (Bb_Pc_Pa_Pc_secret)

                    ; #28228: <==commonly_known== 64857 (pos)
                    (Bc_Ba_Pb_Bc_secret)

                    ; #29234: <==closure== 79565 (pos)
                    (Ba_Bb_Ba_Pc_secret)

                    ; #29596: <==commonly_known== 10373 (pos)
                    (Ba_Bc_Ba_Bc_secret)

                    ; #30506: <==commonly_known== 53583 (neg)
                    (Pb_Bc_Ba_Bc_secret)

                    ; #30518: <==closure== 50674 (pos)
                    (Bb_Bc_Pb_Pc_secret)

                    ; #30810: <==closure== 29596 (pos)
                    (Ba_Pc_Ba_Pc_secret)

                    ; #30900: <==closure== 79565 (pos)
                    (Pa_Bb_Pa_Bc_secret)

                    ; #31234: <==closure== 50674 (pos)
                    (Pb_Bc_Pb_Bc_secret)

                    ; #31778: <==closure== 10734 (pos)
                    (Pb_Ba_Pb_Bc_secret)

                    ; #31786: <==closure== 10734 (pos)
                    (Bb_Pa_Pb_Pc_secret)

                    ; #32110: <==closure== 10373 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #32118: <==commonly_known== 64995 (pos)
                    (Ba_Pb_Ba_Bc_secret)

                    ; #33699: <==closure== 11377 (pos)
                    (Bc_Pa_Pb_Bc_secret)

                    ; #33983: <==commonly_known== 53583 (neg)
                    (Pa_Bc_Ba_Bc_secret)

                    ; #35203: <==closure== 62149 (pos)
                    (Pc_Pb_Pa_Pc_secret)

                    ; #35715: <==closure== 76804 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #35829: <==closure== 67546 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #36060: <==closure== 11377 (pos)
                    (Bc_Ba_Pb_Pc_secret)

                    ; #37309: <==closure== 10373 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #37539: <==commonly_known== 80308 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #37636: <==closure== 62149 (pos)
                    (Bc_Pb_Pa_Pc_secret)

                    ; #39081: <==closure== 29596 (pos)
                    (Pa_Pc_Ba_Bc_secret)

                    ; #40002: <==closure== 79565 (pos)
                    (Pa_Pb_Ba_Pc_secret)

                    ; #41545: <==closure== 79565 (pos)
                    (Pa_Pb_Pa_Pc_secret)

                    ; #41696: <==closure== 29596 (pos)
                    (Pa_Pc_Pa_Pc_secret)

                    ; #41792: <==closure== 11377 (pos)
                    (Pc_Pa_Pb_Bc_secret)

                    ; #42247: <==closure== 82801 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #42787: <==closure== 13394 (pos)
                    (Ba_Pc_Pb_Bc_secret)

                    ; #42882: <==commonly_known== 27541 (pos)
                    (Bb_Pc_Bb_Bc_secret)

                    ; #43121: <==closure== 13394 (pos)
                    (Ba_Pc_Bb_Pc_secret)

                    ; #44173: <==closure== 10734 (pos)
                    (Pb_Pa_Pb_Pc_secret)

                    ; #45078: <==closure== 29596 (pos)
                    (Ba_Pc_Pa_Bc_secret)

                    ; #45843: <==closure== 82801 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #46211: <==closure== 13394 (pos)
                    (Pa_Bc_Bb_Pc_secret)

                    ; #46451: <==closure== 13394 (pos)
                    (Pa_Pc_Pb_Bc_secret)

                    ; #47593: <==closure== 29596 (pos)
                    (Pa_Bc_Ba_Pc_secret)

                    ; #47756: <==closure== 13394 (pos)
                    (Ba_Bc_Bb_Pc_secret)

                    ; #48073: <==closure== 79565 (pos)
                    (Ba_Pb_Ba_Pc_secret)

                    ; #48246: <==closure== 13394 (pos)
                    (Pa_Pc_Pb_Pc_secret)

                    ; #48291: <==commonly_known== 89302 (pos)
                    (Ba_Bb_Pa_Bc_secret)

                    ; #48458: <==closure== 86175 (pos)
                    (Pb_Bc_Ba_Pc_secret)

                    ; #48658: <==closure== 10734 (pos)
                    (Pb_Pa_Pb_Bc_secret)

                    ; #50476: <==closure== 10734 (pos)
                    (Bb_Ba_Bb_Pc_secret)

                    ; #50555: <==closure== 13394 (pos)
                    (Ba_Pc_Pb_Pc_secret)

                    ; #50674: <==commonly_known== 67546 (pos)
                    (Bb_Bc_Bb_Bc_secret)

                    ; #51496: <==closure== 86175 (pos)
                    (Bb_Bc_Ba_Pc_secret)

                    ; #52224: <==closure== 10734 (pos)
                    (Bb_Pa_Bb_Pc_secret)

                    ; #52358: <==closure== 29596 (pos)
                    (Pa_Bc_Pa_Bc_secret)

                    ; #52962: <==commonly_known== 64995 (pos)
                    (Bc_Pb_Ba_Bc_secret)

                    ; #54650: <==closure== 10373 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #54759: <==commonly_known== 65579 (pos)
                    (Ba_Pc_Ba_Bc_secret)

                    ; #55050: <==closure== 79565 (pos)
                    (Ba_Pb_Pa_Pc_secret)

                    ; #55083: <==commonly_known== 78610 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #55525: <==commonly_known== 63669 (neg)
                    (Pc_Bb_Ba_Bc_secret)

                    ; #56274: <==commonly_known== 21875 (pos)
                    (Bb_Bc_Pa_Bc_secret)

                    ; #57078: <==closure== 25819 (pos)
                    (Pa_Pc_secret)

                    ; #57273: <==closure== 62149 (pos)
                    (Pc_Bb_Pa_Pc_secret)

                    ; #57281: <==commonly_known== 75512 (neg)
                    (Pa_Bc_secret)

                    ; #57716: <==closure== 10734 (pos)
                    (Pb_Pa_Bb_Bc_secret)

                    ; #58428: <==closure== 10734 (pos)
                    (Bb_Ba_Pb_Pc_secret)

                    ; #59025: <==closure== 13394 (pos)
                    (Pa_Bc_Pb_Pc_secret)

                    ; #59909: <==closure== 13394 (pos)
                    (Pa_Bc_Pb_Bc_secret)

                    ; #60034: <==closure== 13394 (pos)
                    (Ba_Bc_Pb_Pc_secret)

                    ; #60160: <==closure== 62149 (pos)
                    (Pc_Bb_Pa_Bc_secret)

                    ; #61364: <==closure== 50674 (pos)
                    (Pb_Bc_Pb_Pc_secret)

                    ; #61688: <==closure== 67546 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #62093: <==closure== 11377 (pos)
                    (Pc_Ba_Pb_Bc_secret)

                    ; #62149: <==commonly_known== 82801 (pos)
                    (Bc_Bb_Ba_Bc_secret)

                    ; #63036: <==closure== 50674 (pos)
                    (Pb_Bc_Bb_Pc_secret)

                    ; #63726: <==closure== 10373 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #63743: <==closure== 86175 (pos)
                    (Bb_Pc_Pa_Bc_secret)

                    ; #64730: <==closure== 11377 (pos)
                    (Pc_Ba_Pb_Pc_secret)

                    ; #64857: <==commonly_known== 78610 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #64995: <==commonly_known== 12294 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #65579: <==commonly_known== 12294 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #65580: <==closure== 50674 (pos)
                    (Bb_Pc_Bb_Pc_secret)

                    ; #65747: <==closure== 86175 (pos)
                    (Pb_Pc_Ba_Bc_secret)

                    ; #67546: <==commonly_known== 82291 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #68206: <==closure== 29596 (pos)
                    (Pa_Pc_Pa_Bc_secret)

                    ; #68486: <==closure== 79565 (pos)
                    (Pa_Pb_Pa_Bc_secret)

                    ; #68540: <==closure== 50674 (pos)
                    (Bb_Pc_Pb_Bc_secret)

                    ; #68560: <==closure== 29596 (pos)
                    (Ba_Pc_Pa_Pc_secret)

                    ; #68961: <==closure== 76804 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #69097: <==closure== 82291 (pos)
                    (Pb_Pc_secret)

                    ; #69119: <==closure== 82801 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #71651: <==closure== 13394 (pos)
                    (Pa_Pc_Bb_Bc_secret)

                    ; #72896: <==commonly_known== 55083 (pos)
                    (Ba_Bc_Pb_Bc_secret)

                    ; #73510: <==closure== 50674 (pos)
                    (Bb_Pc_Pb_Pc_secret)

                    ; #73645: <==closure== 82801 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #73909: <==closure== 76804 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #74352: <==closure== 11377 (pos)
                    (Pc_Ba_Bb_Pc_secret)

                    ; #74551: <==closure== 86175 (pos)
                    (Pb_Pc_Pa_Pc_secret)

                    ; #75586: <==closure== 11377 (pos)
                    (Bc_Pa_Bb_Pc_secret)

                    ; #75816: <==closure== 25819 (pos)
                    (Ba_Pc_secret)

                    ; #76217: <==closure== 29596 (pos)
                    (Pa_Bc_Pa_Pc_secret)

                    ; #76683: <==closure== 79565 (pos)
                    (Ba_Pb_Pa_Bc_secret)

                    ; #76770: <==closure== 62149 (pos)
                    (Pc_Pb_Ba_Pc_secret)

                    ; #76804: <==commonly_known== 82291 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #76959: <==commonly_known== 55083 (pos)
                    (Bb_Bc_Pb_Bc_secret)

                    ; #78610: <==commonly_known== 75512 (neg)
                    (Pb_Bc_secret)

                    ; #79565: <==commonly_known== 82801 (pos)
                    (Ba_Bb_Ba_Bc_secret)

                    ; #79636: <==closure== 11377 (pos)
                    (Pc_Pa_Pb_Pc_secret)

                    ; #80396: <==closure== 50674 (pos)
                    (Pb_Pc_Bb_Pc_secret)

                    ; #81053: <==commonly_known== 23121 (neg)
                    (Pa_Bc_Bb_Bc_secret)

                    ; #81978: <==closure== 86175 (pos)
                    (Pb_Bc_Pa_Bc_secret)

                    ; #82291: <==commonly_known== 19489 (pos)
                    (Bb_Bc_secret)

                    ; #82304: <==closure== 86175 (pos)
                    (Pb_Bc_Pa_Pc_secret)

                    ; #82355: <==commonly_known== 21875 (pos)
                    (Ba_Bc_Pa_Bc_secret)

                    ; #82801: <==commonly_known== 25819 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #83153: <==commonly_known== 65579 (pos)
                    (Bb_Pc_Ba_Bc_secret)

                    ; #83827: <==commonly_known== 37539 (pos)
                    (Bc_Pa_Bb_Bc_secret)

                    ; #83986: <==closure== 62149 (pos)
                    (Pc_Pb_Ba_Bc_secret)

                    ; #84229: <==closure== 82801 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #84503: <==closure== 62149 (pos)
                    (Pc_Bb_Ba_Pc_secret)

                    ; #85781: <==closure== 29596 (pos)
                    (Pa_Pc_Ba_Pc_secret)

                    ; #86175: <==commonly_known== 10373 (pos)
                    (Bb_Bc_Ba_Bc_secret)

                    ; #87059: <==closure== 62149 (pos)
                    (Bc_Bb_Ba_Pc_secret)

                    ; #87617: <==closure== 79565 (pos)
                    (Pa_Bb_Ba_Pc_secret)

                    ; #87633: <==closure== 11377 (pos)
                    (Pc_Pa_Bb_Bc_secret)

                    ; #89302: <==commonly_known== 57281 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #89943: <==commonly_known== 56698 (neg)
                    (Pc_Ba_Bb_Bc_secret)

                    ; #90129: <==closure== 10734 (pos)
                    (Bb_Pa_Pb_Bc_secret)

                    ; #90642: <==commonly_known== 63669 (neg)
                    (Pa_Bb_Ba_Bc_secret)

                    ; #91431: <==closure== 67546 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #91975: <==closure== 62149 (pos)
                    (Pc_Pb_Pa_Bc_secret)

                    ; #92575: <==closure== 29596 (pos)
                    (Ba_Bc_Pa_Pc_secret)

                    ; #94204: <==commonly_known== 64857 (pos)
                    (Bb_Ba_Pb_Bc_secret)

                    ; #10721: <==unclosure== 64734 (neg)
                    (not (Pa_Bb_Ba_Pc_not_secret))

                    ; #11295: <==unclosure== 81803 (neg)
                    (not (Pa_Bc_Pa_Bc_not_secret))

                    ; #12145: <==unclosure== 81248 (neg)
                    (not (Pb_Pa_Bb_Bc_not_secret))

                    ; #12190: <==negation-removal== 76959 (pos)
                    (not (Pb_Pc_Bb_Pc_not_secret))

                    ; #12294: <==negation-removal== 25819 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #12305: <==negation-removal== 27541 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #12459: <==unclosure== 64734 (neg)
                    (not (Ba_Pb_Ba_Pc_not_secret))

                    ; #12711: <==unclosure== 88288 (neg)
                    (not (Bc_Pa_Bb_Pc_not_secret))

                    ; #12997: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Ba_Bc_not_secret))

                    ; #13087: <==unclosure== 23121 (neg)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #13201: <==unclosure== 76037 (neg)
                    (not (Bb_Pc_Pb_Bc_not_secret))

                    ; #13700: <==negation-removal== 94204 (pos)
                    (not (Pb_Pa_Bb_Pc_not_secret))

                    ; #14169: <==negation-removal== 64995 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #14260: <==unclosure== 39643 (neg)
                    (not (Pb_Pc_Pa_Bc_not_secret))

                    ; #14389: <==unclosure== 81803 (neg)
                    (not (Pa_Pc_Pa_Bc_not_secret))

                    ; #15132: <==unclosure== 81803 (neg)
                    (not (Ba_Pc_Ba_Pc_not_secret))

                    ; #16354: <==unclosure== 64734 (neg)
                    (not (Pa_Bb_Pa_Bc_not_secret))

                    ; #17749: <==unclosure== 12294 (neg)
                    (not (Ba_Bc_not_secret))

                    ; #17792: <==unclosure== 81803 (neg)
                    (not (Ba_Pc_Pa_Bc_not_secret))

                    ; #17826: <==unclosure== 80308 (neg)
                    (not (Pb_Bc_not_secret))

                    ; #18406: <==negation-removal== 90642 (pos)
                    (not (Ba_Pb_Pa_Pc_not_secret))

                    ; #18509: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #19603: <==unclosure== 56698 (neg)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #20455: <==negation-removal== 89943 (pos)
                    (not (Bc_Pa_Pb_Pc_not_secret))

                    ; #21598: <==negation-removal== 83153 (pos)
                    (not (Pb_Bc_Pa_Pc_not_secret))

                    ; #22437: <==unclosure== 23121 (neg)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #23121: <==negation-removal== 67546 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #24451: <==negation-removal== 12666 (pos)
                    (not (Bb_Pc_Pb_Pc_not_secret))

                    ; #24510: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Pb_Bc_not_secret))

                    ; #24989: <==negation-removal== 32118 (pos)
                    (not (Pa_Bb_Pa_Pc_not_secret))

                    ; #25082: <==unclosure== 63669 (neg)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #25780: <==unclosure== 53583 (neg)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #26228: <==unclosure== 81248 (neg)
                    (not (Pb_Ba_Bb_Pc_not_secret))

                    ; #26255: <==unclosure== 88288 (neg)
                    (not (Pc_Ba_Pb_Bc_not_secret))

                    ; #26653: <==negation-removal== 11558 (pos)
                    (not (Bb_Pa_Pb_Pc_not_secret))

                    ; #26776: <==unclosure== 64734 (neg)
                    (not (Ba_Pb_Ba_Bc_not_secret))

                    ; #26873: <==unclosure== 39557 (neg)
                    (not (Ba_Pc_Pb_Bc_not_secret))

                    ; #27486: <==unclosure== 64734 (neg)
                    (not (Pa_Pb_Pa_Bc_not_secret))

                    ; #30543: <==unclosure== 39643 (neg)
                    (not (Bb_Pc_Ba_Bc_not_secret))

                    ; #33945: <==unclosure== 56698 (neg)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #33991: <==negation-removal== 37539 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #34479: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Bb_Bc_not_secret))

                    ; #35391: <==unclosure== 39643 (neg)
                    (not (Bb_Pc_Pa_Bc_not_secret))

                    ; #36221: <==unclosure== 81248 (neg)
                    (not (Pb_Ba_Bb_Bc_not_secret))

                    ; #37089: <==negation-removal== 57281 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #37633: <==negation-removal== 55525 (pos)
                    (not (Bc_Pb_Pa_Pc_not_secret))

                    ; #37737: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Pb_Pc_not_secret))

                    ; #37964: <==unclosure== 79309 (neg)
                    (not (Bc_Pb_Pa_Bc_not_secret))

                    ; #38330: <==unclosure== 39557 (neg)
                    (not (Pa_Pc_Pb_Bc_not_secret))

                    ; #38351: <==negation-removal== 72896 (pos)
                    (not (Pa_Pc_Bb_Pc_not_secret))

                    ; #38549: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Ba_Pc_not_secret))

                    ; #38750: <==unclosure== 39557 (neg)
                    (not (Pa_Bc_Bb_Pc_not_secret))

                    ; #38752: <==unclosure== 81803 (neg)
                    (not (Pa_Bc_Ba_Pc_not_secret))

                    ; #38781: <==unclosure== 76037 (neg)
                    (not (Pb_Pc_Pb_Bc_not_secret))

                    ; #38825: <==unclosure== 39557 (neg)
                    (not (Pa_Bc_Bb_Bc_not_secret))

                    ; #39257: <==negation-removal== 21875 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #39512: <==unclosure== 39557 (neg)
                    (not (Ba_Pc_Bb_Bc_not_secret))

                    ; #39557: <==negation-removal== 13394 (pos)
                    (not (Pa_Pc_Pb_Pc_not_secret))

                    ; #39643: <==negation-removal== 86175 (pos)
                    (not (Pb_Pc_Pa_Pc_not_secret))

                    ; #40253: <==negation-removal== 89302 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #40805: <==negation-removal== 64857 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #41113: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #41520: <==unclosure== 39557 (neg)
                    (not (Ba_Pc_Bb_Pc_not_secret))

                    ; #42277: <==unclosure== 39557 (neg)
                    (not (Pa_Pc_Bb_Bc_not_secret))

                    ; #42651: <==negation-removal== 55083 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #43098: <==unclosure== 81248 (neg)
                    (not (Pb_Ba_Pb_Bc_not_secret))

                    ; #43521: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Bb_Bc_not_secret))

                    ; #44050: <==unclosure== 88288 (neg)
                    (not (Bc_Pa_Bb_Bc_not_secret))

                    ; #44212: <==negation-removal== 48291 (pos)
                    (not (Pa_Pb_Ba_Pc_not_secret))

                    ; #44909: <==unclosure== 79309 (neg)
                    (not (Pc_Bb_Pa_Bc_not_secret))

                    ; #46342: <==negation-removal== 14402 (pos)
                    (not (Pb_Ba_Pb_Pc_not_secret))

                    ; #46483: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Ba_Pc_not_secret))

                    ; #47113: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Ba_Bc_not_secret))

                    ; #47476: <==negation-removal== 56274 (pos)
                    (not (Pb_Pc_Ba_Pc_not_secret))

                    ; #47796: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Pb_Pc_not_secret))

                    ; #47832: <==negation-removal== 33983 (pos)
                    (not (Ba_Pc_Pa_Pc_not_secret))

                    ; #47945: <==unclosure== 76037 (neg)
                    (not (Bb_Pc_Bb_Pc_not_secret))

                    ; #48413: <==negation-removal== 52962 (pos)
                    (not (Pc_Bb_Pa_Pc_not_secret))

                    ; #49056: <==unclosure== 79309 (neg)
                    (not (Pc_Pb_Ba_Bc_not_secret))

                    ; #50045: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Pa_Pc_not_secret))

                    ; #50190: <==unclosure== 63669 (neg)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #50296: <==unclosure== 39643 (neg)
                    (not (Pb_Pc_Ba_Bc_not_secret))

                    ; #51671: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Bb_Bc_not_secret))

                    ; #52183: <==unclosure== 39643 (neg)
                    (not (Pb_Bc_Ba_Pc_not_secret))

                    ; #52226: <==unclosure== 63669 (neg)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #52839: <==unclosure== 39557 (neg)
                    (not (Pa_Bc_Pb_Bc_not_secret))

                    ; #53583: <==negation-removal== 10373 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #54192: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Pa_Bc_not_secret))

                    ; #54679: <==negation-removal== 20147 (pos)
                    (not (Pc_Pb_Ba_Pc_not_secret))

                    ; #54966: <==unclosure== 23121 (neg)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #55031: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Ba_Pc_not_secret))

                    ; #55352: <==negation-removal== 82355 (pos)
                    (not (Pa_Pc_Ba_Pc_not_secret))

                    ; #56698: <==negation-removal== 76804 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #56961: <==negation-removal== 23010 (pos)
                    (not (Pa_Bc_Pb_Pc_not_secret))

                    ; #57780: <==unclosure== 81803 (neg)
                    (not (Ba_Pc_Ba_Bc_not_secret))

                    ; #57806: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #57966: <==unclosure== 88288 (neg)
                    (not (Bc_Pa_Pb_Bc_not_secret))

                    ; #58678: <==unclosure== 64734 (neg)
                    (not (Pa_Bb_Ba_Bc_not_secret))

                    ; #58775: <==unclosure== 88288 (neg)
                    (not (Pc_Pa_Bb_Bc_not_secret))

                    ; #60355: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Pa_Pc_not_secret))

                    ; #60741: <==unclosure== 79309 (neg)
                    (not (Bc_Pb_Ba_Bc_not_secret))

                    ; #61154: <==negation-removal== 78610 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #61481: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Pb_Pc_not_secret))

                    ; #62391: <==unclosure== 76037 (neg)
                    (not (Pb_Pc_Bb_Bc_not_secret))

                    ; #62591: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Bb_Bc_not_secret))

                    ; #62834: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Pb_Bc_not_secret))

                    ; #63320: <==unclosure== 64734 (neg)
                    (not (Pa_Pb_Ba_Bc_not_secret))

                    ; #63632: <==unclosure== 88288 (neg)
                    (not (Pc_Pa_Pb_Bc_not_secret))

                    ; #63669: <==negation-removal== 82801 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #64169: <==negation-removal== 42882 (pos)
                    (not (Pb_Bc_Pb_Pc_not_secret))

                    ; #64456: <==unclosure== 88288 (neg)
                    (not (Pc_Ba_Bb_Bc_not_secret))

                    ; #64734: <==negation-removal== 79565 (pos)
                    (not (Pa_Pb_Pa_Pc_not_secret))

                    ; #65074: <==unclosure== 64734 (neg)
                    (not (Ba_Bb_Ba_Bc_not_secret))

                    ; #65273: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Bb_Pc_not_secret))

                    ; #66071: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Pa_Bc_not_secret))

                    ; #67516: <==negation-removal== 28228 (pos)
                    (not (Pc_Pa_Bb_Pc_not_secret))

                    ; #68177: <==unclosure== 81803 (neg)
                    (not (Ba_Bc_Pa_Pc_not_secret))

                    ; #68586: <==negation-removal== 83827 (pos)
                    (not (Pc_Ba_Pb_Pc_not_secret))

                    ; #68605: <==unclosure== 39557 (neg)
                    (not (Ba_Bc_Pb_Pc_not_secret))

                    ; #68699: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Pa_Bc_not_secret))

                    ; #69553: <==unclosure== 88288 (neg)
                    (not (Pc_Ba_Bb_Pc_not_secret))

                    ; #69553: <==unclosure== 81248 (neg)
                    (not (Bb_Pa_Bb_Pc_not_secret))

                    ; #70372: <==unclosure== 39643 (neg)
                    (not (Pb_Bc_Pa_Bc_not_secret))

                    ; #71451: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Ba_Pc_not_secret))

                    ; #71552: <==unclosure== 23121 (neg)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #71701: <==unclosure== 79309 (neg)
                    (not (Bc_Bb_Ba_Bc_not_secret))

                    ; #72185: <==unclosure== 81248 (neg)
                    (not (Bb_Pa_Pb_Bc_not_secret))

                    ; #72334: <==unclosure== 81803 (neg)
                    (not (Pa_Bc_Ba_Bc_not_secret))

                    ; #73045: <==unclosure== 53583 (neg)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #73625: <==unclosure== 79309 (neg)
                    (not (Pc_Bb_Ba_Bc_not_secret))

                    ; #73666: <==unclosure== 56698 (neg)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #73822: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Bb_Pc_not_secret))

                    ; #74182: <==unclosure== 76037 (neg)
                    (not (Pb_Bc_Pb_Bc_not_secret))

                    ; #74285: <==unclosure== 63669 (neg)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #74285: <==unclosure== 12294 (neg)
                    (not (Pa_Bc_not_secret))

                    ; #74400: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Pa_Pc_not_secret))

                    ; #75076: <==unclosure== 39643 (neg)
                    (not (Bb_Bc_Pa_Bc_not_secret))

                    ; #75512: <==negation-removal== 19489 (pos)
                    (not (Pc_not_secret))

                    ; #76037: <==negation-removal== 50674 (pos)
                    (not (Pb_Pc_Pb_Pc_not_secret))

                    ; #77020: <==unclosure== 53583 (neg)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #77157: <==unclosure== 79309 (neg)
                    (not (Bc_Pb_Ba_Pc_not_secret))

                    ; #77622: <==unclosure== 39643 (neg)
                    (not (Pb_Bc_Ba_Bc_not_secret))

                    ; #77788: <==unclosure== 75512 (neg)
                    (not (Bc_not_secret))

                    ; #78107: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Pb_Bc_not_secret))

                    ; #78796: <==unclosure== 76037 (neg)
                    (not (Bb_Bc_Bb_Pc_not_secret))

                    ; #78860: <==unclosure== 53583 (neg)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #79165: <==unclosure== 76037 (neg)
                    (not (Pb_Bc_Bb_Pc_not_secret))

                    ; #79309: <==negation-removal== 62149 (pos)
                    (not (Pc_Pb_Pa_Pc_not_secret))

                    ; #79441: <==unclosure== 79309 (neg)
                    (not (Pc_Pb_Pa_Bc_not_secret))

                    ; #79686: <==unclosure== 56698 (neg)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #80308: <==negation-removal== 82291 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #80834: <==unclosure== 88288 (neg)
                    (not (Bc_Ba_Pb_Bc_not_secret))

                    ; #80914: <==unclosure== 39643 (neg)
                    (not (Bb_Pc_Ba_Pc_not_secret))

                    ; #81248: <==negation-removal== 10734 (pos)
                    (not (Pb_Pa_Pb_Pc_not_secret))

                    ; #81803: <==negation-removal== 29596 (pos)
                    (not (Pa_Pc_Pa_Pc_not_secret))

                    ; #82285: <==negation-removal== 54759 (pos)
                    (not (Pa_Bc_Pa_Pc_not_secret))

                    ; #82851: <==unclosure== 76037 (neg)
                    (not (Bb_Pc_Bb_Bc_not_secret))

                    ; #82918: <==unclosure== 81248 (neg)
                    (not (Bb_Pa_Bb_Bc_not_secret))

                    ; #83089: <==unclosure== 80308 (neg)
                    (not (Bb_Bc_not_secret))

                    ; #86425: <==unclosure== 76037 (neg)
                    (not (Pb_Bc_Bb_Bc_not_secret))

                    ; #86571: <==unclosure== 79309 (neg)
                    (not (Pc_Bb_Ba_Pc_not_secret))

                    ; #87061: <==unclosure== 64734 (neg)
                    (not (Ba_Pb_Pa_Bc_not_secret))

                    ; #88089: <==negation-removal== 65579 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #88288: <==negation-removal== 11377 (pos)
                    (not (Pc_Pa_Pb_Pc_not_secret))

                    ; #89428: <==negation-removal== 81053 (pos)
                    (not (Ba_Pc_Pb_Pc_not_secret))

                    ; #89542: <==unclosure== 56698 (neg)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #91297: <==unclosure== 81803 (neg)
                    (not (Pa_Pc_Ba_Bc_not_secret))

                    ; #91486: <==unclosure== 81248 (neg)
                    (not (Pb_Pa_Pb_Bc_not_secret))

                    ; #92110: <==negation-removal== 30506 (pos)
                    (not (Bb_Pc_Pa_Pc_not_secret))

                    ; #92215: <==unclosure== 81248 (neg)
                    (not (Bb_Ba_Bb_Pc_not_secret))))

)