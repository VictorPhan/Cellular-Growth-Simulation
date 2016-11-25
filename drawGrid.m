function drawGrid(cells)
    clf;
    cla;
    hold on;
    imagesc(cells(:,:,GENERATION));
    colormap default;
    colorbar;
    axis equal;
    pause(0.5);
end