Table of contents:

```@contents
Pages = ["Tulip.md"]
Depth = 4
```


Compilation warmup gives an estimate of 51 seconds of compilation time.

## Tulip Float64
These tests were run on August 15, 2020 at 23:54 (UTC).

Tests run with default parameters in type `Float64`.

Excluded problems and classes of problems:
```julia
Regex[r"mip", r"exp", r"socp", r"sdp"]
```

### Tests

Tests took 1 minute, 33 seconds to run (after warmup).

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
<tr><td style="text-align:left;border-right: solid 2px;">Tulip tests</td>
<td style="text-align:center;color:green;">730</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">730</td>
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
       Tot / % measured:            93.1s / 99.4%           9.74GiB / 100%     

 Section               ncalls     time   %tot     avg     alloc   %tot      avg
 ──────────────────────────────────────────────────────────────────────────────
 SumOfSquares               1    56.2s  60.7%   56.2s   5.40GiB  55.6%  5.40GiB
   lp                       1    56.0s  60.5%   56.0s   5.39GiB  55.5%  5.39GiB
     dsos_options_p...      1    9.01s  9.73%   9.01s    783MiB  7.88%   783MiB
     dsos_univariat...      1    8.76s  9.46%   8.76s    830MiB  8.35%   830MiB
     dsos_cheby_biv...      1    8.74s  9.44%   8.74s    854MiB  8.59%   854MiB
     dsos_concave_t...      1    6.44s  6.95%   6.44s    607MiB  6.10%   607MiB
     dsos_term_fixed        1    4.75s  5.14%   4.75s    406MiB  4.08%   406MiB
     dsos_horn              1    3.85s  4.16%   3.85s    362MiB  3.64%   362MiB
     dsos_quartic_c...      1    3.06s  3.30%   3.06s    266MiB  2.67%   266MiB
     dsos_scaled_bi...      1    2.95s  3.18%   2.95s    257MiB  2.59%   257MiB
     dsos_term              1    2.55s  2.76%   2.55s    219MiB  2.20%   219MiB
     dsos_quartic_c...      1    496ms  0.54%   496ms   22.7MiB  0.23%  22.7MiB
     dsos_bivariate...      1    485ms  0.52%   485ms   28.5MiB  0.29%  28.5MiB
     dsos_cheby_uni...      1    106ms  0.11%   106ms   12.8MiB  0.13%  12.8MiB
     dsos_scaled_un...      1   10.4ms  0.01%  10.4ms    555KiB  0.01%   555KiB
     dsos_univariat...      1   6.37ms  0.01%  6.37ms    554KiB  0.01%   554KiB
 Convex                     1    36.4s  39.3%   36.4s   4.31GiB  44.4%  4.31GiB
   affine                   1    22.5s  24.3%   22.5s   2.69GiB  27.7%  2.69GiB
     affine_Partial...      1    2.37s  2.56%   2.37s    291MiB  2.93%   291MiB
     affine_permute...      1    2.27s  2.45%   2.27s    321MiB  3.23%   321MiB
     affine_hcat_atom       1    1.70s  1.84%   1.70s    191MiB  1.92%   191MiB
     affine_multipl...      1    1.70s  1.84%   1.70s    212MiB  2.13%   212MiB
     affine_dot_mul...      1    1.55s  1.68%   1.55s    111MiB  1.12%   111MiB
     affine_transpo...      1    1.51s  1.63%   1.51s    170MiB  1.71%   170MiB
     affine_vcat_atom       1    1.00s  1.08%   1.00s    100MiB  1.00%   100MiB
     affine_Diagona...      1    944ms  1.02%   944ms    108MiB  1.08%   108MiB
     affine_satisfy...      1    835ms  0.90%   835ms   57.4MiB  0.58%  57.4MiB
     affine_add_atom        1    776ms  0.84%   776ms   57.1MiB  0.57%  57.1MiB
     affine_conv_atom       1    694ms  0.75%   694ms   53.0MiB  0.53%  53.0MiB
     affine_dualvalue       1    487ms  0.53%   487ms   47.1MiB  0.47%  47.1MiB
     affine_index_atom      1    464ms  0.50%   464ms   42.2MiB  0.42%  42.2MiB
     affine_dot_atom        1    435ms  0.47%   435ms   19.2MiB  0.19%  19.2MiB
     affine_reshape...      1    433ms  0.47%   433ms   27.8MiB  0.28%  27.8MiB
     affine_sum_atom        1    297ms  0.32%   297ms   31.1MiB  0.31%  31.1MiB
     affine_kron_atom       1    218ms  0.24%   218ms   20.2MiB  0.20%  20.2MiB
     affine_diag_atom       1   99.5ms  0.11%  99.5ms   14.1MiB  0.14%  14.1MiB
     affine_dot_ato...      1   90.1ms  0.10%  90.1ms   4.88MiB  0.05%  4.88MiB
     affine_negate_...      1   77.5ms  0.08%  77.5ms   3.74MiB  0.04%  3.74MiB
     affine_trace_atom      1   37.3ms  0.04%  37.3ms   2.57MiB  0.03%  2.57MiB
   constant                 1    7.56s  8.16%   7.56s    902MiB  9.07%   902MiB
     constant_fix!_...      1    2.57s  2.78%   2.57s    264MiB  2.65%   264MiB
     constant_Issue...      1    2.30s  2.49%   2.30s    274MiB  2.75%   274MiB
     constant_Issue...      1    582ms  0.63%   582ms   53.9MiB  0.54%  53.9MiB
     constant_fix!_...      1    442ms  0.48%   442ms   44.7MiB  0.45%  44.7MiB
     constant_Test_...      1    264ms  0.28%   264ms   19.3MiB  0.19%  19.3MiB
     constant_fix!_...      1    229ms  0.25%   229ms   19.9MiB  0.20%  19.9MiB
   lp                       1    6.16s  6.65%   6.16s    735MiB  7.38%   735MiB
     lp_dotsort_atom        1    970ms  1.05%   970ms   98.1MiB  0.99%  98.1MiB
     lp_dual_abs_atom       1    634ms  0.68%   634ms   79.9MiB  0.80%  79.9MiB
     lp_min_atom            1    465ms  0.50%   465ms   48.2MiB  0.48%  48.2MiB
     lp_sumlargest_...      1    461ms  0.50%   461ms   48.3MiB  0.49%  48.3MiB
     lp_sumsmallest...      1    450ms  0.49%   450ms   46.5MiB  0.47%  46.5MiB
     lp_max_atom            1    348ms  0.38%   348ms   40.1MiB  0.40%  40.1MiB
     lp_dual_norm_i...      1    313ms  0.34%   313ms   23.5MiB  0.24%  23.5MiB
     lp_minimum_atom        1    282ms  0.31%   282ms   27.6MiB  0.28%  27.6MiB
     lp_neg_atom            1    202ms  0.22%   202ms   11.7MiB  0.12%  11.7MiB
     lp_maximum_atom        1    172ms  0.19%   172ms   12.7MiB  0.13%  12.7MiB
     lp_pos_atom            1   87.3ms  0.09%  87.3ms   6.33MiB  0.06%  6.33MiB
     lp_dual_norm_1...      1   68.5ms  0.07%  68.5ms   3.64MiB  0.04%  3.64MiB
     lp_hinge_loss_...      1    270μs  0.00%   270μs   49.7KiB  0.00%  49.7KiB
 ──────────────────────────────────────────────────────────────────────────────
