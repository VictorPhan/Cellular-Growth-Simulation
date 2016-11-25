function drawGrid(cells, gridMode)
    clf;
    cla;
    hold on;
    imagesc(cells(:,:,gridMode));
    colormap default;
    colorbar;
    axis equal;
    pause(0.5);
end