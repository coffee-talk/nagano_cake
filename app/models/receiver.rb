class Receiver < ApplicationRecord

   belongs_to :customer
   
  def address1
    self.postal_code + self.address + self.name
  end

   
   
end
