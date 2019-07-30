%%----------------------------------Initialisation---------------------------------
clear all
clc
close all;
addpath functions
addpath ipdata
FS  = 16000; % Signal sampling rate
frm_len_ms = 20;
FR_LEN =  frm_len_ms*FS/1000;
ip = audioread('crowd-talking-1.wav');
%%-------------------------------Run feature extraction------------------
[feats, cs] = MAR_feat(ip,'matlab.config');
%%--------------------------------Run plots---------------------------------
figure,subplot(211),
specgram(ip,floor(length(ip)/200),FS);title('Mel Spectrogram');
subplot(212),imagesc(flipud(cs));title('MAR Spectrogram');