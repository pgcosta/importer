describe SoftareAdvice do
  describe "initialize" do
    it "should instanciate a SoftareAdvice given a hash" do
      hash = {"Name"=> "yolo", "Categories"=>"yala", "Twitter"=>"@yili"}
      cap = SoftareAdvice.new hash

      expect(cap.name).to eq("yolo")
      expect(cap.categories).to eq("yala")
      expect(cap.twitter).to eq("@yili")
    end
  end

  describe "class methods" do
    describe "instanciate_from_resource" do
      it "should receive a file path of a resource, and return an array of instances of SoftareAdvice" do
        $: << File.expand_path("..",File.dirname(__FILE__))
        a = SoftareAdvice.instanciate_from_resource "feed-products/softare-advice.yml"

        expect(a.class).to eq(Array)

        a.each do |o|
          expect(o.class).to eq(SoftareAdvice)
        end
      end
    end
  end

end