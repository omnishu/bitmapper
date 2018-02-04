require 'spec_helper'

describe BitmapEditor do
  subject(:bitmap_editor) { described_class.new }

  let(:file) { './spec/factories/sample.txt' }
  let(:out_of_bounds_file) { './spec/factories/out_of_bounds_file.txt' }

  describe '#run' do
    it 'should make a call to `build_bitmap` with file path' do
      expect(bitmap_editor).to receive(:build_bitmap).with(file)
      bitmap_editor.run(file)
    end

    it { expect { bitmap_editor.run(out_of_bounds_file) }.to raise_error(OutOfRange) }
  end
end
