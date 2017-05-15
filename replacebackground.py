import cv2
import numpy

back = cv2.imread('back.jpg')
img = cv2.imread('image1.jpg')

height_img, width_img, channels_img = img.shape

resized_back = cv2.resize(back, (width_img, height_img))

height_back, width_back, channels_back = resized_back.shape

for i in xrange(height_img):
	for j in xrange(width_img):
		if (img[i][j][0] - 9) * (img[i][j][0] - 9) + (img[i][j][1] - 255) * (img[i][j][1] - 255) + (img[i][j][2] - 19) * (img[i][j][2] - 19) <= 1000:
			img[i][j][0] = resized_back[i][j][0]
			img[i][j][1] = resized_back[i][j][1]
			img[i][j][2] = resized_back[i][j][2]

cv2.imshow('Modified image', img)
cv2.waitKey()