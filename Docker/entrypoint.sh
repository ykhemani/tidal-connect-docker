#!/bin/bash

echo "Starting Speaker Application in Background (TMUX)"
/usr/bin/tmux new-session -d -s speaker_controller_application '/app/ifi-tidal-release/bin/speaker_controller_application'


echo "Starting TIDAL Connect.."
/app/ifi-tidal-release/bin/tidal_connect_application \
   --tc-certificate-path "/app/ifi-tidal-release/id_certificate/IfiAudio_ZenStream.dat" \
   -f "hifipi1" \
   --playback-device "snd_rpi_hifiberry_digi: HiFiBerry Digi+ Pro HiFi wm8804-spdif-0" \
   --codec-mpegh true \
   --codec-mqa false \
   --model-name "hifipi1" \
   --disable-app-security false \
   --disable-web-security false \
   --enable-mqa-passthrough false \
   --log-level 3 \
   --enable-websocket-log "0" \
   
#echo "Starting Speaker Control Application.."
#/app/ifi-tidal-release/bin/speaker_controller_application 


echo "TIDAL Connect Container Stopped.."
