% открыть модель в симулинке
%open('Regulator_Arduino.slx')

% названия нашего моделирования
model_name = "test_arduino";

% связываемся с глобальными переменными
global Gain;
global Sat;
global Speed;
global Dist;


% Задаём значения для моделирования по умолчанию
Gain = 0.1;
Sat = 0.5;
Speed = 3;
Dist = 0.001;


% результаты моделирования
global Qmax
global tmax
global x;
global y;

% рисуем графики
% оси координат
hold on
yline(0, '-k', 'LineWidth',2, 'DisplayName','Ось координат')
xline(0, '-k', 'LineWidth',2, 'DisplayName','Ось координат')

% заголовок таблицы
% writematrix(["Gain" "Q" "t"], model_name + '.xls');

% График для каждого случая
% Изменение коэффициента усиления
% for Gain = 0.1:0.1:1
%     % запускаем моделирование
%     sim('Regulator_1907_tests');
% 
%     % Вывод значений расхода топлива и времени достижения прямоугольника
%     % стабилизации"
%     Qmax = max(Q);
%     tmax = max(t);
% 
%     %сохраняем в xls
%     writematrix([Gain Qmax tmax], model_name + '.xls', 'WriteMode', 'append');
% 
%     % рисуем график
%     graf
% end

% Возмущения
% dists = [0.1; 0.01; 0.001; -0.1];
% % заголовок таблицы
% writematrix(["Dist" "Qmax" "tmax"], model_name + '.xls');
% for i=1:size(dists)
% 
%     % задаём параметры модели
%     Dist = dists(i);
% 
%     % выполняем симуляцию
%     sim('Regulator_1907_tests');
% 
%     % Вывод значений расхода топлива и времени достижения прямоугольника
%     % стабилизации"
%     Qmax = max(Q);
%     tmax = max(t);
% 
%     %сохраняем в xls
%     writematrix([Dist Qmax tmax], model_name + '.xls', 'WriteMode', 'append');
% 
%     % рисуем график
%     graf  
% end
sim('Regulator_1907_tests');
   Qmax = max(Q);
   tmax = max(t);
graf
% сохраняем график
savefig(model_name + '.fig')
% закрываем фигуру
close(fig)

