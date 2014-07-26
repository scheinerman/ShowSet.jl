module ShowSet

# Show sets in a nice way using braces
#
# julia> A = IntSet(1,2,3,4)
# IntSet(1, 2, 3, 4)
#
# julia> include("showset.jl")
# (Various warnings print here)
# show (generic function with 83 methods)
#
# julia> A
# {1,2,3,4}
#
# julia> Set("alpha", "beta", "omega", "gamma")
# {alpha,beta,gamma,omega}

import Base.string, Base.show

function set_to_string(A)
    elements = collect(A)
    try
        sort!(elements)
    end
    n = length(elements)
    output = "{"
    for k=1:n
        output = output * string(elements[k])
        if k<n
            output = output * ","
        end
    end
    output = output * "}"
    return output
end

show(io::IO, A::Set)    = print(io,set_to_string(A))
show(io::IO, A::IntSet) = print(io,set_to_string(A))

end # module ShowsSet
