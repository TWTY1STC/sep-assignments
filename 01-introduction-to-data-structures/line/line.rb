# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit and those behind them take their place.
class Line
  attr_accessor :members

  def initialize
    self.members = []
    #self reference to the instance of Object.
  end

  def join(person)
    members << person
  end

  def leave(person)
    index(person)
    members.delete(person)
   
=begin
    people in position after the person who leaves should move up a psition. 
    if person.index > @person_index
       members << person.index
      members.person[] > members[p_index] 
      #members whose index is greater than person who left's index << (shift left -- move up an index)
    end
=end
  end

  def front
    members.first
  end

  def middle
    quotient = members.count / 2
    return members.at[quotient.floor]
    #count number of members
    #divide by 2 = quotient
    # if members.count / 2 = whole number, return member[quotient].name
    #else, member.count /2 = fraction, return member[quotient.floor].name so 2.5 = 2
    #member.at[quotient.floor]
  end

  def back
    members.last
  end

  def search(person)
    index(person)
    members[@person_index]
  end

  private

  def index(person)
    @person_index = members.find_index(person)
    if @person_index
            return 
    else
      return
    end
  end

end