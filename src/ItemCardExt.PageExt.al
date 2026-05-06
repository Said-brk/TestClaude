pageextension 50100 "Item Card Ext." extends "Item Card"
{
    layout
    {
        addafter(Description)
        {
            field("Code Spécifique"; Rec."Code Spécifique")
            {
                ApplicationArea = All;
                ToolTip = 'Spécifie le code spécifique de l''article, propagé automatiquement dans les écritures valeur.';
            }
        }
    }
}
