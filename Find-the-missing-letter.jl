module FindMissingLetter
	using Test

	function findmissingletter(arr::Array{Char})::Char
		r = range(2, length(arr))
		for i in r, j in i - 1
			if arr[i] - arr[j] != 1
				return arr[j] + 1
			end
		end
		return '0'
	end

	@testset "Fixed tests" begin
		@test findmissingletter(['a', 'c', 'd']) == 'b'
		@test findmissingletter(['a', 'b', 'd', 'e']) == 'c'
		@test findmissingletter(['a', 'b', 'c', 'd', 'f', 'g']) == 'e'
		@test findmissingletter(['C', 'D', 'E', 'F', 'H', 'I', 'J', 'K']) == 'G'
		@test findmissingletter(['H', 'I', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S']) == 'J'
	end
end
