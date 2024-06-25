function [NI] = tfd2dI(I)
    [hauteur, largeur] = size(I);
    NI = zeros(hauteur, largeur);

    for n = 1:hauteur
        for m = 1:largeur
            for l = 1:hauteur
                for k = 1:largeur
                    NI(n,m) = NI(n,m) + I(l,k) * exp(2 * pi * 1i * (((n-1)*(l-1))/hauteur + ((m-1)*(k-1))/largeur));
                end
            end
            NI(n,m)=abs(NI(n,m)*(1/(hauteur*largeur)));
        end
    end
end


