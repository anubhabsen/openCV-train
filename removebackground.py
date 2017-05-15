import cv2
import numpy

img = cv2.imread('image1.jpg')
px = img
height, width, channels = img.shape


for i in xrange(height):
	for j in xrange(width):
		if (img[i][j][0] - 9) * (img[i][j][0] - 9) + (img[i][j][1] - 255) * (img[i][j][1] - 255) + (img[i][j][2] - 19) * (img[i][j][2] - 19) <= 800:
			img[i][j][0] = 0
			img[i][j][1] = 0
			img[i][j][2] = 0

cv2.imshow('Modified image', img)
cv2.waitKey()
