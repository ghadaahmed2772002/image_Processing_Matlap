function [gaussian_img] = GHPF(img, D0)
  [h, w, l] = size(img);
  filter =  1 - GLPF(ones(h, w, l), D0);
  % normalization to filter
  filter = filter / max(filter(:));
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
