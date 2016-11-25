% Split the a given cell located at (row, col) in the cells grid. 
% Assign the new born cells with new IDs, link to ancestor and parent, 
% assign generation, assign birth_time to t.
function cells = splitcell(cells, row, col, t, splitTimeBounds)
    parent_id = cells(row, col, ID);
    ancestor_id = cells(row, col, ANCESTOR);
    generation = cells(row, col, GENERATION);
    
    cells = updatecell(cells, row, col, t, parent_id, ...
                       ancestor_id, generation, splitTimeBounds);
    
    [offset_h, offset_v, row, col] = ...
        newcelldirection(row, col, numel(cells(1,:,1)));
    
    cells =    pushcol(cells, row+offset_v, col+offset_h);
    cells = updatecell(cells, row+offset_v, col+offset_h, t, ...
                       parent_id, ancestor_id, generation, splitTimeBounds);
    
end