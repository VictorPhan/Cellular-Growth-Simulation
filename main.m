% main.m is where the simulation begins.
% Setting parameters, initiate cells to size dimen, draw the grid in 
% gridMode (layer of cell) and run the steps until numSplit.
% splitTimeBounds is the bounds for the uniformly distributed variable
% which determines the time to which a cell will split when it is conceived
% at birth

clearall();

splitTimeBounds = [12, 16];
dimen           = [50, 50];
numSplit        = 1000000;
gridMode        = BIRTH_TIME;

cells = initiatecells(dimen, splitTimeBounds);

% TODO: keeping track of lineage

setupimage(cells, gridMode);

for step = 0:numSplit
    cells = updategrid(cells, splitTimeBounds);
end

updateimage(cells, step, gridMode);
colorbar;
drawnow;