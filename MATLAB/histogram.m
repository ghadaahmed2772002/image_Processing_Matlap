function histo = histogram(img)
    img = RGBTOGRAY(img, 1);
    [H, W] = size(img);
    histo = zeros(256, 1);

    for i = 1:H
        for j = 1:W
            intensity = img(i, j) + 1;
            histo(intensity) = histo(intensity) + 1;
        end
    end

    histo = uint8(histo);
end
