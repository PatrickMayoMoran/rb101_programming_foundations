# Call a method that returns a UUID with no parameters
# UUIDs look like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
# format is 8-4-4-4-12 and is a string

# Input: none
# Output: string form of UUID
#
# Data Structures:
# array of possible laters and numbers
# Array of segment lengths

# Algorithm
# 2 - create array of letters and numbers
# 3 - create array of segment lengths
# 4 - create empty array
# 5 - iterate over segment lengths
# 6 --- create blank string
# 7 --- segment length times, choose random letter/number
# 8 ----- append this random letter/number to empty string
# 9 --- append string to empty array
# 10 - join array of strings with '-'

def create_UUID()
  options = (0..9).to_a + ('a'..'f').to_a
  segment_lengths = [8, 4, 4, 4, 12]
  uuid = []
  segment_lengths.each do |v|
    id_segment = ''
    v.times do |i|
      id_segment << options.sample.to_s
    end
    uuid << id_segment
  end
  uuid.join('-')
end

create_UUID()
