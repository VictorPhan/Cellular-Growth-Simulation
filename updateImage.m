function updateImage(cells, step, gridMode)
    imagesc(cells(:,:,gridMode));
    title(num2str(step));
    drawnow;
end