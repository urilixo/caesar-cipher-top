require './caesar'

describe '#caesar_cipher' do
  it 'returns a string shifted by the amount of characters specified' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end

  it 'returns a string shifted by a negative amount of characters' do
    expect(caesar_cipher('What a string!', -5)).to eql('Rcvo v nomdib!')
  end

  it 'returns shifted string even if shift value is greater than alphabet length' do
    expect(caesar_cipher('What a string!', 35)).to eql('Fqjc j bcarwp!')
  end

  it 'returns correct string if value is much greater than alphabet length' do
    expect(caesar_cipher('What a string!', 365)).to eql('Xibu b tusjoh!')
  end
end
