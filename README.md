# Bash-scripts

Utility bash scripts to do automatable tasks with a single command. We have scripts to download youtube videos, download music from youtube, convert media files, etc. 

<u>Contribute and add your secret script.</u>

## 📝 NOTES

Download scripts download to `~/Downloads/` folder. For videos, they download to `~/Downloads/Videos` and for audio, they download to `~/Downloads/Music`.

For best results, clone this git repo to a fixed location on your computer and add it to `$PATH`.
```sh
cd ~
git clone https://github.com/Somsubhra1/Bash-scripts.git
cd utility-scripts
export PATH="$(pwd):$PATH"
```
### 🔀 Merge video and audio together

Script: [vamerge](vamerge)  
Dependencies: [ffmpeg](https://www.ffmpeg.org/)

```sh
vamerge <path to video file> <path to audio file>
# the order is important, first video, then audio
```
