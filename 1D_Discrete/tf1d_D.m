function X = tf1d_D(x)
    N = length(x); % Longueur du signal
    X = zeros(1, N); % Initialisation du résultat de la transformée de Fourier

    for k = 1:N
        for n = 1:N
            X(k) = X(k) + x(n) * exp(-1i * 2 * pi * (n - 1) * (k - 1) / N);
        end
    end
end
