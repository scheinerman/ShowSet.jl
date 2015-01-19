# ShowSet

This module makes the printing of `Set` and `IntSet` objects in Julia
nicer.

## Usage

Without the use of this module, `Set` and `IntSet` objects display
like this:

```julia
julia> IntSet(1,3,0)
IntSet(0, 1, 3)

julia> Set(["One", "Two", "Three"])
Set{ASCIIString}("One","Two","Three")
```

However, after `using ShowSet` it looks like this:
```julia
julia> IntSet(1,3,0)
{0,1,3}

julia> Set(["One", "Two", "Three"])
{One,Three,Two}
```

The elements of the `Set` object are sorted into ascending order
unless Julia is unable to do so. In that case, the order of the
objects is arbitrary.

```julia
julia> Set([1, "hello", 4.5, 2+3im])
{hello,2 + 3im,4.5,1}
```

## Conversion to `string`


We extend the `string` function for `Set` and `IntSet` objects to
provide for their conversion into `ASCIIString` objects. Some examples:

```julia
julia> A = Set(["alpha", "beta", "gamma"]);

julia> string(A)
"{alpha,beta,gamma}"

julia> B = IntSet([5,3,1]);

julia> string(B)
"{1,3,5}"

julia> typeof(ans)
ASCIIString (constructor with 2 methods)
```


## Notes

+ Following `using ShowSet` Julia warns that the `show(IO,Set{T})` and
  `show(IO,IntSet)` methods have been overridden. Of course, that's
  exactly the point.  Please let me know if there's a way to suppress
  this warning.

+ It would be useful if `Set` and `IntSet` were defined as subtypes of
  a common `AbstractSet` type. That would simplify some of the code in
  this module.
