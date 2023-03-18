using Plots
using DifferentialEquations

N = 15500
I0 = 115
R0 = 15
S0 = N - I0 - R0
a = 0.01
b = 0.02

function ode_fn(du, u, p, t)
    S, I, R = u;
    du[1] = -a*u[1]
    du[2] = a*u[1]-b*u[2]
    du[3] = b*u[2]
end

v0 = [S0, I0, R0]
tspan = (0.0, 60.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
S = [u[1] for u in sol.u]
I = [u[2] for u in sol.u]
R = [u[3] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
    dpi = 300,
    legend =:topright)

plot!(
    plt,
    T,
    S,
    label = "Восприимчивые к болезни",
    color = :red)

plot!(
    plt,
    T,
    I,
    label = "Заболевшие",
    color = :blue)

plot!(
    plt,
    T,
    R,
    label = "Особи с иммунитетом",
    color = :green)



