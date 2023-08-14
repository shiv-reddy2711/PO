trigger UpdateParentOnChildUpdate on contact (after insert, after update) {
    UpdateParentOnChildUpdateHandler.updateParentFields(Trigger.new);
}