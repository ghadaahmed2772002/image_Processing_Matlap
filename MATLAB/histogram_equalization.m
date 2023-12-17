function result = histogram_equalization(image)
    [h, w] = size(image);
    
    % Compute the histogram
    histo = zeros(256, 1);
    pdf = zeros(256, 1);
    sk = zeros(256, 1);
    result = uint8(zeros(h, w));

    for i = 1:h
        for j = 1:w
            histo(image(i, j) + 1) = histo(image(i, j) + 1) + 1;
            pdf(image(i, j) + 1) = histo(image(i, j) + 1) / (h * w);
        end
    end

    cdf = 0;
    cdf = double(cdf);

    % Compute the cumulative distribution function (CDF)
    for i = 1:256
        cdf = cdf + pdf(i);
        sk(i) = round(255 * cdf); % Use round to ensure integer values
    end

    % Apply histogram equalization to the image
    for i = 1:h
        for j = 1:w
            result(i, j) = sk(image(i, j) + 1);
        end
    end
end
