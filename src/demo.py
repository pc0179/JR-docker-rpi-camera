
import time

from picamera import PiCamera

# while True:
    # with picamera.PiCamera() as camera:
        # #camera.resolution = (2592, 1944) # camera max
        # #camera.resolution = (1920, 1080) # 1080p
        # camera.resolution = (1280, 720)   # 720p
        # #camera.resolution = (320, 240)
        # # Camera warm-up time
        # time.sleep(2)
        # camera.capture('/data/image.jpg')

    # print('Picture taken')
    # time.sleep(1)

MAX_ITER = 5

camera = PiCamera()
for i in range(0,MAX_ITER):
    #with picamera.PiCamera() as camera:
    #with camera as PiCamera():
    camera.resolution = (1280, 720)
    time.sleep(2)
    camera.capture('/data/test_image_%i.png' % i)
    #camera.capture('/home/pi/Pictures/image_%i.png' % i)
    print('test image %i taken and saved? speriamo...' % i)
#    print 'test image %i taken and saved' % i
