im = double(imread('Student_handout/problem1/bike.jpg'));
R = im(:,:,1);
G = im(:,:,2);
B = im(:,:,3);
outR = (R*.293) + (G*.769) + (B*.21);
outG = (R*.249) + (G*.686) + (B*.188);
outB = (R*.172) + (G*.534) + (B*.151);
out(:,:,1) = outR;
out(:,:,2) = outG;
out(:,:,3) = outB;
figure
imshow(uint8(out));
imfil = double(imread('Student_handout/problem1/texture2.jpg'));
S = size(out);
imfil = imresize(imfil, S(1:2));
imfil = imfil./255;
im2 = out.*imfil;
figure
imshow(uint8(im2));
imfil2 = double(imread('Student_handout/problem1/texture1.png'));
imfil2 = imresize(imfil2, S(1:2));
imfil2 = imfil2./255;
im3 = im2.*imfil2;
figure
imshow(uint8(im3));
