require 'rails_helper'

RSpec.describe TrnLocation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "latitude_up method" do
    before do
      trnLocation = TrnLocation.new
      trnLocation.latitude = 1
      trnLocation.longitude = 10
      trnLocation.save
      @location = TrnLocation.where("latitude = ?", 1).first
    end
    context "normal case." do
      it "not null" do
        expect(@location.latitude_up).not_to be_nil
      end
      it "latitude_up値の比較" do
        result_val = @location.latitude_up
        expect(result_val).to eq(2)
      end
    end
  end

  describe "longitude_up method" do
    before do
      trnLocation = TrnLocation.new
      trnLocation.latitude = 1
      trnLocation.longitude = 10
      trnLocation.save
      @location = TrnLocation.where("longitude = ?", 10).first
    end
    context "normal case." do
      it "not null" do
        expect(@location.longitude_up).not_to be_nil
      end
      it "longitude_up値の比較" do
        result_val = @location.longitude_up
        expect(result_val).to eq(20)
      end
    end
  end

end
