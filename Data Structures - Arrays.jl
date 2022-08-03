v = [1, 2, 3, 4, 5, 6, 7, 8] # or equivalently v = [1; 2; 3; ...]

typeof(v)

size(v)

length(v)

v[3]

v[begin]

v[end]

v[[2, 3]]

range(1; stop = 10, step = 2)

1:2:10

v[1:3]

v[1:2:end]

v[:]

v = [1, 2, 3]

append!(v, 4)

append!(v, 7:8)

append!(v, [5,6])

append!(v, 3.0)

v = Float64[1, 2, 3]

append!(v, 3.1415)

v = [1, 2, 3, 4]

v[2] = 4

v

v[3:4] .= 11

v

collect(1:2:9)

Vector(1:2:9)

v[1]

v[1] = 4

v[end-1:end] .= 1

v

M = [1 2 3 4; 5 6 7 8]

typeof(M)

eltype(M)

ndims(M)

size(M)

length(M)

M[1]

M[2]

M[end]

M[end-1]

M[1, 2]

M[1, [2, 3]]

M[1:3]

M[1, :]

M[:]

hcat(M, M)

vcat(M, M)

cat(M, M; dims = 2)

cat(M, M; dims = 1)

v = [11, 12]

hcat(M, v)

v1 = collect(1:2:9)

v2 = collect(2:2:10)

M = hcat(v1, v2)

M[3,:] .= 4

M

[1; 2; 3]

[1;; 2;; 3]

[1;;; 2;;; 3]

A = zeros(3, 5, 2)

B = zeros(Int64, 3, 4, 2)

typeof(A)

eltype(A)

ndims(A)

size(A)

length(A)

B[1]

B[1, 2, 2]

B[1] = 1

B[1, 2, 2] = 2

B[2,:,1] .= 4

B

ones(Float32, 2, 3, 1)

fill(1.234, 2, 3, 1)

A = zeros(2, 3)

B = ones(2, 3, 1)

C = fill(2, 2, 3)

cat(A, B, C; dims = 3)

a = [1, 2, 3]

a .-= 4

abs.(a)

sum(exp.(sqrt.(abs.(a .- 1)))./2)

a = [1, 2, 3]

b = [4, 5, 6]

a' * b

a * b'

a .* b

A = exp.((B .+ 1) .^ 2) ./ 2

A = @. exp((B + 1) ^ 2) / 2

A = zeros(2, 3);

for i in 1:length(A)
           A[i] = exp((B[i] + 1)^2)/2
end

A

A = [1 2 3; 4 5 6]

B = A

B[2] = 42

A == B

C = copy(A)

C[4] = 10

A == C

D = A[1:2, 1:2]

D[1] = 15

D == A[1:2, 1:2]

E = view(A, 1:2, 1:2)

E = @view A[1:2, 1:2]

E[4] = 78

E == A[1:2, 1:2]

typeof(E)


