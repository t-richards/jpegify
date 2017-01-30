require 'active_support/all'

# Represents a converted image
class ImageResult
  attr_accessor :filename
  attr_accessor :quality

  def initialize(filename, quality, original = nil)
    @filename = filename
    @quality = quality
    @original = original
  end

  def filesize
    @filesize ||= File.stat(@filename).size
  end

  def original_filesize
    return nil if @original.nil?
    @original_filesize ||= File.stat(@original).size
  end

  def human_filesize
    filesize.to_s(:human_size)
  end

  def percent_size_reduction
    return nil if @original.nil?
    (
      (1.0 - (filesize.to_f / original_filesize.to_f)) * 100.0
    ).to_s(:percentage, precision: 2)
  end
end
