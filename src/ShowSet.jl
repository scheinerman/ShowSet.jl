module ShowSet

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
