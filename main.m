% Runs the cell proliferation simulation
clear;
clear updateGrid;
clear splitCell;
dimen     = [40, 40];
numSplit  = 500;

% initiate the cell array
cells(:, :, SPLIT_TIME) = createSplitTimer(dimen);
cells(:, :, BIRTH_TIME) = zeros(dimen);
cells(:, :, ID)         = vec2mat(1:prod(dimen), dimen(2));
cells(:, :, PARENT)     = zeros(dimen);
cells(:, :, ANCESTOR)   = vec2mat(1:prod(dimen), dimen(2));
cells(:, :, GENERATION) = ones(dimen);

% draw the grid
clf;
cla;
hold on;
imagesc(cells(:,:,GENERATION));
colormap default;
colorbar;
axis equal;
pause(0.5);

% run the simulation
for step = 1:numSplit
    cells = updateGrid(cells, dimen);
    imagesc(cells(:,:,GENERATION),[1,4]);
    title(num2str(step));
    drawnow;
end