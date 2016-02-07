# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode
#Create a class called Song


# Initial Solution

class Song
  attr_reader :song
  attr_reader :band

  def initialize(song,band)
  @song = song
  @band = band
  end

  def play
    puts "Now playing #{@song} by #{@band}"
  end


end

class Playlist
  def initialize(*song)
    @playlist = song
  end


  def add(*song)
    @playlist.concat(song)
  end

  def num_of_tracks
    @playlist.length
  end

  def remove(*song)
    song.each{|x| @playlist.delete(x)}
  end

  def includes?(song)
   if @playlist.include?(song)
     return true
     else
     return false
   end
  end

  def play_all
  @playlist.each{|x| x.play}

  end

  def display
    @playlist.each{|x| puts x.song}
  end
end






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection

# What concepts did you review in this challenge?
# We mostly reviewed Classes and we looked a lot at inheritence, though we ended up not really needing it very much. We mostly focused on defining instance methods and variables and making sure all the information we needed was accessible where we needed it.
# What is still confusing to you about Ruby?
# Sometimes I think i'll be able to access certain values, but it will turn out they are still private. I still have some stuff to work out, especially with Classes.
# What are you going to study to get more prepared for Phase 1?
# I'd definitely like to get more comfortable with classes and looping. Most of what I'm concerned about is making my website look good, though, so I'm spending a lot of time on that.