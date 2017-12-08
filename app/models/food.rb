class Food < ActiveRecord::Base

  def self.search(search) #define searh in Food model
    if search #searches for any matches in name or ingredients column
      self.where('name LIKE ? OR ingredients LIKE ?',  "%#{search}%", "%#{search}%")
    else
      self.all 
    end
  end

end #end of class
