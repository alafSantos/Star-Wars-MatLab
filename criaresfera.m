function esfera = criaesfera(r,centro)
w = 0;
for teta = 0:5:360
    for fi = 0:5:180
        w = w + 1;
        x(w) = r*cosd(teta)*sind(fi) + centro(1);
        y(w) = r*sind(teta)*sind(fi) + centro(2);
        z(w) = r*cosd(fi) + centro(3);
    end
end
esfera(:,1) = x(:);
esfera(:,2)= y(:);
esfera(:,3) = z(:);
esfera(:,4) = 1;
end