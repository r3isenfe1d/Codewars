function findodd(ns::Array{Int, 1})
	r = Dict{Int, Int}()
	for i in ns
		if haskey(r, i)
			r[i] += 1
		else
			r[i] = 1
		end
	end

	for (i, k) in r
		if k % 2 == 1
			return i
		end
	end
	return r
end

function bestSolution(ns::Array{Int, 1})
	return xor(ns...)
end

findodd([1, 2, 3, 5, 5, 6, 6, 6, 6, 4, 1, 2, 4, 3, 6])

bestSolution([1, 2, 3, 5, 5, 6, 6, 6, 6, 4, 1, 2, 4, 3, 6])

function xorSwap(a, b)
	a = xor(a, b)
	b = xor(b, a)
	a = xor(a, b)
	return a, b
end

a = 10
b = 1
a, b = xorSwap(a, b)
