using Plots
using DifferentialEquations

const N = 1670
const N0 = 12

T1 = (0, 30)

T2 = (0, 0.25)

u0 = [N0]

# 1 случай (alpha1 >> alpha2)

function F1(du, u, p, t)
     du[1] = (0.133 + 0.000033*u[1])*(N - u[1])
end

prob1 = ODEProblem(F1, u0, T1)
sol1 = solve(prob1, dtmax=0.1)

plt1 = plot(sol1, color=:red, title="Распространение рекламы, 1 случай", legend=false, xlabel="t", ylabel="N(t)")

savefig(plt1, "lab7_1.png")

# 2 случай (alpha1 << alpha2)

maxx = [-10000.0, 0]

function F2(du, u, p, t)
    du[1] = (0.0000132 + 0.32*u[1])*(N - u[1])

    if du[1] > maxx[1]
        maxx[1] = du[1]
        maxx[2] = t
    end
end

prob2 = ODEProblem(F2, u0, T2)
sol2 = solve(prob2, dtmax=0.001)

println("t = ", maxx[2])

plt2 = plot(sol2, color=:red, title="Распространение рекламы, 2 случай", legend=false, xlabel="t", ylabel="N(t)")

savefig(plt2, "lab7_2.png")

# 3 случай (alpha1, alpha2 - периодические функции)

function F3(du, u, p, t)
    du[1] = (0.8(t) + 15*sin(t)*u[1])*(N - u[1])
end

prob3 = ODEProblem(F3, u0, T2)
sol3 = solve(prob3, dtmax=0.001)

plt3 = plot(sol3, color=:red, title="Распространение рекламы, 3 случай", legend=false, xlabel="t", ylabel="N(t)")

savefig(plt3, "lab7_3.png")