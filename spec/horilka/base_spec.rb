require 'spec_helper'

describe Horilka::Base do
  describe '#initialize' do
    let(:file) { double }

    let(:command) { double }

    before do
      #
      # Cocaine::CommandLine.new('rpm', '-qp --queryformat=%\{:tag\} :file')
      #
      expect(Cocaine::CommandLine).to receive(:new)
        .with('rpm', '-qp --queryformat=%\{:tag\} :file')
        .and_return(command)
    end

    subject { described_class.new(file) }

    its(:file) { should eq(file) }

    its(:command) { should eq(command) }
  end
end
