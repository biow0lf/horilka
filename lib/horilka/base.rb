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

    def version
      @version ||= command.run(file: file, tag: 'VERSION')
    end

    def release
      @release ||= command.run(file: file, tag: 'RELEASE')
    end

    def filename
      raise NotImplementedError
    end

    def md5
      @md5 ||= Cocaine::CommandLine.new('md5sum', ':file').run(file: file).split.first
    end

    def size
      @size ||= File.size(file)
    end
  end
end
