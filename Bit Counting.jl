function countbits(n)
    return count_ones(n)
end

for i = 0:10
    println("$i\t$(countbits(i))")
end
