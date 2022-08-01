using Pkg
Pkg.add("Plots")

using Pkg
Pkg.add("DataFrames")

using Plots
x = 0:0.01π:2π

plot(x, sin.(x); label = "sinus", linewidth = 2)
plot!(x, cos.(x); label = "cosinus", linewidth = 2)

c = - 0.4 + 0.61im
R = 2
N = 1000
L = 1500
K = 1000

x = range(-1.5, 1.5; length = L)
y = range(-1.00, 1.0; length = K)

A = zeros(K, L)

for k in 1:K, l in 1:L
    z = x[l] + y[k]*im
    for n in 0:N
        if abs(z) > R^2 - R
            A[k, l] = n/N
            break
        end
        z = z^2 + c
    end
end

using Plots
heatmap(A;
    c = :viridis,
    clims = (0, 0.15),
    cbar = :none,
    axis = :none,
    ticks = :none)

function juliaset(z, c, R, N)
    n = 0
    while n <= N && abs(z) <= R^2 - R
        n += 1
        z = z^2 + c
    end
    return n > N ? 0 : n/N
end

c = - 0.4 + 0.61im
R = 2
N = 1000
x = range(-1.5, 1.5; length = 1500)
y = range(-1.0, 1.0; length = 1000)

A1 = [juliaset(xl + yk*im, c, R, N) for yk in y, xl in x]
A2 = juliaset.(x' .+ y .* im, c, R, N)

using Plots
heatmap(A1;
    c = :viridis,
    clims = (0, 0.15),
    cbar = :none,
    axis = :none,
    ticks = :none,
    size = (800, 600),
)

import Pkg;
Pkg.add("PyPlot")

using Plots, PyPlot
pyplot()

cs = 0.7885 .* exp.(range(π/2, 3π/2; length = 500) .* im)

anim = @animate for c in cs
    A = juliaset.(x' .+ y .* im, c, R, N)
    heatmap(A;
        c = :viridis,
        clims = (0, 0.15),
        cbar = :none,
        axis = :none,
        ticks = :none,
        size = (800, 600),
    )
end
gif(anim, "juliaset.gif", fps = 20) # guardar animación como gif




