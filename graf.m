
% оси координат
%hold on
%yline(0, '-k', 'LineWidth',2)
%xline(0, '-k', 'LineWidth',2)

% обеспечивает продолжение вывода графиков в текущее окно, 
% что позволяет добавлять последующие графики к уже существующим
hold on

% Фигира белого цвета
fig = gcf;
fig.Color = [1 1 1];

%включает режим масштабирования активного графика
zoom on

% Вкл сетку
grid on
box on

% Подписи для графика и соответствующих осей
title('Фазовый портрет')
xlabel ('Угловая координата \phi,\circ')
ylabel ('Угловая скорость \omega,\circ/c')

% Вкл легенду
legend show
title(legend,'Характеристики')
legend('Location','northeast')
% Фазовый портрет (толщина линии 2, цвет синий, сплошная линия) 
plot(x,y,'-','LineWidth',2, 'DisplayName',['gain=',num2str(Gain),', sat=\pm', num2str(Sat), ', speed=',num2str(Speed), ', dist=', num2str(Dist), ', Q=', num2str(Qmax),', t=', num2str(tmax)]);
hold on



