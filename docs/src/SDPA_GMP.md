Table of contents:

```@contents
Pages = ["SDPA_GMP.md"]
Depth = 4
```


Compilation warmup gives an estimate of 35 seconds of compilation time.

## SDPA_GMP presolve=true
These tests were run on August 15, 2020 at 23:55 (UTC).

Tests with SDPA-GMP via SDPAFamily.jl. The problems `lp_max_atom`, `lp_min_atom` and `affine_Partial_transpose` are excluded due to excessive presolve time (> 15 minutes each).

Excluded problems and classes of problems:
```julia
Regex[r"lp_max_atom", r"lp_min_atom", r"affine_Partial_transpose", r"mip", r"exp", r"sdp_Complex_Semidefinite_constraint"]
```

### Tests

Tests took 2 minutes, 15 seconds to run (after warmup).

```@raw html
<table>
<tr class="header">
<td style="text-align:left;border-right: solid 2px;">testset</td>
<td style="text-align:center;">pass</td>
<td style="text-align:center;">fail</td>
<td style="text-align:center;">error</td>
<td style="text-align:center;">broken</td>
<td style="text-align:center;">total</td>
</tr>
<tr><td style="text-align:left;border-right: solid 2px;">SDPA_GMP tests</td>
<td style="text-align:center;color:green;">375</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">375</td>
</tr></table>
```

### Errors

```julia
```


