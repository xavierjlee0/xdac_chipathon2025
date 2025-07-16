
%% Get data where vds = 1.65V, VSB = 0;
Id = squeeze(nfet_03v3.ID(:,:,68,1))';
gm = squeeze(nfet_03v3.GM(:,:,68,1))';
GMID = (gm./Id);
ro = (1./ (squeeze(nfet_03v3.GDS(:,:,68,1)))');
CGS = nfet_03v3.CGS(:,:,68,1)';
ft = gm ./ (2*pi*CGS);
%% Check
plot(nfet_03v3.VGS, Id);
labels=num2str(nfet_03v3.L','L= %d');
legend(labels,'location','best');
title("W=5 I_D/V_{GS}")
ylabel("ID");
xlabel("VGS");

%% Generate biasing charts 
idw = (Id * 10^3)./(nfet_03v3.W' * 10^-6);
semilogy(GMID, idw);
labels=num2str(nfet_03v3.L','%.2f');

for i = 1:length(nfet_03v3.L)
    % Place label near the end of the curve
    x_label = GMID(30, i);
    y_label = idw(30, i);
    text(x_label, y_label, labels(i,:), ...
         'FontSize', 8, 'VerticalAlignment', 'middle', 'HorizontalAlignment', 'center');
end

% legend(labels,'location','best');
xlim([1, 26]);
ylim([10, 10^5]);
ylabel("I_D/W (mA/um)");
xlabel("g_m/I_D ");
title("gf180mcuD Biasing Chart")




%% Generate Intrinsic Gain chart
av_o = (gm.*ro);
plot(GMID, av_o);
labels=num2str(nfet_03v3.L','L= %.2f');

for i = 1:length(nfet_03v3.L)
    % Place label near the end of the curve
    x_label = GMID(1, i);
    y_label = av_o(1, i);
    text(x_label, y_label, labels(i,:), ...
         'FontSize', 10, 'VerticalAlignment', 'middle', 'HorizontalAlignment', 'left');
end

xlim([1, 35]);
ylim([25, 750]);
ylabel("g_m r_o (V/V)");
xlabel("g_m/I_D ");
title("gf180mcuD Intrinsic Gain Chart")


%% Generate F_T plots
plot(GMID, ft./1e9);
labels=num2str(nfet_03v3.L','%.2f');

for i = 1:length(nfet_03v3.L)
    % Place label near the end of the curve
    x_label = GMID(30, i);
    y_label = idw(30, i);
    text(x_label, y_label, labels(i,:), ...
         'FontSize', 8, 'VerticalAlignment', 'middle', 'HorizontalAlignment', 'center');
end

% legend(labels,'location','best');
xlim([1, 26]);
ylim([0, 35]);
xticks(1:26);
ylabel("f_t(GHz)");
xlabel("g_m/I_D ");
title("gf180mcuD Transition Frequency (f_t) Chart")
