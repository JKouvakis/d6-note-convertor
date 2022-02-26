unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, ValEdit;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Values: TValueListEditor;
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  orig,conv,diaf: Integer;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
 ComboBox1.ItemIndex := 0;
 ComboBox2.ItemIndex := 0;
 ComboBox2Change(Sender);
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
var i: Integer;
    a: string;
begin
 orig := ComboBox1.itemIndex;
 conv := ComboBox2.itemIndex;
 diaf := conv - orig;
 for i:= 1 to Values.RowCount -1 do
  If i + diaf < Values.RowCount Then
   Values.Values[Values.Keys[i]]:= Values.Keys[i+diaf]
  else
   Values.Values[Values.Keys[i]]:= Values.Keys[-Values.Rowcount+diaf+i+1]
end;

end.
