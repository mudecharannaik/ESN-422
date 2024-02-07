origin = [0;0]
vec = [7;6]

%G = [1 5; 8 3]
for i=1:36
G = [cosd(i*10) -sind(i*10); sind(i*10) cosd(i*10)]
Gv = G*vec
figure(1)
subplot(2, 2, 1)
plot([origin(1) Gv(1)], [origin(2) Gv(2)], 'b')
hold on
end
hold off

for i=1:36
p = [9 5; 7 5]
G = [cosd(i*10) -sind(i*10); sind(i*10) cosd(i*10)]
Gv = G*vec
Gx = p*Gv
figure(1)
subplot(2, 2, 2)
plot([origin(1) Gx(1)], [origin(2) Gx(2)], 'r')
hold on
end


[V,D] = eig(p)
v1 = V(: , 1)
v2 = V(: , 2)

subplot(2, 2, 3)
hold on
plot([origin(1) v1(1)], [origin(2) v1(2)], 'b', 'LineWidth', 1)
plot([origin(1) v2(1)], [origin(2) v2(2)], 'b', 'LineWidth', 1)
axis equal


Gv1 = p*v1
Gv2 = p*v2
subplot(2, 2, 3)
hold on
plot([origin(1) Gv1(1)], [origin(2) Gv1(2)], 'r', 'LineWidth', 2)
plot([origin(1) Gv2(1)], [origin(2) Gv2(2)], 'r', 'LineWidth', 2)
axis equal



