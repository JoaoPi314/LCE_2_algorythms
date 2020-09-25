//Exercício 1
//fi1 + fi2+ fi3 = 0
//Valores comuns
f = 1000;
w0 = 2*%pi*f;
t = linspace(0, 2/1000, 100);
//Valores de V1
A1 = 75;
fi1 = 2.361873;

//Valores de V2
A2 = 25;
fi2 = 1.202528;

//Valores de V3
A3 = 45;
fi3 = 0.29925782;
//Tensões
v1 = A1*cos(w0*t + fi1);
v2 = A2*cos(w0*t + fi2);
v3 = A3*cos(w0*t + fi3);

//Fasores
V1 = A1/sqrt(2)*exp(%i*(fi1));
V2 = A2/sqrt(2)*exp(%i*(fi2));
V3 = A3/sqrt(2)*exp(%i*(fi3));

veq = v1 + v2 + v3;
Veq = V1 + V2 + V3;


//Minima tensão
Vsum = V1 + V3;
fi_new = atan(imag(Vsum), real(Vsum));
V2_new = A2/sqrt(2)*exp(%i*(-fi_new)); //Obtenção do ângulo oposto ao fi_new

Veq_new = V1 + V2_new + V3;


//Plot
figure(0);
xtitle('Tensões em série', 'Tempo(s)' ,'Tensão (V)');
plot(t, v1, t, v2, t, v3, t, veq, 'thickness', 3);
legend('v1', 'v2', 'v3', 'veq');


//Plot Fasores
figure(1);
xtitle('Fasores das tensões', 'Real', 'Imag');
plot([0 real(V1)], [0 imag(V1)], [0 real(V2)], [0 imag(V2)], [0 real(V3)], [0 imag(V3)], [0 real(Veq)], [0 imag(Veq)]);
legend('V1', 'V2', 'V3', 'Veq');

figure(2);
xtitle('Fasores das tensões', 'Real', 'Imag');
plot([0 real(V1)], [0 imag(V1)], [0 real(V2_new)], [0 imag(V2_new)], [0 real(V3)], [0 imag(V3)], [0 real(Veq_new)], [0 imag(Veq_new)]);
legend('V1', 'V2_new', 'V3', 'Veq_new');
