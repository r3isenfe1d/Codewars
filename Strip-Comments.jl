function stripcomments(input, markers)
	reg = Regex("[\\s]*[" * join(markers) * "][^\n]*")
	return rstrip(replace(input, reg => ""))
end

res1 = stripcomments("apples, pears # and bananas\ngrapes\nbananas #apples", ["#", "!"])

res2 = stripcomments("""stripcomments(str, ms) = nomorecomments(please())
# Julia comments!
stripcomments(\"I hope it works\") # but I bet it won't
""", ["#"])

res3 = stripcomments("""int getRandomNumber()
{
   return 4; // chosen by fair dice roll.
			 // guaranteed to be random.
}""", ["/", "!"])

println(res1)
println(res2)
println(res3)
