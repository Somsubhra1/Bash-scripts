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

### 🔰 Download audio from YouTube

Script: [youtube-music](youtube-music)  
Dependencies: [youtube-dl](https://github.com/rg3/youtube-dl), [ffmpeg](https://www.ffmpeg.org/), [aria2c](https://aria2.github.io/) (optional)

*Default download format is `ogg`(vorbis), pass second parameter as `mp3`, `wav`, `m4a` to use another format.*

```sh
youtube-music "https://www.youtube.com/watch?v=HgfojLtSBTM"  
youtube-music "https://www.youtube.com/watch?v=HgfojLtSBTM" mp3

### 🔀 Merge video and audio together

Script: [vamerge](vamerge)  
Dependencies: [ffmpeg](https://www.ffmpeg.org/)

```sh
vamerge <path to video file> <path to audio file>
# the order is important, first video, then audio
```