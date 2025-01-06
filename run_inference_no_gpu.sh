#!/bin/bash

IMAGE_PATH="/path/to/your/images/portrait.jpg"
AUDIO_PATH="/path/to/your/audio/speech.wav"
OUTPUT_PATH="/path/to/output/animated_portrait.mp4"

docker run -it \
  -v /path/to/your/images:/hallo/images \
  -v /path/to/your/audio:/hallo/audio \
  -v /path/to/output:/hallo/output \
  hallo-image \
  python scripts/inference.py --source_image /hallo/images/$(basename "$IMAGE_PATH") --driving_audio /hallo/audio/$(basename "$AUDIO_PATH") --output /hallo/output/$(basename "$OUTPUT_PATH")
