im = double(imread('Student_handout/problem2/logo.jpg'));
im1 = 255 + im.*-1;
imshow(uint8(im1));
im1 = circshift(im1,-5);
im3 =( 0.5*im1 + 0.5*im );
figure
imshow(uint8(im3));
