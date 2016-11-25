clearAll();

splitTimeBounds = [0, 16];
dimen     = [40, 10];
numSplit  = 500;

% initiate the cell array
cells = initiateCells(dimen, splitTimeBounds);

% keeping track of lineage

% draw the grid
drawGrid(cells)

% run the simulation
for step = 1:numSplit
    cells = updateGrid(cells, splitTimeBounds);
    updateImage(cells, step);
end