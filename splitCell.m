function cells = splitCell(cells, row, col, t)
    parent_id = cells(row, col, ID);
    ancestor_id = cells(row, col, ANCESTOR);
    generation = cells(row, col, GENERATION);
    
    % assign splitting cell with new SPLIT_TIME to next splitting
    cells = ...
        updateCell(cells, row, col, t, ...
            parent_id, ancestor_id, generation);
    
    % Choosing random direction to proliferate
    [offset_h, offset_v, row, col] = ...
        newCellDirection(row, col, numel(cells(1,:,1)));
    
    % push the rest of the column and update new cell
    cells = pushCol(cells, row+offset_v, col+offset_h);
    cells = ...
        updateCell(cells, row+offset_v, col+offset_h, ...
            t, parent_id, ancestor_id, generation);
    
end