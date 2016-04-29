require_relative '../say_and_look'

class FakeSayAndLook
  extend SayAndLook
end

describe FakeSayAndLook do
  let(:first)        { '1'        }
  let(:bad_argument) { Object.new }
  let(:empty_string) { ''         }

  context '.build_generation' do
    it 'should return first 5 generaions' do
      expect(FakeSayAndLook.build_generation(first)).to eql ['1', '11', '21', '1211', '111221']
    end

    it 'should raise error passing not string object' do
      expect { FakeSayAndLook.build_generation(bad_argument) }.to raise_error 'passed not valid value as word'
    end

    it 'should raise error passing empty string' do
      expect { FakeSayAndLook.build_generation(empty_string) }.to raise_error 'passed not valid value as word'
    end
  end

  context '.next_generation' do
    it 'should return next generaion of passed word' do
      expect(FakeSayAndLook.next_generation(first)).to eql '11'
    end
  end
end