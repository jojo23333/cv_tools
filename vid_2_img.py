# vid to img
import cv2
print(cv2.__version__)
vidcap = cv2.VideoCapture('input_video.mp4')
success,image = vidcap.read()
count = 1
success = True
while success:
  cv2.imwrite("%06d.jpg" % count, image)     # save frame as JPEG file
  success,image = vidcap.read()
  print('Read a new frame: ', success)
  count += 1
