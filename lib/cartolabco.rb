require 'check_file'
require 'bci_xls'

module Cartolabco
  class BciParse
    def self.from_path(path)
      CheckFile.new.check_file?(path)
      BciXls.new(File.open(path, 'r'))
    end
  end
end