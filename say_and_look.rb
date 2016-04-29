module SayAndLook
  @@DEFAULT_LEGTH =  5
  @@DEFAULT_WORDH = '1'

  def build_generation(word = @@DEFAULT_WORDH, length = @@DEFAULT_LEGTH)
    raise 'passed not valid value as word' if not word.is_a?(String) or word.length.zero?

    results, pre = [word], word

    1.upto(length - 1) { results << pre = next_generation(pre) }

    results
  end

  def next_generation(w)
    count, pre = 0, nil

    (w).each_char do |c|
      if pre.nil? or c == pre
        count, pre = count + 1, c
      else
        return "#{count}#{pre}#{next_generation(w[count, 1000])}"
      end
    end

    return "#{count}#{pre}"
  end
end