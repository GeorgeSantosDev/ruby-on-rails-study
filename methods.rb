# Métodos de Array

# https://ruby-doc.org/core-2.2.0/Array.html#method-i-map





# Método map/collect 

a = [1, 2, 3]

a.map do |i|
  i * 2
end

a.map { |i| i*2 }
a.map! { |i| i*2 } # Modifica a variável original

a.map(&:*2)

# ----------------------------------------------

# Método pluck

b = [{ propety: 1, test: nil }, { propety: 2, test: nil }]

b.pluck(:propety, :test)
