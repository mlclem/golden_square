=begin
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.
=end

class TrackList
  def initialize
    @track_hash = {}
    @report_array = []
  end

  def add_track(track,artist)
    return @track_hash[track] = artist
  end

  def report_tracks
    @report_array.push(@track_hash.each.to_a)
    return @report_array
  end

  def remove_track(track)
    @track_hash.delete(track)
  end
end