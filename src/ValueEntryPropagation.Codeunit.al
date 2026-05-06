codeunit 50100 "Value Entry Propagation"
{
    // Subscribes to OnBeforeInsertValueEntry in Codeunit "Item Jnl.-Post Line" (22).
    // This event fires for every inventory transaction type: sales, purchases,
    // transfers, adjustments, assembly, production, and physical inventory.
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeInsertValueEntry', '', false, false)]
    local procedure PropagateCodeSpecifiqueToValueEntry(var ValueEntry: Record "Value Entry"; ItemJournalLine: Record "Item Journal Line")
    var
        Item: Record Item;
    begin
        if Item.Get(ValueEntry."Item No.") then
            ValueEntry."Code Spécifique" := Item."Code Spécifique";
    end;
}
