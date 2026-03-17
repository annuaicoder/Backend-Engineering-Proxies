
# Load a playlist
playlist = playlist("/home/user/music/*.mp3")

# Apply crossfade between songs
radio = crossfade(playlist, duration=3.0)

# Output to Icecast
output.icecast(
  %mp3,
  host="localhost",
  port=8000,
  password="hackme",
  mount="/stream.mp3",
  radio
)
