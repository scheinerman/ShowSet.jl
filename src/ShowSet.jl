# Module written by Ed Scheinerman, ers@jhu.edu
# distributed under terms of the MIT license

module ShowSet

import Base.string, Base.show, Base.string

function string(A::Union(Set,IntSet))
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

show(io::IO, A::Set)    = print(io,string(A))
show(io::IO, A::IntSet) = print(io,string(A))

end # module ShowsSet
