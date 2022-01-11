clc, clear, close all
rng default
global initial_flag
initial_flag = 0;
%%
initial_flag = 0;
options = optimoptions('ga','PlotFcn',{@gaplotbestf,@gaplotdistance});
for i=1:15  
    [ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,13),2,options);
    %[ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,13),10,options)
    % [ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,14),2,options)
    % [ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,14),10,options)
    ga_main_x(i,:) = ga_x
    ga_main_val(i) = ga_val
    ga_main_exit_flag(i) = ga_exit_flag
    ga_main_output(i) = ga_output
end
%% GA Calculations
ga_val_max = max(ga_main_val)
ga_val_min = min(ga_main_val)
ga_val_mean = mean(ga_main_val)
ga_val_std = std(ga_main_val)
disp(ga_val_max)
disp(ga_val_min)
disp(ga_val_mean)
disp(ga_val_std)
%% Particle Swarm 
options = optimoptions('particleswarm','PlotFcn',{@pswplotbestf});
%rng default
initial_flag = 0;
for i=1:15
    [swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,13),10,[-100,-100],[100,100],options)
    %[swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,13),2,[-100,-100],[100,100],options)
	%[swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,14),10,[-100,-100],[100,100],options)
	%[swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,14),2,[-100,-100],[100,100],options)
	swarm_main_x(i,:) = swarm_x
    swarm_main_val(i) = swarm_val
	swarm_main_exit_flag(i) = swarm_exit_flag
	swarm_main_output(i) = swarm_output
end
%% Particle Swarm calculations
swarm_val_max = max(swarm_main_val)
swarm_val_min = min(swarm_main_val)
swarm_val_mean = mean(swarm_main_val)
swarm_val_std = std(swarm_main_val)
disp(swarm_val_max)
disp(swarm_val_min)
disp(swarm_val_mean)
disp(swarm_val_std)


