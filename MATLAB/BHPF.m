function [butterworth_img] = BHPF(img, D0)
  [h, w, l] = size(img);
  filter =  1 - BLPF(ones(h, w, l), D0);
  % Normalize the filter
  filter = filter / max(filter(:));
  % Apply the filter in the frequency domain
  filtered_image = fft2(img);
  filtered_image = fftshift(filtered_image);

  real_part = real(filtered_image);
  imaginary_part = imag(filtered_image);

  % Multiply filter with real and imaginary parts separately
  real_matrix = filter .* real_part;
  imaginary_matrix = filter .* imaginary_part;

  % Combine real and imaginary parts to get the filtered image
  filtered_image = complex(real_matrix, imaginary_matrix);

  % Inverse Fourier Transform to get the spatial domain image
  butterworth_img = ifft2(ifftshift(filtered_image));
  butterworth_img = mat2gray(abs(butterworth_img));

end
