
function my_lin_interp(grid,vals)
    function func(x)
        if x < grid[1]
            y = "Error!"
            return y
        end
        if x > grid[end]
            y = "Error!"
            return y
        end
        if grid[1] <= x < grid[end]
            i = searchsortedlast(grid, x)
            y = (vals[i+1]-vals[i])/(grid[i+1]-grid[i])*(x-grid[i])+vals[i]
            return y
        end
        if x == grid[end]
            y = vals[end]
        end
    end
    return func
end


