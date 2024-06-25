f=zeros(32,32);
f(11:21,11:21)=1;
imshow(f);
% Calcul de la transformée de Fourier 2D avec fft_2d
% (fonction personnalisée)
X = fft_2d(double(f));

% Calcul de la transformée de Fourier inverse 2D avec ifft_2d
image_inverse = ifft_2d(X);

% Affichage de l'image originale et de l'image inversée
figure;
imshow(log(1+abs(X)),[]);
title('Image  après transformée');
figure;
imshow(real(image_inverse), []);
title('Image après transformée inverse');