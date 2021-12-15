class Corrector
  def corrector_name(name)
    name_array = name.split("")
    name = name_array[0].upcase + name_array[1, name.length].join("")
    name.length > 10 ? name.slice(0, 9) : name
  end
end