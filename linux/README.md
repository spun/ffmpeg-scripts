# ffmpeg-scripts (linux)

These scripts use ffmpeg to run.

## Run scripts manually

### AudioExtract.sh

**description:** Extracts the audio from a video file.

**how to use:** 
```
$ sh AudioExtract.sh <video>
```

**result:** A new `mp3` file will be created in the same folder as the original video file.

### M3UDown.sh

**description:** Download video from a M3U playlist file.

**how to use:**
```
$ sh M3UDown.sh <m3u8>
```

**result:** A new `mp4` video file will be created in the same folder as the original M3U file.

## Drag and drop

To use drag and drop, we need to create desktop entries but unfortunately, `.desktop` files don't work well with relative paths. To work around this limitation, we are generating the `.desktop` files with another script that appends the absolute path of the scripts to each entry.

**From the `ffmpeg-scripts/linux` folder, run:**

```
$ sh gen_desktop_files.sh
```

This will create two `.desktop` files that you can move/copy/link to any folder and use drag and drop to start each script.