### Timing information
```julia
 ──────────────────────────────────────────────────────────────────────────────
                                       Time                   Allocations      
                               ──────────────────────   ───────────────────────
       Tot / % measured:             134s / 100%            30.4GiB / 100%     

 Section               ncalls     time   %tot     avg     alloc   %tot      avg
 ──────────────────────────────────────────────────────────────────────────────
 Convex                     1     118s  87.9%    118s   27.7GiB  91.5%  27.7GiB
   socp                     1    52.6s  39.4%   52.6s   12.3GiB  40.7%  12.3GiB
     socp_dual_frob...      1    23.2s  17.3%   23.2s    194MiB  0.62%   194MiB
     socp_rational_...      1    9.03s  6.76%   9.03s   9.74GiB  32.1%  9.74GiB
     socp_dual_mini...      1    5.53s  4.14%   5.53s    529MiB  1.70%   529MiB
     socp_quad_form...      1    2.48s  1.86%   2.48s   38.8MiB  0.12%  38.8MiB
     socp_sum_squar...      1    1.01s  0.76%   1.01s    102MiB  0.33%   102MiB
     socp_inv_pos_atom      1    1.01s  0.75%   1.01s   95.9MiB  0.31%  95.9MiB
     socp_dual_norm...      1    871ms  0.65%   871ms   79.2MiB  0.25%  79.2MiB
     socp_rational_...      1    738ms  0.55%   738ms    114MiB  0.37%   114MiB
     socp_fix_multi...      1    704ms  0.53%   704ms   43.7MiB  0.14%  43.7MiB
     socp_rational_...      1    615ms  0.46%   615ms    225MiB  0.72%   225MiB
     socp_quad_over...      1    582ms  0.44%   582ms   32.4MiB  0.10%  32.4MiB
     socp_norm_cons...      1    425ms  0.32%   425ms   29.7MiB  0.10%  29.7MiB
     socp_square_atom       1    417ms  0.31%   417ms   21.0MiB  0.07%  21.0MiB
     socp_huber_atom        1    399ms  0.30%   399ms   50.0MiB  0.16%  50.0MiB
     socp_geo_mean_...      1    349ms  0.26%   349ms   30.1MiB  0.10%  30.1MiB
     socp_fix_and_f...      1    103ms  0.08%   103ms   7.77MiB  0.03%  7.77MiB
     socp_sqrt_atom         1   41.4ms  0.03%  41.4ms   1.12MiB  0.00%  1.12MiB
   affine                   1    23.0s  17.2%   23.0s   2.97GiB  9.78%  2.97GiB
     affine_permute...      1    2.28s  1.70%   2.28s    323MiB  1.04%   323MiB
     affine_hcat_atom       1    2.15s  1.61%   2.15s    354MiB  1.14%   354MiB
     affine_dot_mul...      1    2.12s  1.59%   2.12s    193MiB  0.62%   193MiB
     affine_multipl...      1    1.88s  1.41%   1.88s    222MiB  0.72%   222MiB
     affine_transpo...      1    1.82s  1.36%   1.82s    191MiB  0.61%   191MiB
     affine_vcat_atom       1    1.36s  1.02%   1.36s    232MiB  0.75%   232MiB
     affine_Diagona...      1    1.07s  0.80%   1.07s    112MiB  0.36%   112MiB
     affine_satisfy...      1    942ms  0.70%   942ms   60.7MiB  0.20%  60.7MiB
     affine_add_atom        1    938ms  0.70%   938ms   69.6MiB  0.22%  69.6MiB
     affine_conv_atom       1    786ms  0.59%   786ms   57.1MiB  0.18%  57.1MiB
     affine_index_atom      1    742ms  0.56%   742ms    177MiB  0.57%   177MiB
     affine_reshape...      1    570ms  0.43%   570ms   45.2MiB  0.15%  45.2MiB
     affine_dualvalue       1    511ms  0.38%   511ms   54.0MiB  0.17%  54.0MiB
     affine_dot_atom        1    496ms  0.37%   496ms   26.5MiB  0.09%  26.5MiB
     affine_sum_atom        1    375ms  0.28%   375ms   37.2MiB  0.12%  37.2MiB
     affine_kron_atom       1    246ms  0.18%   246ms   20.2MiB  0.07%  20.2MiB
     affine_diag_atom       1    173ms  0.13%   173ms   23.6MiB  0.08%  23.6MiB
     affine_dot_ato...      1    105ms  0.08%   105ms   6.11MiB  0.02%  6.11MiB
     affine_negate_...      1   89.3ms  0.07%  89.3ms   4.45MiB  0.01%  4.45MiB
     affine_trace_atom      1   54.1ms  0.04%  54.1ms   3.68MiB  0.01%  3.68MiB
   sdp                      1    17.9s  13.4%   17.9s   2.06GiB  6.80%  2.06GiB
     sdp_operator_n...      1    2.76s  2.07%   2.76s    264MiB  0.85%   264MiB
     sdp_Partial_trace      1    2.14s  1.60%   2.14s    247MiB  0.80%   247MiB
     sdp_sum_larges...      1    1.35s  1.01%   1.35s    145MiB  0.47%   145MiB
     sdp_matrix_fra...      1    1.35s  1.01%   1.35s    127MiB  0.41%   127MiB
     sdp_Complex_Va...      1    1.33s  1.00%   1.33s    265MiB  0.85%   265MiB
     sdp_matrix_fra...      1    1.07s  0.80%   1.07s   94.8MiB  0.31%  94.8MiB
     sdp_dual_lambd...      1    898ms  0.67%   898ms   92.4MiB  0.30%  92.4MiB
     sdp_lambda_min...      1    528ms  0.39%   528ms   48.7MiB  0.16%  48.7MiB
     sdp_socp_sumsq...      1    515ms  0.39%   515ms   45.8MiB  0.15%  45.8MiB
     sdp_Issue_198          1    514ms  0.38%   514ms   51.9MiB  0.17%  51.9MiB
     sdp_nuclear_no...      1    497ms  0.37%   497ms   65.7MiB  0.21%  65.7MiB
     sdp_Real_Varia...      1    449ms  0.34%   449ms   43.8MiB  0.14%  43.8MiB
     sdp_sdp_variables      1    350ms  0.26%   350ms   37.9MiB  0.12%  37.9MiB
     sdp_socp_abs_atom      1    343ms  0.26%   343ms   28.2MiB  0.09%  28.2MiB
     sdp_socp_norm2...      1    334ms  0.25%   334ms   24.6MiB  0.08%  24.6MiB
     sdp_sigma_max_...      1    285ms  0.21%   285ms   19.7MiB  0.06%  19.7MiB
     sdp_kron_atom          1    218ms  0.16%   218ms   27.4MiB  0.09%  27.4MiB
     sdp_sdp_constr...      1    159ms  0.12%   159ms   14.0MiB  0.05%  14.0MiB
   lp                       1    14.9s  11.2%   14.9s   9.34GiB  30.8%  9.34GiB
     lp_minimum_atom        1    7.87s  5.89%   7.87s   6.45GiB  21.3%  6.45GiB
     lp_sumsmallest...      1    2.18s  1.63%   2.18s   1.80GiB  5.94%  1.80GiB
     lp_sumlargest_...      1    1.19s  0.89%   1.19s    583MiB  1.88%   583MiB
     lp_dotsort_atom        1    1.02s  0.76%   1.02s    166MiB  0.54%   166MiB
     lp_neg_atom            1    308ms  0.23%   308ms   25.0MiB  0.08%  25.0MiB
     lp_dual_abs_atom       1    295ms  0.22%   295ms   26.3MiB  0.08%  26.3MiB
     lp_maximum_atom        1    288ms  0.22%   288ms   47.4MiB  0.15%  47.4MiB
     lp_dual_norm_i...      1    128ms  0.10%   128ms   9.82MiB  0.03%  9.82MiB
     lp_pos_atom            1    107ms  0.08%   107ms   9.80MiB  0.03%  9.80MiB
     lp_dual_norm_1...      1   97.2ms  0.07%  97.2ms   7.13MiB  0.02%  7.13MiB
     lp_hinge_loss_...      1    253μs  0.00%   253μs   49.7KiB  0.00%  49.7KiB
   constant                 1    8.81s  6.60%   8.81s   1.01GiB  3.32%  1.01GiB
     constant_fix!_...      1    2.99s  2.24%   2.99s    306MiB  0.98%   306MiB
     constant_Issue...      1    2.63s  1.97%   2.63s    329MiB  1.06%   329MiB
     constant_Issue...      1    777ms  0.58%   777ms   67.7MiB  0.22%  67.7MiB
     constant_fix!_...      1    527ms  0.39%   527ms   47.0MiB  0.15%  47.0MiB
     constant_Test_...      1    329ms  0.25%   329ms   21.6MiB  0.07%  21.6MiB
     constant_fix!_...      1    250ms  0.19%   250ms   22.1MiB  0.07%  22.1MiB
 SumOfSquares               1    16.1s  12.1%   16.1s   2.59GiB  8.54%  2.59GiB
   sdp                      1    8.98s  6.72%   8.98s   1.39GiB  4.60%  1.39GiB
     sosdemo10              1   80.0μs  0.00%  80.0μs   21.4KiB  0.00%  21.4KiB
     sos_quartic_co...      1   79.2μs  0.00%  79.2μs   21.4KiB  0.00%  21.4KiB
     quartic_ideal_...      1   77.8μs  0.00%  77.8μs   21.4KiB  0.00%  21.4KiB
     quartic_infeas...      1   76.3μs  0.00%  76.3μs   21.4KiB  0.00%  21.4KiB
     sos_univariate...      1   75.2μs  0.00%  75.2μs   21.4KiB  0.00%  21.4KiB
     sosdemo9               1   73.0μs  0.00%  73.0μs   21.4KiB  0.00%  21.4KiB
     motzkin                1   72.2μs  0.00%  72.2μs   21.4KiB  0.00%  21.4KiB
     sosdemo5_infea...      1   72.0μs  0.00%  72.0μs   21.4KiB  0.00%  21.4KiB
     quartic_feasib...      1   70.6μs  0.00%  70.6μs   21.4KiB  0.00%  21.4KiB
     choi                   1   70.2μs  0.00%  70.2μs   21.4KiB  0.00%  21.4KiB
     sos_univariate...      1   69.6μs  0.00%  69.6μs   21.4KiB  0.00%  21.4KiB
     quartic_feasib...      1   68.8μs  0.00%  68.8μs   21.4KiB  0.00%  21.4KiB
     sosdemo5_feasible      1   68.7μs  0.00%  68.7μs   21.4KiB  0.00%  21.4KiB
     sos_term_fixed         1   68.6μs  0.00%  68.6μs   21.4KiB  0.00%  21.4KiB
     sos_bivariate_...      1   68.6μs  0.00%  68.6μs   21.9KiB  0.00%  21.9KiB
     sos_horn               1   68.3μs  0.00%  68.3μs   21.7KiB  0.00%  21.7KiB
     sos_quartic_co...      1   68.3μs  0.00%  68.3μs   21.4KiB  0.00%  21.4KiB
     rearrangement          1   67.8μs  0.00%  67.8μs   21.5KiB  0.00%  21.5KiB
     sos_options_pr...      1   67.8μs  0.00%  67.8μs   21.4KiB  0.00%  21.4KiB
     simple_matrix          1   67.7μs  0.00%  67.7μs   21.4KiB  0.00%  21.4KiB
     BPT12e399_maxd...      1   66.4μs  0.00%  66.4μs   21.4KiB  0.00%  21.4KiB
     quartic_ideal_...      1   65.3μs  0.00%  65.3μs   21.4KiB  0.00%  21.4KiB
     quadratic_feas...      1   65.2μs  0.00%  65.2μs   21.4KiB  0.00%  21.4KiB
     quadratic_feas...      1   65.1μs  0.00%  65.1μs   21.4KiB  0.00%  21.4KiB
     sos_term               1   65.0μs  0.00%  65.0μs   21.4KiB  0.00%  21.4KiB
     sos_scaled_uni...      1   64.7μs  0.00%  64.7μs   21.4KiB  0.00%  21.4KiB
     quartic_ideal_4        1   64.6μs  0.00%  64.6μs   21.4KiB  0.00%  21.4KiB
     BPT12e399_rem          1   64.2μs  0.00%  64.2μs   21.4KiB  0.00%  21.4KiB
     chebyshev              1   64.0μs  0.00%  64.0μs   21.4KiB  0.00%  21.4KiB
     sos_cheby_univ...      1   63.9μs  0.00%  63.9μs   21.4KiB  0.00%  21.4KiB
     quartic_infeas...      1   63.8μs  0.00%  63.8μs   21.4KiB  0.00%  21.4KiB
     quartic_ideal          1   62.7μs  0.00%  62.7μs   21.4KiB  0.00%  21.4KiB
     quartic_ideal_rem      1   62.3μs  0.00%  62.3μs   21.5KiB  0.00%  21.5KiB
     sos_scaled_biv...      1   62.2μs  0.00%  62.2μs   21.4KiB  0.00%  21.4KiB
     quadratic_infe...      1   62.1μs  0.00%  62.1μs   21.4KiB  0.00%  21.4KiB
     quadratic_infe...      1   58.9μs  0.00%  58.9μs   21.4KiB  0.00%  21.4KiB
     sos_concave_th...      1   58.8μs  0.00%  58.8μs   21.4KiB  0.00%  21.4KiB
     maxcut                 1   57.2μs  0.00%  57.2μs   21.4KiB  0.00%  21.4KiB
   socp                     1    5.30s  3.96%   5.30s   0.94GiB  3.09%  0.94GiB
     sdsos_bivariat...      1    138μs  0.00%   138μs   21.4KiB  0.00%  21.4KiB
     sdsos_univaria...      1   82.0μs  0.00%  82.0μs   21.5KiB  0.00%  21.5KiB
     sdsos_term_fixed       1   76.7μs  0.00%  76.7μs   21.4KiB  0.00%  21.4KiB
     sdsos_quartic_...      1   74.8μs  0.00%  74.8μs   21.4KiB  0.00%  21.4KiB
     sdsos_horn             1   71.0μs  0.00%  71.0μs   21.4KiB  0.00%  21.4KiB
     sdsos_univaria...      1   68.7μs  0.00%  68.7μs   21.4KiB  0.00%  21.4KiB
     sdsos_options_...      1   67.4μs  0.00%  67.4μs   21.4KiB  0.00%  21.4KiB
     sdsos_term             1   66.9μs  0.00%  66.9μs   21.4KiB  0.00%  21.4KiB
     sdsos_cheby_un...      1   66.1μs  0.00%  66.1μs   21.5KiB  0.00%  21.5KiB
     sdsos_scaled_b...      1   64.6μs  0.00%  64.6μs   21.4KiB  0.00%  21.4KiB
     sdsos_quartic_...      1   63.7μs  0.00%  63.7μs   21.4KiB  0.00%  21.4KiB
     sdsos_scaled_u...      1   62.2μs  0.00%  62.2μs   21.4KiB  0.00%  21.4KiB
     sdsos_concave_...      1   61.9μs  0.00%  61.9μs   21.4KiB  0.00%  21.4KiB
   lp                       1    1.69s  1.27%   1.69s    254MiB  0.82%   254MiB
     dsos_horn              1   71.5μs  0.00%  71.5μs   21.4KiB  0.00%  21.4KiB
     dsos_concave_t...      1   70.5μs  0.00%  70.5μs   21.4KiB  0.00%  21.4KiB
     dsos_quartic_c...      1   70.0μs  0.00%  70.0μs   21.4KiB  0.00%  21.4KiB
     dsos_univariat...      1   68.5μs  0.00%  68.5μs   21.4KiB  0.00%  21.4KiB
     dsos_cheby_uni...      1   68.0μs  0.00%  68.0μs   21.5KiB  0.00%  21.5KiB
     dsos_term              1   67.4μs  0.00%  67.4μs   21.4KiB  0.00%  21.4KiB
     dsos_univariat...      1   67.4μs  0.00%  67.4μs   21.4KiB  0.00%  21.4KiB
     dsos_cheby_biv...      1   67.1μs  0.00%  67.1μs   21.4KiB  0.00%  21.4KiB
     dsos_scaled_bi...      1   67.0μs  0.00%  67.0μs   21.5KiB  0.00%  21.5KiB
     dsos_bivariate...      1   66.9μs  0.00%  66.9μs   21.4KiB  0.00%  21.4KiB
     dsos_scaled_un...      1   66.7μs  0.00%  66.7μs   21.4KiB  0.00%  21.4KiB
     dsos_options_p...      1   66.5μs  0.00%  66.5μs   21.4KiB  0.00%  21.4KiB
     dsos_term_fixed        1   65.9μs  0.00%  65.9μs   21.4KiB  0.00%  21.4KiB
     dsos_quartic_c...      1   60.1μs  0.00%  60.1μs   21.4KiB  0.00%  21.4KiB
 ──────────────────────────────────────────────────────────────────────────────
```

