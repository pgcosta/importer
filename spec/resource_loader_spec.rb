describe ResourceLoader do
  describe "load_resource" do

    it "should raise an error if a file does not exist" do
      expect do
        ResourceLoader.load_resource "wateva"
      end.to raise_error
    end

    it "should return an array of items if the file exists" do
      $: << File.expand_path("..",File.dirname(__FILE__))
      a = ResourceLoader.load_resource "feed-products/capterra.yml"

      expect(a.class).to eq(Array)
      expect(a.size).to be > 0
    end
  end
end