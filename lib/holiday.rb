require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end
  
def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each { |holiday, supplies|
    supplies << supply
  }

end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

 # Question 3
  # Write a method that adds a supply to Memorial Day
  describe "#add_supply_to_memorial_day" do
    let(:memorial_day_supplies) { holiday_supplies[:spring][:memorial_day] }

    it "adds a supply to memorial day" do
      add_supply_to_memorial_day(holiday_supplies, "Grill")
      expect(memorial_day_supplies).to include("Grill")
      expect(memorial_day_supplies).not_to include("Table Cloth")
    end

    it "adds a different supply to memorial day" do
      add_supply_to_memorial_day(holiday_supplies, "Table Cloth")
      expect(memorial_day_supplies).to include("Table Cloth")
      expect(memorial_day_supplies).not_to include("Grill")
    end
  end
  
  ---------------

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







