function cells = pushCol(cells, row, col)
    % pushes the column for new splitted cell
    if row > 1
        for i = 1:row-1
            cells(i, col, :) = cells(i+1, col, :);
        end
    end
end