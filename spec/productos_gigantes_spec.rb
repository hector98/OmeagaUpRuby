require 'rspec'
require_relative '../productos_gigantes.rb'

RSpec.describe ProductosGigantes do
  describe "#problem" do
    it "positive numbers" do
      prob = ProductosGigantes.new
      resu = prob.problem(3, 5)
      expect(resu).to eq(15)
    end

    it "negative numbers" do
      prob = ProductosGigantes.new
      r = prob.problem(-3,-5)
      expect(r).to eq(15)
    end

    it "positive numbers" do
      p = ProductosGigantes.new
      r = p.problem(-3, 5)
      expect(r).to eq(-15)
    end
  end
end
