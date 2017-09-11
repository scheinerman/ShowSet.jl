# Module written by Ed Scheinerman, ers@jhu.edu
# distributed under terms of the MIT license

module ShowSet

import Base: string, show, AbstractSet

function string(A::AbstractSet)
    elements = collect(A)
    try
        sort!(elements)
    end
    n = length(elements)
    output = "{"
    for k=1:n
        output *= string(elements[k])
        if k<n
            output *= ","
        end
    end
    output *= "}"
    return output
end

show(io::IO, A::Set)    = print(io,string(A))
show(io::IO, A::IntSet) = print(io,string(A))

end # module ShowsSet
