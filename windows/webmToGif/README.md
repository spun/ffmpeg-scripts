# WebM to Gif

1 - Scale video

```bash
ffmpeg -i video.webm -filter:v scale=250:-1 -c:a copy -r 60 video_scaled.webm
```

2 - Generate a representative palette of a given

```bash
ffmpeg -i video_scaled.webm -vf palettegen palette.png
```

3 - Use a palette to encode a GIF

```bash
ffmpeg -i video_scaled.webm -i palette.png -lavfi paletteuse output.gif
```

---

## Alternative

```bash
ffmpeg -i video.webm -filter:v scale=250:-1 -r 60 demo.gif
```