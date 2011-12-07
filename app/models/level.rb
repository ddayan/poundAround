class Level < ActiveRecord::Base
  has_one :question

  def currency
    val = self.name="Africa" ? 
      "#{self.currency_sym} #{self.currency_val}" :
      "#{self.currency_val} #{self.currency_sym}"
  end

end
