function cells = splitCell(cells, row, col, t, dimen)
    % the id assigned to newly split cell
    persistent id;
    if isempty(id)
        id = prod(dimen)+1;
    end
    
    parent_id = cells(row, col, ID);
    ancestor_id = cells(row, col, ANCESTOR);
    generation = cells(row, col, GENERATION);
    
    % assign splitting cell with new SPLIT_TIME to next splitting
    [cells, id] = ...
        updateCell(cells, row, col, t, id, ...
            parent_id, ancestor_id, generation);
    
    % Choosing random direction to proliferate
    % 1 = left, 2 = up, 3 = right
    offset_h = 0;
    offset_v = 0;
    switch randi(3)
        case 1
            if col == 1
                col = dimen(2)+1;
            end
            offset_h = -1;
        case 2
            if row ~= 1
                offset_v = -1;
            end
        case 3
            if col == dimen(2)
                col = 0;
            end
            offset_h = 1;
    end
    
    % push the rest of the column and update new cell
    cells = pushCol(cells, row+offset_v, col+offset_h);
    [cells, id] = ...
        updateCell(cells, row+offset_v, col+offset_h, ...
            t, id, parent_id, ancestor_id, generation);
    
end