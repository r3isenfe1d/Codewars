module CreatePhoneNumber
    function createphonenumber(numbers)
        convert(x) = string.(join(x))
        number = "($(convert(numbers[1:3]))) $(convert(numbers[4:6]))-$(convert(numbers[6:10]))"
        return number
    end

    # Cleverest solution
    function CS(numbers)
        "($(numbers[1:3]...)) $(numbers[4:6]...)-$(numbers[7:10]...)"
    end

    res = createphonenumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2])
    best = CS([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2])

    println(res)
    println(best)
end
