require 'concensus'

describe Concensus do
  
   #it "test interactively" do
   #  p Concensus::Place.find("CA", "Berkeley").geometry.contains_point?(0, 1)
   #end

  describe "configuration" do
    it "should have a root url" do
      Concensus::configuration.root_url.should_not be_empty
    end
    
    it "default year should be 2010" do
      Concensus::configuration.year.should == 2010
    end
    
    describe "should be able to manually set the year" do
      before do
        Concensus::configuration.year = 2000
      end
      after do
        Concensus::configuration.year = 2010        
      end
      it "should be updated" do
        Concensus::configuration.year.should == 2000
        Concensus::configuration.root_url.should match(/2000/)
      end
    end
  end  
   
end