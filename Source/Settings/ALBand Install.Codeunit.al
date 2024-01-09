codeunit 50000 "ALBand installation"
{
    Subtype = Install;

    trigger OnInstallAppPerDatabase()
    var
        ALBandSetup: Record "ALBand Setup";
    begin
        if not ALBandSetup.Get() then begin
            ALBandSetup.Init();
            ALBandSetup.Insert();
        end;
    end;
}