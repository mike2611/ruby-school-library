class Corrector
  def corrector_name(name)
    name_array = name.chars
    name = name_array[0].upcase + name_array[0, name.length].join
    name.length > 10 ? name.slice(0, 9) : name
  end
end
