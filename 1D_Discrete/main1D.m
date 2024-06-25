fs = 1000; % Fréquence d'échantillonnage en Hz
t = 0:1/fs:0.2-1/fs; % Vecteur de temps de 0,5 seconde

f = 100; % Fréquence du signal en Hz

x = sin(2 * pi * f * t); % Signal sinusoïdal simple

% Calcul de la transformée de Fourier du signal x
X = tf1d_D(x);

% Transformée de Fourier inverse
y = ifft_1dVF(X);

% Affichage du signal et de sa transformée de Fourier
figure;

subplot(3, 1, 1);
plot(t, x);
title('Signal sinusoïdal dans le domaine temporel');
xlabel('Temps');
ylabel('Amplitude');

subplot(3, 1, 2);
stem(abs(X));
title('Transformée de Fourier du signal');
xlabel('Fréquence');
ylabel('Amplitude');

subplot(3, 1, 3);
t_inv = 0:1/fs:(length(y)-1)/fs; % Création du vecteur temps pour le signal récupéré
t_inv = t_inv(1:length(t)); % Ajustement de la longueur pour correspondre à 0.5 seconde
plot(t_inv, real(y(1:length(t)))); % Utilisation de 'plot' pour afficher le signal récupéré
title('Signal récupéré à partir de la transformée de Fourier inverse ');
xlabel('Temps');
ylabel('Amplitude');

