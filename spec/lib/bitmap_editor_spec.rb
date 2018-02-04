require 'spec_helper'

describe BitmapEditor do
  subject(:bitmap_editor) { described_class.new }

  let(:file) { './spec/factories/sample.txt' }

  describe '#run' do
    it 'should make a call to `build_bitmap` with file path' do
      expect(bitmap_editor).to receive(:build_bitmap).with(file)
      bitmap_editor.run(file)
    end

  end
end
