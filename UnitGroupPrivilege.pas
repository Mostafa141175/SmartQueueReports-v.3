unit UnitGroupPrivilege;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormPrivilege = class(TForm)
    Panel1: TPanel;
    SaveBtn: TButton;
    CancelBtn: TButton;
    CloseBtn: TButton;
    Panel2: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    SourcePrivilege: TDataSource;
    DBCheckBox11: TDBCheckBox;
    qryPrivilege: TFDQuery;
    UserGroupNameBox: TComboBox;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UserGroupNameBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrivilege: TFormPrivilege;

implementation

{$R *.dfm}

uses UnitDataModule;

procedure TFormPrivilege.CloseBtnClick(Sender: TObject);
begin
     Close;
end;

procedure TFormPrivilege.FormShow(Sender: TObject);
begin
     FormPrivilege.UserGroupNameBox.Clear;
        with FormPrivilege.qryPrivilege do
        begin
           Open;
           First;
           if FormPrivilege.qryPrivilege.RecordCount <> 0 then
             begin
              while NOT FormPrivilege.qryPrivilege.Eof do
                begin
                  var uGroupName := FormPrivilege.qryPrivilege.FieldByName('UserGroupName').AsString;
                    FormPrivilege.UserGroupNameBox.Items.Add(uGroupName);
                    uGroupName := '';
                    Next;
                end;
             end;
            FormPrivilege.UserGroupNameBox.ItemIndex := -1;
        end;


end;

procedure TFormPrivilege.UserGroupNameBoxChange(Sender: TObject);
begin
    var SS := UserGroupNameBox.Text;


   qryPrivilege.Locate('UserGroupName', SS, [loCaseInsensitive, loPartialKey])
  

end;

end.
