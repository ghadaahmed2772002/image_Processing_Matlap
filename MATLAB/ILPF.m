function [Ideal_img] = ILPF(img, D0)
  [h, w, l] = size(img);
  filter = zeros(h, w, l);
  w_D0 = (w / 2);
  h_D0 = (h / 2);

  for i = 1:h
      for j = 1:w 
          distance = sqrt((i - h_D0).^2 + (j - w_D0).^2);
          if (D0 >= distance)
              filter(i, j) = 1;
          else
              filter(i, j) = 0;
          end
      end
  end

  

  % Apply the filter in the frequency domain
  filtered_image = fft2(img);
  filtered_image = fftshift(filtered_image);

  real_part = real(filtered_image);
  imaginary_part = imag(filtered_image);

  real_matrix = filter .* real_part;
  imaginary_matrix = filter .* imaginary_part;

  % Combine real and imaginary parts to get the filtered image
  filtered_image = complex(real_matrix, imaginary_matrix);

  % Inverse Fourier Transform to get the spatial domain image
  Ideal_img = ifft2(ifftshift(filtered_image));
  Ideal_img = mat2gray(abs(Ideal_img));

end
