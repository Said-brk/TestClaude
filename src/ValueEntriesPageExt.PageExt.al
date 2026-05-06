pageextension 50101 "Value Entries Ext." extends "Value Entries"
{
    layout
    {
        addafter("Item No.")
        {
            field("Code Spécifique"; Rec."Code Spécifique")
            {
                ApplicationArea = All;
                ToolTip = 'Spécifie le code spécifique de l''article au moment de la transaction.';
                Editable = false;
            }
        }
    }
}
