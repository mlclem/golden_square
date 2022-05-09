# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

# TrackList class - add_track method, remove_track method & report_tracks method #

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TrackList
  
  def initialize
    # Initialize with a blank hash to store track & artist key value pair
  end


  def add_track(track,artist)
    # Add track and artist arguments to @track_hash    
  end

  def remove_track(track)
    # Remove track and artist from @track_hash
  end

  def report_tracks
    # Return hash of tracks and artists
  end

end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1 Initialize, add track and report

tracks = TrackList.new
tracks.add_track("Song","Artist")
tracks.report_tracks

# 2 Initialize, add multiple tracks for one artist and report

tracks = TrackList.new
tracks.add_track("Song1","Artist")
tracks.add_track("Song2","Artist")
tracks.report_tracks

# 3 Initialize, add multiple tracks and report

tracks = TrackList.new
tracks.add_track("Song1","Artist")
tracks.add_track("Totally different song","Definitely not the same Artist")
tracks.report_tracks

# 4 Add new tracks and remove them, then report

tracks = TrackList.new
tracks.add_track("Song1","Artist")
tracks.add_track("Totally different song","Definitely not the same Artist")
tracks.remove_track("A song I don't like")
tracks.report_tracks

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

