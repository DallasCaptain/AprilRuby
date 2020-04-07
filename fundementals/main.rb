
require_relative 'parrot'

polly = Parrot.new('polly',35,'green','I want a cracker').bday(36,'greygreen')
puts polly.name, polly.age

polly.talk


pet1 = Pet.new('fido', 5, 'spotted brown').bday(88,'gray')
puts pet1.age