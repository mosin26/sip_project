clear
close all
addpath('/home/ruslan/Documents/Study/Skoltech/Image_Processing/Project/scripts/split&merge/normalized_images/');

image = imread('lena.png');
band = image(:,:,1);

figure(1)
imshow(band);
title('Input image')

segmented = splitmerge(band,16,@predicate);
figure(2)
imshow(segmented);
colormap(gca,'gray')
title(strcat('Number of segmented regions: ',...
        num2str(length(unique(segmented)))))
       
figure(3)
hist(segmented);
title('Segmented image histogram')


