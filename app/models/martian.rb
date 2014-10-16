class Martian < ActiveRecord::Base
  has_many :abductions


  def abduct(earthling)

    earthling = Earthling.find_by(name: earthling.name)
 
    if (earthling.abductions.size == 0)
        Abduction.create(earthling_id: earthling.id, martian_id: self.id)
        return true
    else
      return false
    end



  end

end
