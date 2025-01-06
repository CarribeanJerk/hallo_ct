#!/bin/bash

IMAGE_PATH="/home/joshs/hallo_ct/examples/reference_images/1.jpg"
AUDIO_PATH="/home/joshs/hallo_ct/examples/driving_audios/1.wav"
OUTPUT_PATH="\\wsl.localhost\Ubuntu\home\joshs\docker_output:./output"

docker run -it \
  -v /path/to/your/images:/hallo/images \
  -v /path/to/your/audio:/hallo/audio \
  -v /path/to/output:/hallo/output \
  hallo_ct \
  python scripts/inference.py --source_image /hallo/images/$(basename "$IMAGE_PATH") --driving_audio /hallo/audio/$(basename "$AUDIO_PATH") --output /hallo/output/$(basename "$OUTPUT_PATH")