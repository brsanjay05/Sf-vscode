trigger contactTrigger on Contact(
  before insert,
  after insert,
  before update,
  after update
) {
  Account acc = [
    SELECT id, Name
    FROM Account
    WHERE Name = 'Express Logistics and Transport'
  ];
  if (Trigger.isBefore) {
    for (Contact c : Trigger.new) {
      if (c.AccountId == null) {
        c.AccountId = acc.id;
      }
    }
  }
  System.debug('Trigger.isExecuting: ' + Trigger.isExecuting);
  System.debug('Trigger.size: ' + Trigger.size);
  System.debug('Trigger.operationType: ' + Trigger.operationType);
}