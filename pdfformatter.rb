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
    return "this is a pdf with password test\n"
  end
  def output
    @base.output.to_s + protect_with_password
  end
end

class PdfWithWatermarkFormatter < PdfFormatter
  def initialize(base)
	  @base = base
  end
  def add_watermark
	  return "this is a pdf with water mark test\n"
    end
  def output
    @base.output.to_s + add_watermark
  end
end

# If we just want a plain PDF
formatter = PdfFormatter.new

puts formatter.output

# If we want a "draft" watermark
formatter = PdfWithWatermarkFormatter.new(PdfFormatter.new)

puts formatter.output

# Both password protection and watermark
formatter = PdfWithWatermarkFormatter.new(PdfWithPasswordFormatter.new(PdfFormatter.new))

puts formatter.output
