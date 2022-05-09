require 'track_list'

RSpec.describe TrackList do
  it "can add tracks and report a list of tracks" do
    tracks = TrackList.new
    tracks.add_track("Song","Artist")
    expect(tracks.report_tracks).to eq [[["Song", "Artist"]]]
  end

  it "can add multiple tracks by the same artist" do
    more_tracks = TrackList.new
    more_tracks.add_track("Song1","Artist")
    more_tracks.add_track("Song2","Artist")
    expect(more_tracks.report_tracks).to eq [[["Song1", "Artist"],["Song2", "Artist"]]]
  end

  it "Can add multiple tracks by different artists" do
    extra_tracks = TrackList.new
    extra_tracks.add_track("Song1","Artist")
    extra_tracks.add_track("Totally different song","Definitely not the same Artist")
    expect(extra_tracks.report_tracks).to eq [[["Song1", "Artist"],["Totally different song","Definitely not the same Artist"]]]
  end

  context "If possible add method to remove tracks" do
    it "Remove_tracks can delete tracks from the hash" do
      less_tracks = TrackList.new
      less_tracks.add_track("Song1","Artist")
      less_tracks.add_track("A song I don't like","Definitely not the same Artist")
      less_tracks.remove_track("A song I don't like")
      expect(less_tracks.report_tracks).to eq [[["Song1", "Artist"]]]
    end
  end
end