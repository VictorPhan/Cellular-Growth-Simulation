function cells = updateCell(cells, row, col, t, parent_id, ancestor_id, generation, splitTimeBounds)
    persistent id;
    if isempty(id)
        id = numel(cells(:,:,1))+1;
    end
    cells(row, col, SPLIT_TIME) = createSplitTimer(1, splitTimeBounds);
    cells(row, col, BIRTH_TIME) = t;
    cells(row, col, ID)         = id;
    cells(row, col, PARENT)     = parent_id;
    cells(row, col, ANCESTOR)   = ancestor_id;
    cells(row, col, GENERATION) = generation + 1;
    id = id + 1;
end