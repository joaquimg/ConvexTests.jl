using ConvexTests, ProxSDP

@info "Starting ProxSDP tests"
do_tests("ProxSDP", () -> ProxSDP.Optimizer(tol_primal=1e-6, tol_dual=1e-6); exclude = [r"mip", r"exp"], description="Tests run with `tol_primal=1e-6` and `tol_dual=1e-6`.")
