require_relative('../models/merchant')
require_relative('../models/tag')
require_relative('../models/transaction')


Transaction.delete_all()
Merchant.delete_all()
Tag.delete_all()


merchant1 = Merchant.new({
  'name' => 'HMV',
  'location' => 'Glasgow'
  });
merchant1.save()

tag1 = Tag.new({
  'name' => 'Lifestyle'
});
tag1.save()

transaction1 = Transaction.new({
  'amount' => 15.00,
  'merchant_id' => merchant1.id,
  'tag_id' => tag1.id
  });
transaction1.save()


nil
