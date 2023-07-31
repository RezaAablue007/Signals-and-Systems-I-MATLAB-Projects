%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

%Problem A.4 (x1(t)) - part 1
n = (-5:5);
Dna1 = (1./2).*((1./(n.*pi)).*sin((3-n).*pi)+(1./(n.*pi)).*sin((3+n).*pi)+(1./(2.*n.*pi)).*sin((1+n).*pi)+(1./(2.*n.*pi)).*sin((1-n).*pi));
figure (1);

subplot (1,2,1);
stem (n, abs(Dna1), '.k');
xlabel('n');
ylabel('|Dn| for x1(t)');

subplot (1,2,2);
stem (n, angle(Dna1), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x1(t)');

%Problem A.4 (x2(t)) - part 1
n = (-5:5);
Dna2 = (1./(n.*pi).*sin((n.*pi)./2));

figure (2);

subplot (1,2,1);
stem (n, abs(Dna2), '.k');
xlabel('n');
ylabel('|Dn| for x2(t)');

subplot (1,2,2);
stem (n, angle(Dna2), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x2(t)');

%Problem A.4 (x3(t)) - part 1
n = (-5:5);
Dna3 = (1./(n.*pi).*sin((n.*pi)./4));

figure (3);

subplot (1,2,1);
stem (n, abs(Dna3), '.k');
xlabel('n');
ylabel('|Dn| for x3(t)');

subplot (1,2,2);
stem (n, angle(Dna3), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x3(t)');

%Problem A.4 (x1(t)) - part 2
n = (-20:20);
Dna4 = (1./2).*((1./(n.*pi)).*sin((3-n).*pi)+(1./(n.*pi)).*sin((3+n).*pi)+(1./(2.*n.*pi)).*sin((1+n).*pi)+(1./(2.*n.*pi)).*sin((1-n).*pi));
figure (4);

subplot (1,2,1);
stem (n, abs(Dna4), '.k');
xlabel('n');
ylabel('|Dn| for x1(t)');

subplot (1,2,2);
stem (n, angle(Dna4), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x1(t)');

%Problem A.4 (x2(t)) - part 2
n = (-20:20);
Dna5 = (1./(n.*pi).*sin((n.*pi)./2));

figure (5);

subplot (1,2,1);
stem (n, abs(Dna5), '.k');
xlabel('n');
ylabel('|Dn| for x2(t)');

subplot (1,2,2);
stem (n, angle(Dna5), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x2(t)');

%Problem A.4 (x3(t)) - part 2
n = (-20:20);
Dna6 = (1./(n.*pi).*sin((n.*pi)./4));

figure (6);

subplot (1,2,1);
stem (n, abs(Dna6), '.k');
xlabel('n');
ylabel('|Dn| for x3(t)');

subplot (1,2,2);
stem (n, angle(Dna6), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x3(t)');

%Problem A.4 (x1(t)) - part 3
n = (-50:50);
Dna7 = (1./2).*((1./(n.*pi)).*sin((3-n).*pi)+(1./(n.*pi)).*sin((3+n).*pi)+(1./(2.*n.*pi)).*sin((1+n).*pi)+(1./(2.*n.*pi)).*sin((1-n).*pi));
figure (7);

subplot (1,2,1);
stem (n, abs(Dna7), '.k');
xlabel('n');
ylabel('|Dn| for x1(t)');

subplot (1,2,2);
stem (n, angle(Dna7), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x1(t)');

%Problem A.4 (x2(t)) - part 3
n = (-50:50);
Dna8 = (1./(n.*pi).*sin((n.*pi)./2));

figure (8);

subplot (1,2,1);
stem (n, abs(Dna8), '.k');
xlabel('n');
ylabel('|Dn| for x2(t)');

subplot (1,2,2);
stem (n, angle(Dna8), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x2(t)');

%Problem A.4 (x3(t)) - part 3
n = (-50:50);
Dna9 = (1./(n.*pi).*sin((n.*pi)./4));

figure (9);

subplot (1,2,1);
stem (n, abs(Dna9), '.k');
xlabel('n');
ylabel('|Dn| for x3(t)');

subplot (1,2,2);
stem (n, angle(Dna9), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x3(t)');

%Problem A.4 (x1(t)) - part 4
n = (-500:500);
Dna10 = (1./2).*((1./(n.*pi)).*sin((3-n).*pi)+(1./(n.*pi)).*sin((3+n).*pi)+(1./(2.*n.*pi)).*sin((1+n).*pi)+(1./(2.*n.*pi)).*sin((1-n).*pi));
figure (10);

subplot (1,2,1);
stem (n, abs(Dna10), '.k');
xlabel('n');
ylabel('|Dn| for x1(t)');

subplot (1,2,2);
stem (n, angle(Dna10), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x1(t)');

%Problem A.4 (x2(t)) - part 4
n = (-500:500);
Dna11 = (1./(n.*pi).*sin((n.*pi)./2));

figure (11);

subplot (1,2,1);
stem (n, abs(Dna11), '.k');
xlabel('n');
ylabel('|Dn| for x2(t)');

subplot (1,2,2);
stem (n, angle(Dna11), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x2(t)');

%Problem A.4 (x3(t)) - part 4
n = (-500:500);
Dna12 = (1./(n.*pi).*sin((n.*pi)./4));

figure (12);

subplot (1,2,1);
stem (n, abs(Dna12), '.k');
xlabel('n');
ylabel('|Dn| for x3(t)');

subplot (1,2,2);
stem (n, angle(Dna12), '.k');
xlabel('n');
ylabel('Phase of Dn [Radians] for x3(t)');