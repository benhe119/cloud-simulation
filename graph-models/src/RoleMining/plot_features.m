function [] = plot_features(file_path)
path(path, '../Metrics');
data = load(file_path);
[out_dir, file, ext] = fileparts(file_path);
close all;
h1 = figure;
subplot(6, 1, 1);
plot(data(:, 2));
title('in-triangles');
subplot(6, 1, 2);
plot(data(:, 3));
title('out-triangles');
subplot(6, 1, 3);
plot(data(:, 4));
title('through-triangles');
subplot(6, 1, 4);
plot(data(:, 5));
title('cycles');
subplot(6, 1, 5);
plot(data(:, 6));
title('out-degree');
subplot(6, 1, 6);
plot(data(:, 7));
title('in-degree');
save_fig(h1, out_dir, strcat(file, '_triangle_stats'));

h2 = figure;
subplot(2, 1, 1);
plot(data(:, 8));
title('pagerank');
subplot(2, 1, 2);
plot(data(:, 9));
title('k-core rank');
save_fig(h2, out_dir, strcat(file, '_ranks'));

h3 = figure;
subplot(4, 1, 1);
plot(data(:, 10));
title('inflow-size');
subplot(4, 1, 2);
plot(data(:, 11));
title('outflow-size');
subplot(4, 1, 3);
plot(data(:, 12));
title('inflow-duration');
subplot(4, 1, 4);
plot(data(:, 13));
title('outflow-duration');
save_fig(h3, out_dir, strcat(file, '_flow_stats'));