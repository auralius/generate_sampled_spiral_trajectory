function generate_spiral_traj(r, x_origin, y_origin, z_from, z_to, Ts, completion_time)
% Generate spiral trajectory with center at [x_origin y_origin] with radius
% r, spiralling from z_from to z_to.
% The trajectory is generated with sampling period Ts and with duration of
% completion_time.

t = 0:Ts:completion_time;
r_space = linspace (0, 1, numel (t));
z = linspace (z_from, z_to, numel (t));
gima
for ii=1:length(r_space)
    output(ii, :) =  [r*sin(t(ii))+x_origin r*cos(t(ii))+y_origin z(ii)];
    %pause (.001)
end

plot3(output(:,1), output(:,2), output(:,3));
dlmwrite('traj_spiral.dat', output, '\t');
