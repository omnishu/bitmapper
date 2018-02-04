require 'spec_helper'

describe Utils do
  describe '#int?' do
    it { expect(described_class.int?('2')).to eq(true) }
    it { expect(described_class.int?('foo')).to eq(false) }
  end

  describe '#color?' do
    it { expect(described_class.color?('B')).to eq(true) }
    it { expect(described_class.color?('b')).to eq(false) }
    it { expect(described_class.color?('foo')).to eq(false) }
  end
end
