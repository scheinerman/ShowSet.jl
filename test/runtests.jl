using Base.Test
using ShowSet

A = IntSet(1,3,9)
@test string(A) == "{1,3,9}"

B = Set{ASCIIString}()
push!(B,"Hello")
push!(B,"Bye")
@test "{Bye,Hello}" == string(B)
