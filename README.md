ShowSet
=======

This module makes the printing of `Set` and `IntSet` objects in Julia nicer. Without the
use of this module, these objects print like this:
```julia
julia> IntSet(1,3,0)
IntSet(0, 1, 3)

julia> Set("One", "Two", "Three")
Set{ASCIIString}("One","Two","Three")
```

However, after `using ShowSet` it looks like this:
```julia
julia> IntSet(1,3,0)
{0,1,3}

julia> Set("One", "Two", "Three")
{One,Three,Two}
```

Note
----
A warning message follows `using ShowSet` that warns that `show(IO,Set{T})`
and `show(IO,IntSet)` methods have been overridden. Of course, that's exactly
the point. 

Please let me know if there's a way to supress these messages.
