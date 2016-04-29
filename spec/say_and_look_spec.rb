require_relative '../say_and_look'

class FakeSayAndLook
  extend SayAndLook
end

describe FakeSayAndLook do
  let(:first) { '1' }
  let(:bad_argument) { Object.new }

  context '#build_generation' do
    it 'should return first 5 generaions' do
      expect(FakeSayAndLook.build_generation(first)).to eql ['1', '11', '21', '1211', '111221']
    end

    it 'should raise error passing not valid argument' do
      expect { FakeSayAndLook.build_generation(bad_argument) }.to raise_error
    end
  end
end