function x_inv = ifft_1dVF(X)
    N = length(X); % Longueur du signal dans le domaine fréquentiel
    x_inv = zeros(1, N); % Initialisation du signal inverse

    for n = 1:N
        for k = 1:N
            x_inv(n) = x_inv(n) + X(k) * exp(1i * 2 * pi * (n - 1) * (k - 1) / N);
        end
        x_inv(n) = x_inv(n) / N; % Normalisation de l'IDFT
    end
end
