require_relative '../encrypt'

describe '#encrypt' do
  it 'returns an "" when passed an empty string' do
    actual = encrypt('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it 'returns a 3-backward shift text when passed encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")' do
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')
    expected = 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD'
    expect(actual).to eq(expected)
  end

  it 'returns a 7-backward shift text when passed encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG", -7)' do
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG', -7)
    expected = 'MAX JNBVD UKHPG YHQ CNFIL HOXK MAX ETSR WHZ'
    expect(actual).to eq(expected)
  end
end

describe '#decrypt' do
  it 'returns an "" when passed an empty string' do
    actual = decrypt('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it 'returns a 3-forward shift text when passed decrypt("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")' do
    actual = decrypt('QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD')
    expected = 'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG'
    expect(actual).to eq(expected)
  end

  it 'returns a 7-forward shift text when passed decrypt("MAX JNBVD UKHPG YHQ CNFIL HOXK MAX ETSR WHZ", 7)' do
    actual = decrypt('MAX JNBVD UKHPG YHQ CNFIL HOXK MAX ETSR WHZ', 7)
    expected = 'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG'
    expect(actual).to eq(expected)
  end
end