```

## Tulip BigFloat
These tests were run on August 15, 2020 at 23:54 (UTC).

Tests run with default parameters in type `BigFloat`.

Excluded problems and classes of problems:
```julia
Regex[r"mip", r"exp", r"socp", r"sdp"]
```

### Tests

Tests took 36 seconds to run (after warmup).

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
<tr><td style="text-align:left;border-right: solid 2px;">Tulip tests</td>
<td style="text-align:center;color:green;">229</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;">0</td>
<td style="text-align:center;color:blue;">229</td>
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
       Tot / % measured:            35.2s / 100%            3.97GiB / 100%     

 Section               ncalls     time   %tot     avg     alloc   %tot      avg
 ──────────────────────────────────────────────────────────────────────────────
 Convex                     1    35.2s   100%   35.2s   3.97GiB  100%   3.97GiB
   constant                 1    23.3s  66.2%   23.3s   2.32GiB  58.5%  2.32GiB
     constant_Issue...      1    22.1s  62.6%   22.1s   2.21GiB  55.7%  2.21GiB
     constant_fix!_...      1    270ms  0.77%   270ms   14.4MiB  0.36%  14.4MiB
     constant_fix!_...      1    159ms  0.45%   159ms   9.08MiB  0.22%  9.08MiB
     constant_Issue...      1    107ms  0.30%   107ms   8.88MiB  0.22%  8.88MiB
     constant_Test_...      1    102ms  0.29%   102ms   4.30MiB  0.11%  4.30MiB
     constant_fix!_...      1   48.1ms  0.14%  48.1ms   3.15MiB  0.08%  3.15MiB
   affine                   1    8.04s  22.8%   8.04s    737MiB  18.2%   737MiB
     affine_multipl...      1    2.48s  7.05%   2.48s    174MiB  4.28%   174MiB
     affine_transpo...      1    519ms  1.47%   519ms   22.6MiB  0.56%  22.6MiB
     affine_dot_mul...      1    396ms  1.12%   396ms   28.3MiB  0.70%  28.3MiB
     affine_dualvalue       1    390ms  1.11%   390ms   47.8MiB  1.18%  47.8MiB
     affine_Partial...      1    376ms  1.07%   376ms   53.6MiB  1.32%  53.6MiB
     affine_reshape...      1    276ms  0.78%   276ms   15.3MiB  0.38%  15.3MiB
     affine_index_atom      1    263ms  0.75%   263ms   23.2MiB  0.57%  23.2MiB
     affine_sum_atom        1    235ms  0.67%   235ms   20.5MiB  0.51%  20.5MiB
     affine_Diagona...      1    223ms  0.63%   223ms   19.3MiB  0.48%  19.3MiB
     affine_add_atom        1    163ms  0.46%   163ms   8.54MiB  0.21%  8.54MiB
     affine_satisfy...      1    159ms  0.45%   159ms   6.49MiB  0.16%  6.49MiB
     affine_conv_atom       1    154ms  0.44%   154ms   8.49MiB  0.21%  8.49MiB
     affine_negate_...      1    110ms  0.31%   110ms   2.56MiB  0.06%  2.56MiB
     affine_diag_atom       1    107ms  0.30%   107ms   14.0MiB  0.34%  14.0MiB
     affine_vcat_atom       1   90.3ms  0.26%  90.3ms   9.23MiB  0.23%  9.23MiB
     affine_hcat_atom       1   82.7ms  0.23%  82.7ms   6.87MiB  0.17%  6.87MiB
     affine_dot_atom        1   61.5ms  0.17%  61.5ms   5.86MiB  0.14%  5.86MiB
     affine_dot_ato...      1   45.7ms  0.13%  45.7ms   2.93MiB  0.07%  2.93MiB
     affine_trace_atom      1   42.6ms  0.12%  42.6ms   2.60MiB  0.06%  2.60MiB
     affine_permute...      1   38.4ms  0.11%  38.4ms   4.65MiB  0.11%  4.65MiB
     affine_kron_atom       1   26.2ms  0.07%  26.2ms   3.36MiB  0.08%  3.36MiB
   lp                       1    3.86s  10.9%   3.86s    949MiB  23.4%   949MiB
     lp_dotsort_atom        1    532ms  1.51%   532ms   75.4MiB  1.86%  75.4MiB
     lp_max_atom            1    458ms  1.30%   458ms    249MiB  6.14%   249MiB
     lp_min_atom            1    449ms  1.28%   449ms    240MiB  5.90%   240MiB
     lp_sumlargest_...      1    266ms  0.76%   266ms   47.5MiB  1.17%  47.5MiB
     lp_sumsmallest...      1    219ms  0.62%   219ms   63.6MiB  1.57%  63.6MiB
     lp_dual_abs_atom       1    218ms  0.62%   218ms   24.9MiB  0.61%  24.9MiB
     lp_dual_norm_i...      1    191ms  0.54%   191ms   17.4MiB  0.43%  17.4MiB
     lp_minimum_atom        1    173ms  0.49%   173ms   18.3MiB  0.45%  18.3MiB
     lp_pos_atom            1   86.4ms  0.25%  86.4ms   7.66MiB  0.19%  7.66MiB
     lp_maximum_atom        1   84.9ms  0.24%  84.9ms   18.9MiB  0.47%  18.9MiB
     lp_neg_atom            1   67.8ms  0.19%  67.8ms   6.49MiB  0.16%  6.49MiB
     lp_dual_norm_1...      1   65.5ms  0.19%  65.5ms   8.30MiB  0.20%  8.30MiB
     lp_hinge_loss_...      1    236μs  0.00%   236μs   49.7KiB  0.00%  49.7KiB
 ──────────────────────────────────────────────────────────────────────────────
```