## SDPA_GMP presolve=false
These tests were run on August 15, 2020 at 23:56 (UTC).


Excluded problems and classes of problems:
```julia
Regex[r"mip", r"exp", r"sdp_Complex_Semidefinite_constraint"]
```

### Tests

Tests took 1 minute, 14 seconds to run (after warmup).

```@raw html
<table>
<tr class="header">
<td style="text-align:left;border-right: solid 2px;">testset</td>
<td style="text-align:center;">pass</td>
<td style="text-align:center;">fail</td>
<td style="text-align:center;">error</td>
<td style="text-align:center;">broken</td>
<td style="text-align:center;">total</td>
</tr>
<tr><td style="text-align:left;border-right: solid 2px;">SDPA_GMP tests</td>
<td style="text-align:center;color:green;">354</td>
<td style="text-align:center;color:red;">34</td>
<td style="text-align:center;color:red;">2</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">390</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;Convex</td>
<td style="text-align:center;color:green;">354</td>
<td style="text-align:center;color:red;">34</td>
<td style="text-align:center;color:red;">2</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">390</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;constant</td>
<td style="text-align:center;color:green;">28</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">28</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;affine</td>
<td style="text-align:center;color:green;">139</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">139</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;socp</td>
<td style="text-align:center;color:green;">88</td>
<td style="text-align:center;color:red;">9</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">97</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_dual_minimal_norm_solutions</td>
<td style="text-align:center;color:green;">6</td>
<td style="text-align:center;color:red;">9</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">15</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_sum_squares_atom</td>
<td style="text-align:center;color:green;">3</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_fix_and_free_addition</td>
<td style="text-align:center;color:green;">3</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_inv_pos_atom</td>
<td style="text-align:center;color:green;">9</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">9</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_quad_over_lin_atom</td>
<td style="text-align:center;color:green;">3</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_quad_form_atom</td>
<td style="text-align:center;color:green;">6</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">6</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_fix_multiplication</td>
<td style="text-align:center;color:green;">3</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_huber_atom</td>
<td style="text-align:center;color:green;">3</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_rational_norm_dual_norm</td>
<td style="text-align:center;color:green;">5</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">5</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_rational_norm_atom_sum</td>
<td style="text-align:center;color:green;">3</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_rational_norm_atom</td>
<td style="text-align:center;color:green;">3</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_square_atom</td>
<td style="text-align:center;color:green;">9</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">9</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_dual_frobenius_norm_atom</td>
<td style="text-align:center;color:green;">5</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">5</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_sqrt_atom</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_dual_norm_2_atom</td>
<td style="text-align:center;color:green;">15</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">15</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_geo_mean_atom</td>
<td style="text-align:center;color:green;">4</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">4</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socp_norm_consistent_with_Base_for_matrix_variables</td>
<td style="text-align:center;color:green;">8</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">8</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;lp</td>
<td style="text-align:center;color:green;">62</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">62</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;sdp</td>
<td style="text-align:center;color:green;">37</td>
<td style="text-align:center;color:red;">25</td>
<td style="text-align:center;color:red;">2</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">64</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_socp_abs_atom</td>
<td style="text-align:center;color:green;">4</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">4</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_matrix_frac_atom_both_arguments_variable</td>
<td style="text-align:center;color:green;">1</td>
<td style="text-align:center;color:red;">1</td>
<td style="text-align:center;color:red;">1</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_Complex_Variable_with_complex_equality_constraints</td>
<td style="text-align:center;color:green;">2</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">2</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_kron_atom</td>
<td style="text-align:center;color:green;">2</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">2</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_nuclear_norm_atom</td>
<td style="text-align:center;color:green;">1</td>
<td style="text-align:center;color:red;">2</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_sum_largest_eigs</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:red;">5</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">5</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_socp_sumsquares_atom</td>
<td style="text-align:center;color:green;">4</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">4</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_operator_norm_atom</td>
<td style="text-align:center;color:green;">1</td>
<td style="text-align:center;color:red;">2</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_Issue_198</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:red;">3</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_lambda_min_atom</td>
<td style="text-align:center;color:green;">1</td>
<td style="text-align:center;color:red;">2</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_Partial_trace</td>
<td style="text-align:center;color:green;">7</td>
<td style="text-align:center;color:red;">2</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">9</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_Real_Variables_with_complex_equality_constraints</td>
<td style="text-align:center;color:green;">1</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">1</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_sdp_constraints</td>
<td style="text-align:center;color:green;">1</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">1</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_sigma_max_atom</td>
<td style="text-align:center;color:green;">1</td>
<td style="text-align:center;color:red;">2</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_dual_lambda_max_atom</td>
<td style="text-align:center;color:green;">1</td>
<td style="text-align:center;color:red;">5</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">6</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_matrix_frac_atom</td>
<td style="text-align:center;color:green;">1</td>
<td style="text-align:center;color:red;">1</td>
<td style="text-align:center;color:red;">1</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">3</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_socp_norm2_atom</td>
<td style="text-align:center;color:green;">4</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">4</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sdp_sdp_variables</td>
<td style="text-align:center;color:green;">5</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">5</td>
</tr><tr><td style="text-align:left;border-right: solid 2px;">&nbsp;&nbsp;SumOfSquares</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
</tr></table>
```

