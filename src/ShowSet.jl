# Module written by Ed Scheinerman, ers@jhu.edu
# distributed under terms of the MIT license

module ShowSet

import Base: start, done, next, string, show

export Pretty

type Pretty{T<:Union(Set,IntSet)}
    set::T
end

# Iterator protocol
# IntSet and Set iterator definitions are called

start(p::Pretty) = start(p.set)
done(p::Pretty, state) = done(p.set, state)
next(p::Pretty, i) = next(p.set, i)

function string(p::Pretty)
    elements = collect(p)
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

show(io::IO, p::Pretty) = print(io,string(p))
show(io::IO, p::Pretty) = print(io,string(p))

end # module ShowsSet
