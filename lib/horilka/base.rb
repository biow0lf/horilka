module Horilka
  class Base
    attr_reader :file, :command

    def initialize(file)
      @file = file
      @command = Cocaine::CommandLine.new('rpm', '-qp --queryformat=%\{:tag\} :file')
    end

    def name
      @name ||= command_run('NAME')
    end

    def version
      @version ||= command_run('VERSION')
    end

    def release
      @release ||= command_run('RELEASE')
    end

    def filename
      raise NotImplementedError
    end

    def summary
      # environment
    end

    def md5
      @md5 ||= Cocaine::CommandLine.new('md5sum', ':file').run(file: file).split.first
    end

    def size
      @size ||= File.size(file)
    end

    private

    def command_run(tag)
      command.run(file: file, tag: tag)
    end
  end
end
