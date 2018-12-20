require 'check_file'
require 'bci_xls'

module Cartolabco
  class BciParse
    def self.from_path(path)
      CheckFile.new.check_path?(path)
      self.from_file(File.open(path, 'r'))
    end

    def self.from_file(file)
      CheckFile.new.check_file?(file)
      BciXls.new(file)
    end
  end
end