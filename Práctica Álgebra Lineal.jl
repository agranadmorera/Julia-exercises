import LinearAlgebra as la #or
import LinearAlgebra
const LinearAlgebra = la

import Pkg; Pkg.add("Animations")

import Pkg; Pkg.add("Javis")

import Pkg; Pkg.add("Unitful")
import Pkg; Pkg.add("PeriodicTable")

using Animations
using Javis
using PeriodicTable
using Unitful

a = zeros(Int64,10)

sizeof(a)
length(a)*sizeof(eltype(a))

?zeros

a = zeros(Int,10)
a[5] = 1

a = [10:49;]
a = collect(10:49)

a[end:-1:1] #faster
reverse(a)
reverse!(a) #inplace

a = reshape(0:8,3,3)

a = reshape(0:11,3,4)

findall(!isequal(0),a)
findall(!iszero,a)
findall(!=(0),a)

using LinearAlgebra
a = I(3)
a = Matrix(1.0I,3,3)

a = rand(3,3,3) #numbers in the range 0 to 1
b = randn(3,3,3) #Gaussian random numbers

a = rand(10,10)
minm = minimum(a)
maxm = maximum(a)
minm, maxm = extrema(a)

using Statistics
a = rand(30) #rand(30,)
b = mean(a)

a = rand(5, 5)
b = zeros(Float64, size(a,1) + 2, size(a,2) + 2) # b = zeros(eltype(a), size(a) .+1)
b[2:end-1, 2:end-1] = a

a = Bidiagonal(zeros(5,), collect(1:4), :L)

a = zeros(Int64, 8, 8)
a[1:2:end, 1:2:end] .= 1
a[2:2:end, 2:2:end] .= 1 #or
a = [Int(isodd(i+j)) for i in 1:8, j in 1:8]

m = 100
n, p, r = 6, 7, 8
page = Int64(ceil(m/n/p))
col = Int64(ceil((m-(page-1)*n*p)/n))
row = Int64(ceil((m-(page-1)*n*p-(col-1)*n)/n))

CartesianIndices((6, 7, 8))[m] #builtin command

repeat([1 0;0 1], 4, 4)

a = randn(5, 5)
a = a .- minimum(a)
a = a./maximum(a)

mutable struct color
    R::UInt8
    G::UInt8
    B::UInt8
    A::UInt8
end

a = rand(5, 3); b = rand(3, 2)
c = a*b

a = 3;b = 8;
x = rand(1:10,20) # collect(1:10)
x[a .<= x .<= b] .= -x[a .<= x .<= b] #or
x[a .<= x .<= b] .*= -1.

round.(-4.5, RoundNearestTiesAway)

using Dates
tod = today()
tom = tod + Day(1)
yes = tod + Day(-1)

using Dates
mon = collect(Date(1988,3,1):Day(1):Date(1988, 3, 21))

A = rand(2, 2); B = rand(2, 2)
@. A = ((A+B)*(-A/2))

A = 10*rand(1,10)
Int64.(trunc.(A))
B = parse.(Int64,[split(string(x),".")[1] for x in A])
Int64.(floor.(A))
Int64.(ceil.(A)) .- 1

a = rand(0:4,5,5)

a = collect(1:10)

a = rand(10)

a = rand(10,)
sort!(a)

isequal(A,B)

a = rand(10,2);
ang = angle.(a[:,1] .+ 1im*a[:,2])
r = hypot.(a[:,1] .+ a[:,2])# sqrt.(a[:,1].^2 .+ a[:,2].^2)
p = r.*cis.(ang)  # r.*exp.(1im*ang) 
#or
to_polar(x, y) = hypot(x, y) * cis(angle(x+im*y))
[to_polar(x...) for x in eachrow(a)] #or
[to_polar(a[i, 1], a[i, 2]) for i in axes(a, 1)] 

a = rand(10)
a[a .==  maximum(a)] .= 0

X = rand(5);Y = rand(5);
C = [1/(xi-yi) for xi in X, yi in Y]#or
C = 1 ./ (X .- Y')

print(a)
display(a)
foreach(println, a) #prints full array

a = rand(10)
x = 0.5 #given scalar
b = abs.(a .- x)
a[findmin(b)[2]]


