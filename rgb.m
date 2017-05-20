img = imread('1.jpg');
h = round(size(img, 1) / 3);
width = round(size(img, 2));
img1 = img(1 : h, :);
img2 = img(h + 1 : 2 * h, :);
img3 = img(2 * h + 1: 3 * h, :);

fixed = img1;
moving = img2;

[optimizer, metric] = imregconfig('multimodal');
tform = imregtform(moving, fixed, 'translation', optimizer, metric);
movingRegistered1 = imwarp(moving,tform,'OutputView',imref2d(size(fixed)));

moving2 = img3;
[optimizer, metric] = imregconfig('multimodal');
tform = imregtform(moving2, fixed, 'translation', optimizer, metric);
movingRegistered2 = imwarp(moving2,tform,'OutputView',imref2d(size(fixed)));

im(:, :, 1) = movingRegistered2;
im(:, :, 2) = movingRegistered1;
im(:, :, 3) = img1;

figure
imshow(im);
