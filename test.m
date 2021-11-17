clear all;
close all;
clc;
%% 
uiopen('*.tif')
%data = bfopen('/Users/osmanesen/Desktop/PhD documents/Images/FDB_Old_T0_1.ome.tif'); % keep empty path in case you want to manually select image
data = bfopen('/Users/osmanesen/Desktop/PhD documents/Images/image.tif');
%reader = bfGetReader('MAX.ome.tif');

%% Acessing specific planes
Channel = 4; 
seriesCount = size(data, 1); % counts numbers of series 
series1 = data{1,1}; % data access 

Channel_data = data{1,1}{Channel,1};

imshow(Channel_data,[])
%%
A=imshow(data{1,1}{1,1},[]) % channel 1
B=imshow(data{1,1}{2,1},[]) % channel 2
C=imshow(data{1,1}{3,1},[]) % channel 3
D=imshow(data{1,1}{4,1},[]) % channel 4

%%
MetadatList = data{1,2} % calls to meta data saved in image
series1_planeCount = size(series1,1);
series1_plane1 = series1{1,1};
series1_label1 = series1{1,2};
%%
series1_colorMap1 = data{1, 3}{1, 1};
figure('Name', series1_label1);
if isempty(series1_colorMap1)
  colormap(gray);
else
  colormap(series1_colorMap1);
end
imagesc(series1_plane1);