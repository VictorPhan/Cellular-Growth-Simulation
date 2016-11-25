% pushes the column for new splitted cell
function cells = pushcol(cells, row, col)
    if row > 1
        for i = 1:row-1
            cells(i, col, :) = cells(i+1, col, :);
        end
    end
end