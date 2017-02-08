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
    temp_index = members.index(person)
    members.delete_at(temp_index)
    return temp_index
  end

  def front
    members.first
  end

  def middle
    q = members.count/2
    return members.at(q.floor)
  end

  def back
    members.last
  end

  def search(person)
    if members.index(person)
      person_index = members.index(person)
      return members[person_index]
    else
      return nil
    end
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