### Errors

```julia
Error in testset socp_dual_minimal_norm_solutions:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/socp.jl:417
  Expression: ≈(p.optval, 1.5, atol=atol, rtol=rtol)
   Evaluated: -0.1482853037893854667561755504342657921142366130608660706548383045021534535065042 ≈ 1.5 (atol=0.001, rtol=0.0)

Error in testset socp_dual_minimal_norm_solutions:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/socp.jl:418
  Expression: ≈(evaluate(x), [0, 1.5], atol=atol, rtol=rtol)
   Evaluated: [0.6000000110484164, 1.1999999944757918] ≈ [0.0, 1.5] (atol=0.001, rtol=0.0)

Error in testset socp_dual_minimal_norm_solutions:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/socp.jl:419
  Expression: ≈(evaluate(norm(x, 1)), p.optval, atol=atol, rtol=rtol)
   Evaluated: 1.800000005524208 ≈ -0.1482853037893854667561755504342657921142366130608660706548383045021534535065042 (atol=0.001, rtol=0.0)

Error in testset socp_dual_minimal_norm_solutions:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/socp.jl:433
  Expression: ≈(p.optval, 3 / sqrt(5), atol=atol, rtol=rtol)
   Evaluated: -2743.35387923666066467120962991194791108901816975237826611645981168620445422827 ≈ 1.3416407864998738 (atol=0.001, rtol=0.0)

Error in testset socp_dual_minimal_norm_solutions:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/socp.jl:434
  Expression: ≈(evaluate(x), [3 / 5, 6 / 5], atol=atol, rtol=rtol)
   Evaluated: [2220.7171865010464, -1108.8585932505232] ≈ [0.6, 1.2] (atol=0.001, rtol=0.0)

Error in testset socp_dual_minimal_norm_solutions:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/socp.jl:435
  Expression: ≈(evaluate(norm(x, 2)), p.optval, atol=atol, rtol=rtol)
   Evaluated: 2482.166836102411 ≈ -2743.35387923666066467120962991194791108901816975237826611645981168620445422827 (atol=0.001, rtol=0.0)

Error in testset socp_dual_minimal_norm_solutions:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/socp.jl:449
  Expression: ≈(p.optval, 1.0, atol=atol, rtol=rtol)
   Evaluated: 0.007412779623793035550106996903162097722764160318740968150831369050361667595336805 ≈ 1.0 (atol=0.001, rtol=0.0)

Error in testset socp_dual_minimal_norm_solutions:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/socp.jl:450
  Expression: ≈(evaluate(x), [1, 1], atol=atol, rtol=rtol)
   Evaluated: [0.6000000052200436, 1.1999999973899782] ≈ [1, 1] (atol=0.001, rtol=0.0)

Error in testset socp_dual_minimal_norm_solutions:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/socp.jl:451
  Expression: ≈(evaluate(norm(x, Inf)), p.optval, atol=atol, rtol=rtol)
   Evaluated: 1.1999999973899782 ≈ 0.007412779623793035550106996903162097722764160318740968150831369050361667595336805 (atol=0.001, rtol=0.0)

Error in testset sdp_matrix_frac_atom_both_arguments_variable:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:177
  Expression: ≈(p.optval, 0.5, atol=atol, rtol=rtol)
   Evaluated: 0.0 ≈ 0.5 (atol=0.001, rtol=0.0)

Error in testset sdp_matrix_frac_atom_both_arguments_variable:
Error During Test at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:178
  Test threw exception
  Expression: ≈((evaluate(matrixfrac(x, P)))[1], 0.5, atol=atol, rtol=rtol)
  LinearAlgebra.LAPACKException(1)
  Stacktrace:
   [1] chklapackerror at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/LinearAlgebra/src/lapack.jl:38 [inlined]
   [2] trtrs!(::Char, ::Char, ::Char, ::Array{Float64,2}, ::Array{Float64,2}) at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/LinearAlgebra/src/lapack.jl:3413
   [3] ldiv! at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/LinearAlgebra/src/triangular.jl:656 [inlined]
   [4] inv at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/LinearAlgebra/src/triangular.jl:703 [inlined]
   [5] inv(::Array{Float64,2}) at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/LinearAlgebra/src/dense.jl:766
   [6] evaluate(::Convex.MatrixFracAtom) at /home/runner/.julia/packages/Convex/Y9BWU/src/atoms/sdp_cone/matrixfrac.jl:42
   [7] sdp_matrix_frac_atom_both_arguments_variable(::ConvexTests.ConvexBench.var"#2#3"{var"#5#6"}, ::Val{true}, ::Float64, ::Float64, ::Type{BigFloat}) at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:178
   [8] macro expansion at /home/runner/work/ConvexTests.jl/ConvexTests.jl/src/ConvexTests.jl:38 [inlined]
   [9] macro expansion at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/Test/src/Test.jl:1107 [inlined]
   [10] macro expansion at /home/runner/work/ConvexTests.jl/ConvexTests.jl/src/ConvexTests.jl:38 [inlined]
   [11] macro expansion at /home/runner/.julia/packages/TimerOutputs/dVnaw/src/TimerOutput.jl:190 [inlined]
   [12] (::ConvexTests.var"#3#4"{DataType,Float64,Float64,TimerOutputs.TimerOutput,ConvexTests.ConvexBench.var"#2#3"{var"#5#6"}})(::String, ::typeof(Convex.ProblemDepot.sdp_matrix_frac_atom_both_arguments_variable)) at /home/runner/work/ConvexTests.jl/ConvexTests.jl/src/ConvexTests.jl:36
  

Error in testset sdp_nuclear_norm_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:81
  Expression: ≈(p.optval, 3, atol=atol, rtol=rtol)
   Evaluated: 0.0 ≈ 3 (atol=0.001, rtol=0.0)

Error in testset sdp_nuclear_norm_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:82
  Expression: ≈(evaluate(nuclearnorm(y)), 3, atol=atol, rtol=rtol)
   Evaluated: 0.0 ≈ 3 (atol=0.001, rtol=0.0)

Error in testset sdp_sum_largest_eigs:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:189
  Expression: ≈(p.optval, 3, atol=atol, rtol=rtol)
   Evaluated: 6431.41168849879706834765127062665768194209146611643030177029481491204775074112 ≈ 3 (atol=0.001, rtol=0.0)

Error in testset sdp_sum_largest_eigs:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:190
  Expression: ≈(evaluate(x), ones(3, 3), atol=atol, rtol=rtol)
   Evaluated: [16779.50717048002 8471.372689808464 8471.372689808464; 8471.372689808464 16779.50717048002 8471.372689808464; 8471.372689808464 8471.372689808464 16779.50717048002] ≈ [1.0 1.0 1.0; 1.0 1.0 1.0; 1.0 1.0 1.0] (atol=0.001, rtol=0.0)

Error in testset sdp_sum_largest_eigs:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:199
  Expression: ≈(p.optval, 8.4853, atol=atol, rtol=rtol)
   Evaluated: 1245.185528381197136344769284781698380951719500959657128661413866617199177295529 ≈ 8.4853 (atol=0.001, rtol=0.0)

Error in testset sdp_sum_largest_eigs:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:213
  Expression: ≈(p1.optval, p2.optval, atol=atol, rtol=rtol)
   Evaluated: 2713.239900534070389007668789324896103648952650511662412627517908005869160722302 ≈ 871.5779938071185069902227778371507267171196051242804046583393011536465333787383 (atol=0.001, rtol=0.0)

Error in testset sdp_sum_largest_eigs:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:227
  Expression: ≈(p1.optval, p2.optval, atol=atol, rtol=rtol)
   Evaluated: 10389.54943761902538002863404147503284978963553540043711951337414330966344811676 ≈ 10129.36719337053737180944678621519482620265702814794914123741874446417692532218 (atol=0.001, rtol=0.0)

Error in testset sdp_operator_norm_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:95
  Expression: ≈(p.optval, 4, atol=atol, rtol=rtol)
   Evaluated: 0.0 ≈ 4 (atol=0.001, rtol=0.0)

Error in testset sdp_operator_norm_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:96
  Expression: ≈(evaluate(opnorm(y)), 4, atol=atol, rtol=rtol)
   Evaluated: 0.0 ≈ 4 (atol=0.001, rtol=0.0)

Error in testset sdp_Issue_198:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:355
  Expression: p.status == MOI.OPTIMAL
   Evaluated: MathOptInterface.ITERATION_LIMIT == MathOptInterface.OPTIMAL

Error in testset sdp_Issue_198:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:356
  Expression: ≈(evaluate(ρ), [1.0 0.0; 0.0 1.0], atol=atol, rtol=rtol)
   Evaluated: Complex{Float64}[0.9900990099009901 + 0.0im 0.0 + 0.0im; 0.0 + 0.0im 0.9900990099009901 + 0.0im] ≈ [1.0 0.0; 0.0 1.0] (atol=0.001, rtol=0.0)

Error in testset sdp_Issue_198:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:357
  Expression: ≈(p.optval, 0, atol=atol, rtol=rtol)
   Evaluated: -94330.65573056025349470559404961234157775122592660699017814631073332135072437814 ≈ 0 (atol=0.001, rtol=0.0)

Error in testset sdp_lambda_min_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:147
  Expression: ≈(p.optval, 2, atol=atol, rtol=rtol)
   Evaluated: 85259.8729989786499014656020383361670856087797083539121879225112937849341670311 ≈ 2 (atol=0.001, rtol=0.0)

Error in testset sdp_lambda_min_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:148
  Expression: ≈(evaluate(eigmin(y)), 2, atol=atol, rtol=rtol)
   Evaluated: -575.3264022134593 ≈ 2 (atol=0.001, rtol=0.0)

Error in testset sdp_Partial_trace:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:256
  Expression: ≈(evaluate(ρ), [0.09942819 0.29923607 0 0; 0.299237 0.900572 0 0; 0 0 0 0; 0 0 0 0], atol=atol, rtol=rtol)
   Evaluated: [0.0 0.0 0.0 0.0; 0.0 0.0 0.0 0.0; 0.0 0.0 0.0 0.0; 0.0 0.0 0.0 0.0] ≈ [0.09942819 0.29923607 0.0 0.0; 0.299237 0.900572 0.0 0.0; 0.0 0.0 0.0 0.0; 0.0 0.0 0.0 0.0] (atol=0.001, rtol=0.0)

Error in testset sdp_Partial_trace:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:257
  Expression: ≈(evaluate(partialtrace(ρ, 1, [2; 2])), [0.09942819 0.29923607; 0.29923607 0.90057181], atol=atol, rtol=rtol)
   Evaluated: [0.0 0.0; 0.0 0.0] ≈ [0.09942819 0.29923607; 0.29923607 0.90057181] (atol=0.001, rtol=0.0)

Error in testset sdp_sigma_max_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:109
  Expression: ≈(p.optval, 4, atol=atol, rtol=rtol)
   Evaluated: 0.0 ≈ 4 (atol=0.001, rtol=0.0)

Error in testset sdp_sigma_max_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:110
  Expression: ≈(evaluate(sigmamax(y)), 4, atol=atol, rtol=rtol)
   Evaluated: 0.0 ≈ 4 (atol=0.001, rtol=0.0)

Error in testset sdp_dual_lambda_max_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:123
  Expression: ≈(p.optval, 4, atol=atol, rtol=rtol)
   Evaluated: 2713.239900534070389007668789324896103648952650511662412627517908005869160722302 ≈ 4 (atol=0.001, rtol=0.0)

Error in testset sdp_dual_lambda_max_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:124
  Expression: ≈(evaluate(eigmax(y)), 4, atol=atol, rtol=rtol)
   Evaluated: 11123.941382649773 ≈ 4 (atol=0.001, rtol=0.0)

Error in testset sdp_dual_lambda_max_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:132
  Expression: ≈(p.optval, 1.5, atol=atol, rtol=rtol)
   Evaluated: -133675.7256795239257286488111501934270991637347477242601088926936150596153381599 ≈ 1.5 (atol=0.001, rtol=0.0)

Error in testset sdp_dual_lambda_max_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:133
  Expression: ≈((p.constraints[1]).dual, im, atol=atol, rtol=rtol)
   Evaluated: 0.0 + 10.57995106993723110940124018992642282066884351956559243769912117080291556964549im ≈ im (atol=0.001, rtol=0.0)

Error in testset sdp_dual_lambda_max_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:134
  Expression: ≈((p.constraints[2]).dual, 0.75, atol=atol, rtol=rtol)
   Evaluated: -66625.14556165859524608505383536253423765097258360619015629646511555086594424984 - 0.0im ≈ 0.75 (atol=0.001, rtol=0.0)

Error in testset sdp_matrix_frac_atom:
Test Failed at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:162
  Expression: ≈(p.optval, 7, atol=atol, rtol=rtol)
   Evaluated: 0.0 ≈ 7 (atol=0.001, rtol=0.0)

Error in testset sdp_matrix_frac_atom:
Error During Test at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:163
  Test threw exception
  Expression: ≈((evaluate(matrixfrac(x, P)))[1], 7, atol=atol, rtol=rtol)
  LinearAlgebra.LAPACKException(1)
  Stacktrace:
   [1] chklapackerror at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/LinearAlgebra/src/lapack.jl:38 [inlined]
   [2] trtrs!(::Char, ::Char, ::Char, ::Array{Float64,2}, ::Array{Float64,2}) at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/LinearAlgebra/src/lapack.jl:3413
   [3] ldiv! at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/LinearAlgebra/src/triangular.jl:656 [inlined]
   [4] inv at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/LinearAlgebra/src/triangular.jl:703 [inlined]
   [5] inv(::Array{Float64,2}) at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/LinearAlgebra/src/dense.jl:766
   [6] evaluate(::Convex.MatrixFracAtom) at /home/runner/.julia/packages/Convex/Y9BWU/src/atoms/sdp_cone/matrixfrac.jl:42
   [7] sdp_matrix_frac_atom(::ConvexTests.ConvexBench.var"#2#3"{var"#5#6"}, ::Val{true}, ::Float64, ::Float64, ::Type{BigFloat}) at /home/runner/.julia/packages/Convex/Y9BWU/src/problem_depot/problems/sdp.jl:163
   [8] macro expansion at /home/runner/work/ConvexTests.jl/ConvexTests.jl/src/ConvexTests.jl:38 [inlined]
   [9] macro expansion at /buildworker/worker/package_linux64/build/usr/share/julia/stdlib/v1.3/Test/src/Test.jl:1107 [inlined]
   [10] macro expansion at /home/runner/work/ConvexTests.jl/ConvexTests.jl/src/ConvexTests.jl:38 [inlined]
   [11] macro expansion at /home/runner/.julia/packages/TimerOutputs/dVnaw/src/TimerOutput.jl:190 [inlined]
   [12] (::ConvexTests.var"#3#4"{DataType,Float64,Float64,TimerOutputs.TimerOutput,ConvexTests.ConvexBench.var"#2#3"{var"#5#6"}})(::String, ::typeof(Convex.ProblemDepot.sdp_matrix_frac_atom)) at /home/runner/work/ConvexTests.jl/ConvexTests.jl/src/ConvexTests.jl:36
  

```


