# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  # check for nils
  unless array1.nil? || array2.nil?
    # if no nils new empty hash to store el counts of each array
    set_hash = Hash.new(0)
    # increment counts for each element
    array1.each { |el| set_hash[el] += 1 }

    array2.each { |el| set_hash[el] += 1 }
    # determine cases where more than one element occurs by count
    # among the 2 arrays
    set_array = set_hash.select { |_, v| v > 1 }.keys

    return set_array

  end

  return []
end

# The primary assumption here is that each array has no duplicate values
# T = O(n), since each element is iterated across to create each hash
# but implementation of the hash avoids the need to compare each element
# in each array to all the other elements. I can't think of a solution
# that would eliminate the need to iterate across the entire length of both
# arrays
#
# S = O(n) storage requires creating the counter hash and as well as an
# additional array which stores the set
# I can't think of a feasible solution that would mininize the additional
# storage required in this implementation

