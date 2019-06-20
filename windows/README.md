# ffmpeg-scripts (windows)

These scripts use ffmpeg in order to run. You need to download the latest static zip for windows from [https://www.ffmpeg.org/download.html](https://www.ffmpeg.org/download.html) and put the `ffmpeg.exe` inside the `windows` folder.

## Scripts description

### AudioExtract.bat

**description:** Extracts the audio from a video file.

**how to use:** Drag and drop any video file into `AudioExtract.bat`.

**result:** A new `mp3` file will be created in the same folder as the original video file.

### M3UDown.bat

**description:** Download video from a M3U playlist file.

**how to use:** Drag and drop a `.m3u8` file into `M3UDown.bat`.

**result:** A new `mp4` video file will be created in the same folder as the original M3U file.

### ClearMetadataTitle.bat

**description:** Removes the metadata title value.

**how to use:** Drag and drop a file into `ClearMetadataTitle.bat`.

**result:** A new file named `{filename}.clear.{extension}` with the metadata value removed will be created in the same folder as the original.

### merger/Merger.bat (alpha)

**description:** Merge an audio and a video file into a new mkv video file.

**how to use:** Move the video an audio files as `video.mp4` and `audio.m4a` into the same folder as the script and run it.

**result:** A new video file called `final.mkv` will be created inside the folder.

### webmToGif (info)

[README](webmToGif/README.md)

---

### TODO: improve speed of M3UDown (info)

Check if the we get better results using `curl` to download all the parts, and use `ffmpeg` only to merge them.

```bash
curl -K urls.txt
./ffmpeg -f concat -i tslist.txt -c copy all.mp4
```