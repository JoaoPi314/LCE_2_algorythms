i1 = 4.47*exp(%i*63.44*%pi);
i2 = 3.16/sqrt(2)*exp(%i*(-116.57/180*%pi));
i3 = 2 - %i*2;

Ieq = i1 + i2 + i3

plot([0 real(i1)], [0 imag(i1)], [0 real(i2)], [0 imag(i2)], [0 real(i3)], [0 imag(i3)]);
