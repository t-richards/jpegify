require 'action_view'
require 'pp'

class ImageResult
  include ActionView::Helpers::NumberHelper

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
    return nil if @original == nil
    @original_filesize ||= File.stat(@original).size
  end

  def human_filesize
    number_to_human_size filesize
  end

  def percent_size_reduction
    return nil if @original == nil
    number_to_percentage((1.0 - (filesize.to_f / original_filesize.to_f)) * 100.0, :precision => 2)
  end
end
