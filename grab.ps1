Param (
	[string]$type,
    [string]$url
)


if($type -eq "audio-store")     {youtube-dl $url --buffer-size 16K -x --audio-format flac --audio-quality 0}
elseif($type -eq "audio-play")  {youtube-dl $url --buffer-size 16K -x --audio-format opus --audio-quality 0}
elseif($type -eq "video")       {youtube-dl $url --buffer-size 16K --merge-output-format mkv}
elseif($type -eq "u")           {youtube-dl -U}
else{echo "Unknown Argument"}