tableextension 50100 "Item Ext." extends Item
{
    fields
    {
        field(50100; "Code Spécifique"; Code[20])
        {
            Caption = 'Code Spécifique', Comment = 'ENU=Specific Code';
            DataClassification = CustomerContent;
        }
    }
}
