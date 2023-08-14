trigger ContactTrigger on Contact (after update) {
    ContactTriggerHandler.handleContactsUpdate(Trigger.new);
}