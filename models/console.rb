require('pry-byebug')
require_relative('transaction.rb')

transaction1 = Transaction.new({'cost'=>20, 'name'=>'Boots'})

transaction2 = Transaction.new({'cost'=>10, 'name'=>'HMV'})

transaction1.save()
transaction2.save()


binding.pry
nil
