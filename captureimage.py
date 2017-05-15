import sys
import cv2

camera_port = 0

camera = cv2.VideoCapture(camera_port)

def get_image():

	val, im = camera.read()
	return im

for i in xrange(60):
	temp = get_image()

print("Ready to take image")

camera_capture = get_image()
file = "/Users/anubhabsen/Desktop/CVIT/image1.jpg"

cv2.imwrite(file, camera_capture)

print("Image taken and saved to file")

del(camera)