## Version information
`versioninfo()`:
```julia
Julia Version 1.3.1
Commit 2d5741174c (2019-12-30 21:36 UTC)
Platform Info:
  OS: Linux (x86_64-pc-linux-gnu)
  CPU: Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-6.0.1 (ORCJIT, skylake)
```

Manifest:
```julia
    Status `~/work/ConvexTests.jl/ConvexTests.jl/Tulip/Manifest.toml`
  [14f7f29c] AMD v0.4.0
  [1520ce14] AbstractTrees v0.3.3
  [6e4b80f9] BenchmarkTools v0.5.0
  [6e34b625] Bzip2_jll v1.0.6+3
  [49dc2e85] Calculus v0.5.1
  [523fee87] CodecBzip2 v0.7.2
  [944b1d66] CodecZlib v0.7.0
  [bbf7d656] CommonSubexpressions v0.3.0
  [34da2185] Compat v2.2.0
  [e66e0078] CompilerSupportLibraries_jll v0.3.3+0
  [f65535da] Convex v0.13.4
  [cb7cb77b] ConvexTests v0.1.0 [`~/work/ConvexTests.jl/ConvexTests.jl`]
  [9a962f9c] DataAPI v1.3.0
  [864edb3b] DataStructures v0.17.20
  [e2d170a0] DataValueInterfaces v1.0.0
  [163ba53b] DiffResults v1.0.2
  [b552c78f] DiffRules v1.0.1
  [7c1d4256] DynamicPolynomials v0.3.12
  [f6369f11] ForwardDiff v0.10.12
  [cd3eb016] HTTP v0.8.17
  [83e8ac13] IniFile v0.5.0
  [82899510] IteratorInterfaceExtensions v1.0.0
  [682c06a0] JSON v0.21.0
  [7d188eb4] JSONSchema v0.3.1
  [4076af6c] JuMP v0.21.3
  [40e66cde] LDLFactorizations v0.5.0
  [1914dd2f] MacroTools v0.5.5
  [b8f27783] MathOptInterface v0.9.14
  [739be429] MbedTLS v1.0.2
  [c8ffd9c3] MbedTLS_jll v2.16.6+1
  [be282fd4] MultivariateBases v0.1.2
  [f4abf1af] MultivariateMoments v0.3.0
  [102ac46a] MultivariatePolynomials v0.3.10
  [d8a4904e] MutableArithmetics v0.2.10
  [77ba4419] NaNMath v0.3.4
  [efe28fd5] OpenSpecFun_jll v0.5.3+3
  [bac558e1] OrderedCollections v1.3.0
  [69de0a69] Parsers v1.0.10
  [ddf597a6] PolyJuMP v0.4.0
  [10f199a5] QPSReader v0.1.1
  [189a3867] Reexport v0.2.0
  [af85af4c] RowEchelon v0.1.1
  [8e049039] SemialgebraicSets v0.2.1
  [276daf66] SpecialFunctions v0.10.3
  [90137ffa] StaticArrays v0.12.4
  [4b9e565b] SumOfSquares v0.4.1
  [f9bf3ced] TableTestSets v0.1.0 #master (https://github.com/ericphanson/TableTestSets.jl)
  [3783bdb8] TableTraits v1.0.0
  [bd369af6] Tables v1.0.5
  [a759f4b9] TimerOutputs v0.5.6
  [3bb67fe8] TranscodingStreams v0.9.5
  [6dd1b50a] Tulip v0.5.1
  [a5390f91] ZipFile v0.9.2
  [83775a58] Zlib_jll v1.2.11+15
  [2a0f44e3] Base64 
  [ade2ca70] Dates 
  [8bb1440f] DelimitedFiles 
  [8ba89e20] Distributed 
  [9fa8497b] Future 
  [b77e0a4c] InteractiveUtils 
  [76f85450] LibGit2 
  [8f399da3] Libdl 
  [37e2e46d] LinearAlgebra 
  [56ddb016] Logging 
  [d6f4376e] Markdown 
  [a63ad114] Mmap 
  [44cfe95a] Pkg 
  [de0858da] Printf 
  [3fa0cd96] REPL 
  [9a3f8284] Random 
  [ea8e919c] SHA 
  [9e88b42a] Serialization 
  [1a1011a3] SharedArrays 
  [6462fe0b] Sockets 
  [2f01184e] SparseArrays 
  [10745b16] Statistics 
  [4607b0f0] SuiteSparse 
  [8dfed614] Test 
  [cf7118a7] UUIDs 
  [4ec0a83e] Unicode 
```
