function [offset_h, offset_v, row, col] = newCellDirection(row, col, width)
    offset_h = 0;
    offset_v = 0;
    switch randi(3)
        case 1
            if col == 1
                col = width+1;
            end
            offset_h = -1;
        case 2
            if row ~= 1
                offset_v = -1;
            end
        case 3
            if col == width
                col = 0;
            end
            offset_h = 1;
    end
end