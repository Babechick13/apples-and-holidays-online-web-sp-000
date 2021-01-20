describe "#second_supply_for_fourth_of_july" do
    it "returns the string 'BBQ' without hardcoding it" do
      expect(second_supply_for_fourth_of_july(holiday_supplies)).to eq("BBQ")
      holiday_supplies[:summer][:fourth_of_july][1] = "Watermelon"
      expect(second_supply_for_fourth_of_july(holiday_supplies)).to eq("Watermelon")
    end
  end

    it "adds a supply to memorial day" do
      add_supply_to_memorial_day(holiday_supplies, "Grill")
      expect(memorial_day_supplies).to include("Grill")
      expect(memorial_day_supplies).not_to include("Table Cloth")
    end

    it "adds another supply to memorial day" do
    it "adds a different supply to memorial day" do
      add_supply_to_memorial_day(holiday_supplies, "Table Cloth")
      expect(memorial_day_supplies).to include("Table Cloth")
      expect(memorial_day_supplies).not_to include("Grill")
    end
  end

  # Question 4
  # Write a method that adds a new holiday and its associated supplies to any season
  describe "#add_new_holiday_with_supplies" do
    it "modifies the original hash by adding supplies of a new holiday to a season" do 
    it "modifies the original hash by adding supplies of a new holiday to a season" do
      expect(holiday_supplies[:fall].keys).not_to include(:columbus_day)

      columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]

      add_new_holiday_with_supplies(holiday_supplies, :fall, :columbus_day, columbus_day_supplies)

      expect(holiday_supplies[:fall].keys).to include(:columbus_day)
      expect(holiday_supplies[:fall][:columbus_day]).to match_array(columbus_day_supplies)

      expect(holiday_supplies[:winter].keys).not_to include(:valentines_day)

      valentines_day_supplies = ["Cupid Cut-Out", "Candy Hearts"]
      add_new_holiday_with_supplies(holiday_supplies, :winter, :valentines_day, valentines_day_supplies)

      expect(holiday_supplies[:winter].keys).to include(:valentines_day)
      expect(holiday_supplies[:winter][:valentines_day]).to match_array(valentines_day_supplies)
    end

  end
