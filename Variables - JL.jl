x = 2

typeof(x)

y = x + 1

typeof(y)

x = 4

x = 3.1415

typeof(x)

x = 1.234

y = 1//2

z = x + y*im

typeof(x)

typeof(y)

typeof(z)

I_am_float = 3.1415

CALL_ME_RATIONAL = 1//3

MyString = "MyVariable"

δ = 1

typeof(δ)

🍕 = "It's time for pizza!!!"

π = 2

typeof(π)

ℯ

ℯ = 2

1 + 2

2*3

4/3

x = 1;
y = 3;

(x + 2)/(y -1) - 4*(x -2)^2

2(3 + 4) # equivalent to 2*(3 + 4)

x = 1.0 #Float64

y = 2 #Int64

xp, yp = promote(x, y)

typeof(xp)

typeof(yp)

promote(1, 2f0, true, 4.5, Int32(1))

promote_type(Float64, Int64, Bool, Int32)

x = 1 # Int64

y = 2f0 #Float32

z = x + y

typeof(z)

x = 1
y = 1f0
z = true
w = Int32(1)

xp, yp, zp, wp = promote(x, y, z, w)

typeof(xp)

promote_type(typeof(x), typeof(y), typeof(z), typeof(w))

x = 1

x += 3 # x = x + 3

x /= 2 # x = x /2

x *= 4 # x = x * 4

x \= 16 # x = x \ 16 = 16 / x

x = 5;

p = 3;

y = (x + 4)^(3/2)/(x + 1)^(p - 1)

y *= 8

y += 3

y /= 3

y -= 1

1 == 1

1 == 1.0

-1 <= 1

-1 ≥ 1

3 > 2 > 1

3 > 2 & 2 > 1

1 < 2 <= 2 < 3 == 3 > 2 >= 1 == 1 < 3 != 5

NaN == NaN

NaN != NaN

NaN < NaN

isequal(NaN, NaN)

!isequal(NaN, NaN)

!true

!false

x = 3141.5926

round(x)

floor(x)

ceil(x)

round(Int64, x)

floor(Int64, x)

ceil(Int64, x)

round(x; digits = 3)

round(x; sigdigits = 3)

convert(Float32, 1.234)

convert(Int64, 1.0)

Int64(1.0)

x = 1//3
y = 0.5

x + y

x + Rational(y)


