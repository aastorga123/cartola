class CheckFile
  def check_path?(path)
    accepted_formats = [".xls"]
    unless File.file?(path)
      raise 'File does not exist'
    end
    unless accepted_formats.include? File.extname(path)
      raise 'Not accepted format: ' + File.extname(path)
    end
  end

  def check_file?(file)
    check_path?(file.path)
  end
end