# JR-docker-rpi-camera
John Ramsden Raspberry Pi container to access PiCamera.

Now modified, 111MB total image (uncompressed)
must be built on raspberry pi!

docker build . -t picamera
docker run --privileged --device=/dev/vchiq/ -v /opt/vc:/opt/vc -it b5e28e6821b4 /bin/bash
