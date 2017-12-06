class Food < ActiveRecord::Base

  def self.search(search) #define searh in Food model
    if search
      self.where('name LIKE ?', "%#{search}%")
    else
      self.all
    end
  end

end #end of class
