function updateImage(cells, step)
    imagesc(cells(:,:,GENERATION),[1,4]);
    title(num2str(step));
    drawnow;
end