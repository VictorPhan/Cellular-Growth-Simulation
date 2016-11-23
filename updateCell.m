function [cells, id] = updateCell(cells, row, col, t, id, parent_id, ancestor_id, generation)
    cells(row, col, SPLIT_TIME) = createSplitTimer(1);
    cells(row, col, BIRTH_TIME) = t;
    cells(row, col, ID)         = id;
    cells(row, col, PARENT)     = parent_id;
    cells(row, col, ANCESTOR)   = ancestor_id;
    cells(row, col, GENERATION) = generation + 1;
    id = id + 1;
end