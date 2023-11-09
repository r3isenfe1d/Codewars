function number(array)
    result = Array{String}(undef, length(array))
    for i in eachindex(array)
        result[i] = "$i: $(array[i])"
    end
    return result
end

# Cleverest solution:
function Number(array)
    string.(1:length(array), ": ", array)
end

r = number(["", "", ""])
println(r)