### Timing information
```julia
 ──────────────────────────────────────────────────────────────────────────────
                                       Time                   Allocations      
                               ──────────────────────   ───────────────────────
       Tot / % measured:            74.2s / 98.8%           7.52GiB / 99.1%    

 Section               ncalls     time   %tot     avg     alloc   %tot      avg
 ──────────────────────────────────────────────────────────────────────────────
 Convex                     1    67.7s  92.4%   67.7s   6.64GiB  89.1%  6.64GiB
   socp                     1    32.0s  43.7%   32.0s    819MiB  10.7%   819MiB
     socp_dual_frob...      1    22.8s  31.1%   22.8s   25.0MiB  0.33%  25.0MiB
     socp_dual_mini...      1    3.11s  4.24%   3.11s    306MiB  4.01%   306MiB
     socp_rational_...      1    1.26s  1.71%   1.26s   45.4MiB  0.60%  45.4MiB
     socp_dual_norm...      1    643ms  0.88%   643ms   56.8MiB  0.74%  56.8MiB
     socp_fix_multi...      1    496ms  0.68%   496ms   34.8MiB  0.46%  34.8MiB
     socp_inv_pos_atom      1    386ms  0.53%   386ms   15.5MiB  0.20%  15.5MiB
     socp_rational_...      1    359ms  0.49%   359ms   11.6MiB  0.15%  11.6MiB
     socp_square_atom       1    310ms  0.42%   310ms   17.4MiB  0.23%  17.4MiB
     socp_rational_...      1    253ms  0.35%   253ms   12.7MiB  0.17%  12.7MiB
     socp_quad_form...      1    219ms  0.30%   219ms   13.1MiB  0.17%  13.1MiB
     socp_huber_atom        1    148ms  0.20%   148ms   14.1MiB  0.19%  14.1MiB
     socp_quad_over...      1    146ms  0.20%   146ms   9.04MiB  0.12%  9.04MiB
     socp_geo_mean_...      1    131ms  0.18%   131ms   5.60MiB  0.07%  5.60MiB
     socp_sum_squar...      1    129ms  0.18%   129ms   8.81MiB  0.12%  8.81MiB
     socp_fix_and_f...      1   85.1ms  0.12%  85.1ms   4.94MiB  0.06%  4.94MiB
     socp_norm_cons...      1    435μs  0.00%   435μs   58.9KiB  0.00%  58.9KiB
     socp_sqrt_atom         1   96.3μs  0.00%  96.3μs   22.2KiB  0.00%  22.2KiB
   affine                   1    15.7s  21.5%   15.7s   4.64GiB  62.3%  4.64GiB
     affine_Partial...      1    9.59s  13.1%   9.59s   4.12GiB  55.2%  4.12GiB
     affine_reshape...      1    587ms  0.80%   587ms   18.5MiB  0.24%  18.5MiB
     affine_transpo...      1    540ms  0.74%   540ms   22.9MiB  0.30%  22.9MiB
     affine_dot_mul...      1    439ms  0.60%   439ms   31.4MiB  0.41%  31.4MiB
     affine_multipl...      1    370ms  0.50%   370ms   28.5MiB  0.37%  28.5MiB
     affine_hcat_atom       1    344ms  0.47%   344ms   9.50MiB  0.12%  9.50MiB
     affine_index_atom      1    339ms  0.46%   339ms   29.4MiB  0.39%  29.4MiB
     affine_vcat_atom       1    297ms  0.41%   297ms   11.8MiB  0.16%  11.8MiB
     affine_sum_atom        1    280ms  0.38%   280ms   23.2MiB  0.30%  23.2MiB
     affine_Diagona...      1    208ms  0.28%   208ms   20.5MiB  0.27%  20.5MiB
     affine_conv_atom       1    157ms  0.21%   157ms   9.88MiB  0.13%  9.88MiB
     affine_diag_atom       1    152ms  0.21%   152ms   16.2MiB  0.21%  16.2MiB
     affine_dualvalue       1    151ms  0.21%   151ms   13.3MiB  0.17%  13.3MiB
     affine_add_atom        1    150ms  0.21%   150ms   10.4MiB  0.14%  10.4MiB
     affine_satisfy...      1    116ms  0.16%   116ms   6.74MiB  0.09%  6.74MiB
     affine_dot_atom        1   75.0ms  0.10%  75.0ms   6.60MiB  0.09%  6.60MiB
     affine_dot_ato...      1   57.9ms  0.08%  57.9ms   3.72MiB  0.05%  3.72MiB
     affine_negate_...      1   56.3ms  0.08%  56.3ms   2.99MiB  0.04%  2.99MiB
     affine_trace_atom      1   50.0ms  0.07%  50.0ms   3.38MiB  0.04%  3.38MiB
     affine_permute...      1   25.5ms  0.03%  25.5ms    612KiB  0.01%   612KiB
     affine_kron_atom       1    197μs  0.00%   197μs   30.2KiB  0.00%  30.2KiB
   lp                       1    13.0s  17.7%   13.0s    537MiB  7.04%   537MiB
     lp_min_atom            1    3.26s  4.45%   3.26s   98.7MiB  1.29%  98.7MiB
     lp_minimum_atom        1    3.19s  4.36%   3.19s   29.2MiB  0.38%  29.2MiB
     lp_max_atom            1    3.18s  4.33%   3.18s   91.2MiB  1.20%  91.2MiB
     lp_sumsmallest...      1    628ms  0.86%   628ms   26.5MiB  0.35%  26.5MiB
     lp_sumlargest_...      1    522ms  0.71%   522ms   36.3MiB  0.48%  36.3MiB
     lp_dotsort_atom        1    329ms  0.45%   329ms   24.1MiB  0.32%  24.1MiB
     lp_dual_abs_atom       1    243ms  0.33%   243ms   18.3MiB  0.24%  18.3MiB
     lp_maximum_atom        1    124ms  0.17%   124ms   13.4MiB  0.18%  13.4MiB
     lp_pos_atom            1    104ms  0.14%   104ms   7.33MiB  0.10%  7.33MiB
     lp_dual_norm_i...      1   93.8ms  0.13%  93.8ms   4.79MiB  0.06%  4.79MiB
     lp_neg_atom            1   92.2ms  0.13%  92.2ms   5.29MiB  0.07%  5.29MiB
     lp_dual_norm_1...      1   89.3ms  0.12%  89.3ms   4.62MiB  0.06%  4.62MiB
     lp_hinge_loss_...      1   92.1μs  0.00%  92.1μs   21.4KiB  0.00%  21.4KiB
   sdp                      1    5.45s  7.43%   5.45s    531MiB  6.96%   531MiB
     sdp_matrix_fra...      1    664ms  0.91%   664ms   55.6MiB  0.73%  55.6MiB
     sdp_Complex_Va...      1    554ms  0.76%   554ms   16.6MiB  0.22%  16.6MiB
     sdp_sdp_variables      1    343ms  0.47%   343ms   31.9MiB  0.42%  31.9MiB
     sdp_Real_Varia...      1    340ms  0.46%   340ms   9.32MiB  0.12%  9.32MiB
     sdp_Partial_trace      1    274ms  0.37%   274ms   28.9MiB  0.38%  28.9MiB
     sdp_dual_lambd...      1    248ms  0.34%   248ms   29.1MiB  0.38%  29.1MiB
     sdp_sum_larges...      1    247ms  0.34%   247ms   29.3MiB  0.38%  29.3MiB
     sdp_socp_sumsq...      1    210ms  0.29%   210ms   10.5MiB  0.14%  10.5MiB
     sdp_Issue_198          1    201ms  0.27%   201ms   19.8MiB  0.26%  19.8MiB
     sdp_nuclear_no...      1    146ms  0.20%   146ms   20.6MiB  0.27%  20.6MiB
     sdp_sdp_constr...      1    130ms  0.18%   130ms   9.89MiB  0.13%  9.89MiB
     sdp_matrix_fra...      1    118ms  0.16%   118ms   10.4MiB  0.14%  10.4MiB
     sdp_sigma_max_...      1    107ms  0.15%   107ms   15.3MiB  0.20%  15.3MiB
     sdp_operator_n...      1   99.4ms  0.14%  99.4ms   15.0MiB  0.20%  15.0MiB
     sdp_socp_abs_atom      1   84.0ms  0.11%  84.0ms   5.42MiB  0.07%  5.42MiB
     sdp_socp_norm2...      1   80.0ms  0.11%  80.0ms   4.68MiB  0.06%  4.68MiB
     sdp_kron_atom          1   79.5ms  0.11%  79.5ms   7.13MiB  0.09%  7.13MiB
     sdp_lambda_min...      1   51.6ms  0.07%  51.6ms   4.88MiB  0.06%  4.88MiB
   constant                 1    1.57s  2.15%   1.57s    159MiB  2.09%   159MiB
     constant_Issue...      1    504ms  0.69%   504ms   68.2MiB  0.89%  68.2MiB
     constant_fix!_...      1    193ms  0.26%   193ms   11.2MiB  0.15%  11.2MiB
     constant_fix!_...      1    156ms  0.21%   156ms   10.2MiB  0.13%  10.2MiB
     constant_Test_...      1    129ms  0.18%   129ms   6.38MiB  0.08%  6.38MiB
     constant_Issue...      1    121ms  0.16%   121ms   10.0MiB  0.13%  10.0MiB
     constant_fix!_...      1   59.3ms  0.08%  59.3ms   3.93MiB  0.05%  3.93MiB
 SumOfSquares               1    5.58s  7.61%   5.58s    829MiB  10.9%   829MiB
   sdp                      1    3.12s  4.25%   3.12s    454MiB  5.95%   454MiB
     sos_scaled_biv...      1   82.5μs  0.00%  82.5μs   21.4KiB  0.00%  21.4KiB
     sos_univariate...      1   79.3μs  0.00%  79.3μs   21.4KiB  0.00%  21.4KiB
     quartic_ideal_rem      1   77.1μs  0.00%  77.1μs   21.5KiB  0.00%  21.5KiB
     sos_scaled_uni...      1   73.3μs  0.00%  73.3μs   21.4KiB  0.00%  21.4KiB
     sos_options_pr...      1   73.3μs  0.00%  73.3μs   21.4KiB  0.00%  21.4KiB
     sos_quartic_co...      1   72.0μs  0.00%  72.0μs   21.4KiB  0.00%  21.4KiB
     quartic_feasib...      1   71.6μs  0.00%  71.6μs   21.4KiB  0.00%  21.4KiB
     quadratic_feas...      1   71.3μs  0.00%  71.3μs   21.4KiB  0.00%  21.4KiB
     quartic_ideal          1   71.0μs  0.00%  71.0μs   21.4KiB  0.00%  21.4KiB
     rearrangement          1   70.4μs  0.00%  70.4μs   21.5KiB  0.00%  21.5KiB
     simple_matrix          1   68.9μs  0.00%  68.9μs   21.4KiB  0.00%  21.4KiB
     quartic_ideal_4        1   68.6μs  0.00%  68.6μs   21.4KiB  0.00%  21.4KiB
     sos_horn               1   68.0μs  0.00%  68.0μs   21.7KiB  0.00%  21.7KiB
     motzkin                1   67.7μs  0.00%  67.7μs   21.4KiB  0.00%  21.4KiB
     sosdemo9               1   67.4μs  0.00%  67.4μs   21.4KiB  0.00%  21.4KiB
     quartic_ideal_...      1   67.2μs  0.00%  67.2μs   21.4KiB  0.00%  21.4KiB
     quadratic_infe...      1   67.0μs  0.00%  67.0μs   21.4KiB  0.00%  21.4KiB
     sos_univariate...      1   66.7μs  0.00%  66.7μs   21.4KiB  0.00%  21.4KiB
     quartic_infeas...      1   66.5μs  0.00%  66.5μs   21.4KiB  0.00%  21.4KiB
     sos_cheby_univ...      1   66.4μs  0.00%  66.4μs   21.4KiB  0.00%  21.4KiB
     BPT12e399_rem          1   66.2μs  0.00%  66.2μs   21.4KiB  0.00%  21.4KiB
     sos_term               1   66.0μs  0.00%  66.0μs   21.4KiB  0.00%  21.4KiB
     BPT12e399_maxd...      1   66.0μs  0.00%  66.0μs   21.4KiB  0.00%  21.4KiB
     choi                   1   66.0μs  0.00%  66.0μs   21.4KiB  0.00%  21.4KiB
     sos_concave_th...      1   65.9μs  0.00%  65.9μs   21.4KiB  0.00%  21.4KiB
     quadratic_infe...      1   65.7μs  0.00%  65.7μs   21.4KiB  0.00%  21.4KiB
     sosdemo5_infea...      1   65.2μs  0.00%  65.2μs   21.4KiB  0.00%  21.4KiB
     quadratic_feas...      1   63.9μs  0.00%  63.9μs   21.4KiB  0.00%  21.4KiB
     maxcut                 1   63.7μs  0.00%  63.7μs   21.4KiB  0.00%  21.4KiB
     sosdemo10              1   63.4μs  0.00%  63.4μs   21.4KiB  0.00%  21.4KiB
     sosdemo5_feasible      1   63.2μs  0.00%  63.2μs   21.4KiB  0.00%  21.4KiB
     chebyshev              1   62.8μs  0.00%  62.8μs   21.4KiB  0.00%  21.4KiB
     sos_quartic_co...      1   62.4μs  0.00%  62.4μs   21.4KiB  0.00%  21.4KiB
     quartic_feasib...      1   61.3μs  0.00%  61.3μs   21.4KiB  0.00%  21.4KiB
     sos_bivariate_...      1   60.8μs  0.00%  60.8μs   21.9KiB  0.00%  21.9KiB
     sos_term_fixed         1   59.8μs  0.00%  59.8μs   21.4KiB  0.00%  21.4KiB
     quartic_ideal_...      1   58.4μs  0.00%  58.4μs   21.4KiB  0.00%  21.4KiB
     quartic_infeas...      1   58.1μs  0.00%  58.1μs   21.4KiB  0.00%  21.4KiB
   socp                     1    1.24s  1.69%   1.24s    188MiB  2.47%   188MiB
     sdsos_quartic_...      1   73.8μs  0.00%  73.8μs   21.4KiB  0.00%  21.4KiB
     sdsos_cheby_un...      1   72.5μs  0.00%  72.5μs   21.5KiB  0.00%  21.5KiB
     sdsos_quartic_...      1   67.3μs  0.00%  67.3μs   21.4KiB  0.00%  21.4KiB
     sdsos_horn             1   67.0μs  0.00%  67.0μs   21.4KiB  0.00%  21.4KiB
     sdsos_univaria...      1   66.9μs  0.00%  66.9μs   21.4KiB  0.00%  21.4KiB
     sdsos_bivariat...      1   66.7μs  0.00%  66.7μs   21.4KiB  0.00%  21.4KiB
     sdsos_options_...      1   65.7μs  0.00%  65.7μs   21.4KiB  0.00%  21.4KiB
     sdsos_scaled_b...      1   65.5μs  0.00%  65.5μs   21.4KiB  0.00%  21.4KiB
     sdsos_term             1   65.4μs  0.00%  65.4μs   21.4KiB  0.00%  21.4KiB
     sdsos_univaria...      1   64.5μs  0.00%  64.5μs   21.5KiB  0.00%  21.5KiB
     sdsos_term_fixed       1   64.2μs  0.00%  64.2μs   21.4KiB  0.00%  21.4KiB
     sdsos_scaled_u...      1   64.0μs  0.00%  64.0μs   21.4KiB  0.00%  21.4KiB
     sdsos_concave_...      1   61.9μs  0.00%  61.9μs   21.4KiB  0.00%  21.4KiB
   lp                       1    1.22s  1.67%   1.22s    186MiB  2.44%   186MiB
     dsos_cheby_uni...      1    178μs  0.00%   178μs   21.5KiB  0.00%  21.5KiB
     dsos_scaled_un...      1   71.0μs  0.00%  71.0μs   21.4KiB  0.00%  21.4KiB
     dsos_quartic_c...      1   70.6μs  0.00%  70.6μs   21.4KiB  0.00%  21.4KiB
     dsos_univariat...      1   69.7μs  0.00%  69.7μs   21.4KiB  0.00%  21.4KiB
     dsos_scaled_bi...      1   69.4μs  0.00%  69.4μs   21.5KiB  0.00%  21.5KiB
     dsos_term_fixed        1   68.6μs  0.00%  68.6μs   21.4KiB  0.00%  21.4KiB
     dsos_univariat...      1   66.1μs  0.00%  66.1μs   21.4KiB  0.00%  21.4KiB
     dsos_bivariate...      1   65.6μs  0.00%  65.6μs   21.4KiB  0.00%  21.4KiB
     dsos_options_p...      1   65.3μs  0.00%  65.3μs   21.4KiB  0.00%  21.4KiB
     dsos_cheby_biv...      1   64.4μs  0.00%  64.4μs   21.4KiB  0.00%  21.4KiB
     dsos_term              1   62.9μs  0.00%  62.9μs   21.4KiB  0.00%  21.4KiB
     dsos_horn              1   60.1μs  0.00%  60.1μs   21.4KiB  0.00%  21.4KiB
     dsos_concave_t...      1   60.1μs  0.00%  60.1μs   21.4KiB  0.00%  21.4KiB
     dsos_quartic_c...      1   57.9μs  0.00%  57.9μs   21.4KiB  0.00%  21.4KiB
 ──────────────────────────────────────────────────────────────────────────────
```

