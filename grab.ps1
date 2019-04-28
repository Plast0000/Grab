<#
This is basically a simple abstraction for youtube-dl in PS
audio-store: stores in FLAC (best quality)
audio-play:  stores in OPUS (small size for media players / phones)
video: downloads video using '--merge-output-format' and uses MKV for format. assumes the options defaults
#>

Param
(
	[string]$type,
	[string]$url
)


if($type -eq "/audio-store")     {youtube-dl $url --buffer-size 16K -x --audio-format flac --audio-quality 0}
elseif($type -eq "/audio-player")  {youtube-dl $url --buffer-size 16K -x --audio-format opus --audio-quality 0}
elseif($type -eq "/video")       {youtube-dl $url --buffer-size 16K --merge-output-format mkv}
elseif($type -eq "/u")           {youtube-dl -U}
else{

echo "Unknown Argument(s)."

echo "
Command should look like this: grab [Command] [URL]"

echo "
Command:
/audio-store:  Stores audio file in FLAC
/audio-player: Stores audio file in OPUS
/video:        Stores a video i the best image and audio qualities and saves them as MKV
/u:            Updates youtuble-dl
"
}
