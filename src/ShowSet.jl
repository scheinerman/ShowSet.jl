# Module written by Ed Scheinerman, ers@jhu.edu
# distributed under terms of the MIT license

module ShowSet

import Base: string, show, AbstractSet
import Base.Multimedia.display

export set_empty, get_empty

EMPTY_SET = "Ø"  # this is LaTeX \O



"""
The string form of the empty set is initially set to `"Ø"` (LaTeX `\\O`).
To change it, use `set_empty(str)`.
Suggested alternatives are `"{}"` or `"∅"` (LaTeX `\\emptyset`).

See `get_empty`.
"""
function set_empty(str::String)::String
    global EMPTY_SET = str
end

"""
`get_empty()` returns the current string that represents the empty set. 

See `set_empty`.
"""
function get_empty()::String
    global EMPTY_SET
    return EMPTY_SET
end

function string(A::AbstractSet)::String
    elements = collect(A)

    if length(elements) == 0
        return get_empty()
    end

    try
        sort!(elements)
    catch
        p = sortperm(hash.(elements))
        elements = elements[p]
    end
    return "{" * join(elements,",") * "}"
end

show(io::IO, A::Set)    = print(io,string(A))
show(io::IO, A::BitSet) = print(io,string(A))
display(A::Set) = print(string(A))
display(A::BitSet) = print(string(A))

end # module ShowsSet
