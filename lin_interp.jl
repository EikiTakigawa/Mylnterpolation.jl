
function my_lin_interp(grid,vals)
    function func(x::Real)
        if x < grid[1] || x > grid[end]
            y = "Error!"
            return y
        end
        if x == grid[end]
            y = vals[end]
            return y
        end
        if grid[1] <= x < grid[end]
            i = searchsortedlast(grid, x)
            y = ((vals[i+1]-vals[i])/(grid[i+1]-grid[i]))*(x-grid[i])+vals[i]
            return y
        end
    end
    function func{T<:Real}(x::AbstractVector{T})
        n = length(x)
        out = Array(Any,n)
        for i in 1:n
            out[i] = func(x[i])
        end
        return out
    end
    return func
end
