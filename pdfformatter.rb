class PdfFormatter
  def initialize
  end
  def output
  end
end

class PdfWithPasswordFormatter < PdfFormatter
  def initialize(base)
	 @base = base 
  end
  def protect_with_password
      puts "this is a pdf with password test"
  end
  def output
    @base.output.protect_with_password
  end
end

class PdfWithWatermarkFormatter < PdfFormatter
  def initialize(base)
	 @base = base 
  end
  def add_watermark
	 puts "this is a pdf with water mark test"
   end
  def output
   @base.output.add_watermark
  end
end
# If we just want a plain PDF
formatter = PdfFormatter.new
# If we want a "draft" watermark
formatter = PdfWithWatermarkFormatter.new(PdfFormatter.new)
# Both password protection and watermark
formatter = PdfWithWatermarkFormatter.new(
PdfWithPasswordFormatter.new(PdfFormatter.new))
