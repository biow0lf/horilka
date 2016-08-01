module Horilka
  class Base
    attr_reader :file, :command

    def initialize(file)
      @file = file
      @command = Cocaine::CommandLine.new('rpm', '-qp --queryformat=%\{:tag\} :file')
    end

    def name
      @name ||= command.run(file: file, tag: 'NAME')
    end

    def filename
      raise NotImplementedError
    end

    def md5
      # TODO: Digest::MD5.file(file).hexdigest
      # make it more ruby and testable
      `md5sum #{ file }`.split.first
    end

    def size
      File.size(file)
    end
  end
end
