function gaussian_img = GLPF(img, D0)
    [h, w, l] = size(img);
    filter = zeros(h, w, l);

    w_D0 = (w / 2);
    h_D0 = (h / 2);

    for i = 1:h
        for j = 1:w
            distance = sqrt((i - h_D0)^2 + (j - w_D0)^2);
            filter(i, j) = exp((-distance.^2) / (2 * D0.^2));
        end
    end
    
    % normalization to filter
    filter = filter / sum(filter(:));  % Normalize by the sum of all elements
    filtered_image = fft2(img);
    filtered_image = fftshift(filtered_image);
    
    real_part = real(filtered_image);
    imaginary_part = imag(filtered_image);

    % multiply filter with real and imaginary parts separately
    real_matrix = filter .* real_part;
    imaginary_matrix = filter .* imaginary_part;

    % Combine real and imaginary parts to get the filtered image
    filtered_image = complex(real_matrix, imaginary_matrix);

    % inverse Fourier Transform to get the spatial domain image
    gaussian_img = ifft2(ifftshift(filtered_image));
    gaussian_img = mat2gray(abs(gaussian_img)); 
end
