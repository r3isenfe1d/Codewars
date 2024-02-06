function GreyCode(n::Int)
    return n ⊻ (n >>> 1)
end

function GreyDecode(n::Int)
    
end

function GreyCode(n::BitVector)
    return n .⊻ (n .>>> 1)
end

function GreyDecode(n::BitVector)
    
end

GreyCode(2)