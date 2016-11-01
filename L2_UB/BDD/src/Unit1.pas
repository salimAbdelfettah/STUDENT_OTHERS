unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, ComCtrls, StdCtrls, Buttons, DB, DBTables, Menus, Mask,
  DBCtrls, ExtCtrls, ActnMan, ActnColorMaps;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    PageControl1: TPageControl;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Button1: TButton;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Sidentifier1: TMenuItem;
    N1: TMenuItem;
    Apropos1: TMenuItem;
    Versionprcdante1: TMenuItem;
    Aller1: TMenuItem;
    Espaceouvrage1: TMenuItem;
    Espaceexemplaire1: TMenuItem;
    Espacelecteur1: TMenuItem;
    Espacerecherche1: TMenuItem;
    Espacepret1: TMenuItem;
    Espacerestitution1: TMenuItem;
    EspaceGestiondesacces1: TMenuItem;
    Quitter1: TMenuItem;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    TabSheeto: TTabSheet;
    PageControl2: TPageControl;
    ajout_ouv: TTabSheet;
    modif_ouv: TTabSheet;
    supp_ouv: TTabSheet;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    MaskEdit1: TMaskEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    Table1: TTable;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn4: TBitBtn;
    DataSource2: TDataSource;
    Table2: TTable;
    Label8: TLabel;
    Label9: TLabel;
    Sedeconnecter1: TMenuItem;
    DBLookupComboBox2: TDBLookupComboBox;
    Label10: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    MaskEdit2: TMaskEdit;
    Edit5: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    TabSheete: TTabSheet;
    PageControl3: TPageControl;
    ajout_exm: TTabSheet;
    supp_exm: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    Edit8: TEdit;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label17: TLabel;
    BitBtn9: TBitBtn;
    TabSheetga: TTabSheet;
    PageControl4: TPageControl;
    ajout_id: TTabSheet;
    modif_id: TTabSheet;
    supp_id: TTabSheet;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    RadioGroup1: TRadioGroup;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    DBLookupComboBox5: TDBLookupComboBox;
    Label21: TLabel;
    DataSource3: TDataSource;
    Table3: TTable;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    Label22: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    RadioGroup2: TRadioGroup;
    TabSheetl: TTabSheet;
    PageControl5: TPageControl;
    lecteur: TTabSheet;
    categorie: TTabSheet;
    PageControl6: TPageControl;
    ajout_lec: TTabSheet;
    modif_lec: TTabSheet;
    supp_lec: TTabSheet;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    BitBtn15: TBitBtn;
    MaskEdit3: TMaskEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    BitBtn16: TBitBtn;
    DBLookupComboBox7: TDBLookupComboBox;
    DataSource4: TDataSource;
    Table4: TTable;
    MaskEdit4: TMaskEdit;
    Table5: TTable;
    DataSource5: TDataSource;
    DBLookupComboBox8: TDBLookupComboBox;
    Label33: TLabel;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    MaskEdit5: TMaskEdit;
    DBLookupComboBox9: TDBLookupComboBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    MaskEdit6: TMaskEdit;
    Edit21: TEdit;
    MaskEdit7: TMaskEdit;
    Label41: TLabel;
    Label42: TLabel;
    Edit22: TEdit;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    PageControl7: TPageControl;
    modif_cat: TTabSheet;
    DBLookupComboBox10: TDBLookupComboBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    LabeledEdit1: TLabeledEdit;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    depen_l: TTabSheet;
    DBLookupComboBox11: TDBLookupComboBox;
    Label46: TLabel;
    BitBtn21: TBitBtn;
    TabSheetp: TTabSheet;
    Table6: TTable;
    DataSource6: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    TabSheetr: TTabSheet;
    DBLookupComboBox12: TDBLookupComboBox;
    DBLookupComboBox13: TDBLookupComboBox;
    Tablel: TTable;
    DataSourcel: TDataSource;
    BitBtn22: TBitBtn;
    Queryv: TQuery;
    Label47: TLabel;
    Label48: TLabel;
    Button9: TButton;
    Button10: TButton;
    Label49: TLabel;
    Label50: TLabel;
    DBLookupComboBox14: TDBLookupComboBox;
    DBLookupComboBox15: TDBLookupComboBox;
    Query3: TQuery;
    Query4: TQuery;
    BitBtn23: TBitBtn;
    RadioGroup3: TRadioGroup;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    DBLookupComboBox16: TDBLookupComboBox;
    Label51: TLabel;
    BitBtn24: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Apropos1Click(Sender: TObject);
    procedure Sidentifier1Click(Sender: TObject);
    procedure Sidentifier2Click(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Espaceouvrage1Click(Sender: TObject);
    procedure TabSheetoShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ajout_ouvShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Sedeconnecter1Click(Sender: TObject);
    procedure modif_ouvShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Versionprcdante1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Espaceexemplaire1Click(Sender: TObject);
    procedure TabSheeteShow(Sender: TObject);
    procedure ajout_exmShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure EspaceGestiondesacces1Click(Sender: TObject);
    procedure TabSheetgaShow(Sender: TObject);
    procedure ajout_idShow(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure modif_idShow(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Espacelecteur1Click(Sender: TObject);
    procedure TabSheetlShow(Sender: TObject);
    procedure lecteurShow(Sender: TObject);
    procedure ajout_lecShow(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure modif_lecShow(Sender: TObject);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure modif_catShow(Sender: TObject);
    procedure categorieShow(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure DBLookupComboBox10Exit(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Espacerecherche1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure Espacepret1Click(Sender: TObject);
    procedure Espacerestitution1Click(Sender: TObject);
    procedure TabSheetpShow(Sender: TObject);
    procedure DBLookupComboBox12Exit(Sender: TObject);
    procedure DBLookupComboBox12Enter(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure DBLookupComboBox14Exit(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure TabSheetrShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;


var
  Form1: TForm1;
  identif,err_l:boolean;
implementation

uses Unit2, UnitAP, UnitVP, Unit3, Unit4, Unit5;

{$R *.dfm}
function recherche(t:ttable;no:string;att:string):boolean;
var trouve:boolean;
begin
trouve:=false;
t.close;
T.open;
if(not(t.Eof))then
t.First;
while(not(trouve))and(not(t.Eof))do
begin
  if(t.FieldValues[att]=no)then
  trouve:=true
  else
  t.Next;
end;
recherche:=trouve;
end;


procedure btn_enb(var e1,e2,e3,e4,e5,e6:tbutton);
begin
e1.enabled:=false;
e2.enabled:=true;
e3.enabled:=true;
e4.enabled:=true;
e5.enabled:=true;
e6.enabled:=true;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
statusbar1.Panels[0].Text:='Bienvenue dans le programme de Gestion d''une bibliothèque. Veuillez vous identifier !';
pagecontrol1.ActivePage:=tabsheet1;
mainmenu1.Items.Items[1].Visible:=false;
mainmenu1.Items.Items[0].Visible:=true;
button2.Visible:=false;
button3.Visible:=false;
button4.Visible:=false;
button5.Visible:=false;
button6.Visible:=false;
button7.Visible:=false;
button8.Visible:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form2.Table1.Close;
form2.Table1.Open;
if(form2.table1.eof)then
begin
showmessage('Attention ! Aucun identifint n''est existant ! Nous vous conseillons de créer un identifiant dans l''espace Gestion des acces !');
pagecontrol1.ActivePage:=tabsheet2;
button2.Visible:=true;
button3.Visible:=true;
button4.Visible:=true;
button5.Visible:=true;
button6.Visible:=true;
button7.Visible:=true;
button8.Visible:=true;
mainmenu1.Items.Items[0].Visible:=false;
mainmenu1.Items.Items[1].Visible:=true;
identif:=true;
StatusBar1.Panels[0].Text:='Bibliotheque V 2.0';
end
else
begin
form1.Enabled:=false;
form2.Show;
end;
end;

procedure TForm1.Apropos1Click(Sender: TObject);
begin
fap.show;
end;

procedure TForm1.Sidentifier1Click(Sender: TObject);
begin
button1.Click;
end;


procedure TForm1.Sidentifier2Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.Quitter1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
pagecontrol1.ActivePage:=tabsheeto;
btn_enb(button2,button8,button3,button4,button6,button7);
end;

procedure TForm1.Espaceouvrage1Click(Sender: TObject);
begin
button2.Click;
end;

procedure TForm1.TabSheetoShow(Sender: TObject);
begin
pagecontrol2.ActivePage:=ajout_ouv;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
maskedit1.Clear;
end;

procedure TForm1.ajout_ouvShow(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
maskedit1.Clear;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var err:boolean;
begin
err:=false;
  if(edit1.Text='')then
  begin
    showmessage('Champ isbn vide !');
    err:=true;
  end
  else
  begin
    if(edit2.Text='')then
    begin
    showmessage('Champ titre vide !');
    err:=true;
    end
    else
    begin
        if(edit3.Text='')then
        begin
        showmessage('Champ auteur vide !');
        err:=true;
        end
        else
        begin
          if(edit4.Text='')then
          begin
          showmessage('Champ éditeur vide !');
          err:=true;
          end
          else
          begin
            if(maskedit1.Text[1]=' ')or(maskedit1.Text[2]=' ')or(maskedit1.Text[3]=' ')or(maskedit1.Text[4]=' ')then
            begin
            showmessage('Champ année d''édtion vide ou incomplet !');
            err:=true;
            end
            else
            begin
                if(recherche(table1,edit1.Text,'isbn'))then
                begin
                showmessage('ISBN déja existant !');
                err:=true;
                end;
            end;
          end;
        end;
    end;
  end;
  if(not(err))then
  begin
  table1.Close;
  table1.open;
  table1.last;
  table1.Insert;
  table1.Edit;
  table1.FieldValues['isbn']:=edit1.Text;
  table1.FieldValues['titre']:=edit2.Text;
  table1.FieldValues['auteur']:=edit3.Text;
  table1.FieldValues['editeur']:=edit4.Text;
  table1.FieldValues['annee_edition']:=strtoint(maskedit1.Text);
  table1.FieldValues['nb_exemplaire']:=0;
  table1.Post;
  edit1.Clear;
  edit2.Clear;
  edit3.Clear;
  edit4.Clear;
  Maskedit1.Clear;
  showmessage('Ajout de l''ouvrage éffectuée.');
  end;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  if(dblookupcombobox1.Text='')then
  showmessage('Veuillez selectionnez l''ouvrage a supprimer !')
  else
  begin
    if(messagedlg('Attention ! Tous les exemplaires qui possedent le ISBN : '+dblookupcombobox1.Text+' vont etre supprimer avec l''ouvrage ! Voulez vous continuer ?',mtwarning,[mbyes,mbno],0)=mryes)then
    begin
      if(not(recherche(table1,dblookupcombobox1.Text,'isbn')))then
      showmessage('L''ouvrage n''existe pas (ou plus)!')
      else
      begin
      table1.Delete;
      table2.Close;
      table2.Open;
      table2.First;
      while(not(table2.Eof))do
      begin
        if(dblookupcombobox1.text=table2.FieldValues['isbn'])then
        table2.Delete
        else
        table2.Next;
      end;
      showmessage('Suppression de l''ouvrage éfféctué !');
      end;
    end;
  end;
end;

procedure TForm1.Sedeconnecter1Click(Sender: TObject);
begin
form1.FormShow(Sender);
end;

procedure TForm1.modif_ouvShow(Sender: TObject);
begin
edit5.Clear;
edit6.clear;
edit7.Clear;
maskedit2.Clear;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
edit5.Clear;
edit6.clear;
edit7.Clear;
maskedit2.Clear;
end;

procedure TForm1.DBLookupComboBox2Exit(Sender: TObject);
begin
  if(not(recherche(table1,dblookupcombobox2.Text,'isbn')))and(dblookupcombobox2.Text<>'')then
  showmessage('L''ouvrage n''existe pas (ou plus)!')
  else
  begin
  if(not(table1.isempty))then
  begin
  edit5.Text:=table1.FieldValues['titre'];
  edit6.Text:=table1.FieldValues['auteur'];
  edit7.Text:=table1.FieldValues['editeur'];
  maskedit2.Text:=inttostr(table1.FieldValues['annee_edition']);
  end;
  end;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  if(dblookupcombobox2.text='')then
  showmessage('Veuillez selectionner l''ouvrage a modifier !')
  else
  begin
    if(not(recherche(table1,dblookupcombobox2.Text,'isbn')))then
    showmessage('L''ouvrage n''existe pas (ou plus)!')
    else
    begin
      if(edit5.Text='')then
      showmessage('Champ titre vide !')
      else
      begin
        if(edit6.Text='')then
        showmessage('Champ auteur vide !')
        else
        begin
          if(edit7.Text='')then
          showmessage('Champ editeur vide !')
          else
          begin
            if(maskedit2.Text[1]='')or(maskedit2.Text[2]='')or(maskedit2.Text[3]='')or(maskedit2.Text[4]='')then
            showmessage('Champ annéé d''édition vide ou incomplet !')
            else
            begin
            table1.Edit;
            table1.FieldValues['titre']:=edit5.Text;
            table1.FieldValues['auteur']:=edit6.Text;
            table1.FieldValues['editeur']:=edit7.Text;
            table1.FieldValues['annee_edition']:=strtoint(maskedit2.Text);
            table1.Post;
            showmessage('Modification éfféctué !');
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TForm1.Versionprcdante1Click(Sender: TObject);
begin
fvp.showmodal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
pagecontrol1.ActivePage:=tabsheete;
btn_enb(button3,button8,button2,button4,button6,button7);
end;

procedure TForm1.Espaceexemplaire1Click(Sender: TObject);
begin
button3.Click;
end;

procedure TForm1.TabSheeteShow(Sender: TObject);
begin
pagecontrol3.ActivePage:=ajout_exm;
end;

procedure TForm1.ajout_exmShow(Sender: TObject);
begin
edit8.Clear;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
edit8.Clear;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
var trouve:boolean;ne:integer;
begin
  if(edit8.Text='')then
  showmessage('Champ cote vide !')
  else
  begin
    if(dblookupcombobox3.Text='')then
    showmessage('Champ isbn vide !')
    else
    begin
      if(recherche(table2,edit8.Text,'cote'))then
      showmessage('Cote déja existante !')
      else
        if(not(recherche(table1,dblookupcombobox3.Text,'isbn')))then
        showmessage('L''ouvrage n''existe pas (ou plus)!')
        else
        begin
        table2.Close;
        table2.Open;
        table2.Last;
        table2.Insert;
        table2.Edit;
        table2.FieldValues['cote']:=edit8.Text;
        table2.FieldValues['etat_exmpl']:='Bonne';
        table2.FieldValues['statut_exmpl']:='Non prété';
        table2.FieldValues['isbn']:=dblookupcombobox3.Text;
        table2.Post;
        table1.Close;
        table1.Open;
        trouve:=false;
        while(not(trouve))do
        begin
          if(table1.FieldValues['isbn']=dblookupcombobox3.Text)then
          trouve:=true
          else
          table1.Next;
        end;
        table1.edit;
        ne:=table1.FieldValues['nb_exemplaire'];
        table1.FieldValues['nb_exemplaire']:=ne+1;
        table1.Post;
        edit8.Clear;
        showmessage('Ajout de l''exemplaire éfféctué !');
        end;
    end;
  end;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
var ouv:string;ne:integer;trouve:boolean;
begin
if(dblookupcombobox4.Text='')then
showmessage('Veuillez selectionner l''exemplaire a supprimer !')
else
begin
  if(not(recherche(table2,dblookupcombobox4.Text,'cote')))then
  showmessage('L''exemplaire n''existe pas (ou plus) !')
  else
  begin
  if(messagedlg('Voulez vous vraiment supprimer l''exemplaire dont la cote est : '+dblookupcombobox4.Text+' ?',mtwarning,[mbYes,mbNo],0)=mrYes)then
  begin
  ouv:=table2.FieldValues['isbn'];
  table2.Delete;
  table1.Close;
  table1.Open;
  table1.First;
  trouve:=false;
    while(not(trouve))do
    begin
      if(table1.FieldValues['isbn']=ouv)then
      trouve:=true
      else
      table1.Next;
    end;
    table1.Edit;
    ne:=table1.FieldValues['nb_exemplaire'];
    table1.FieldValues['nb_exemplaire']:=ne-1;
    table1.Post;
    showmessage('Suppression de l''ouvrage éfféctué !');
  end;
  end;
end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
pagecontrol1.ActivePage:=tabsheetga;
btn_enb(button8,button2,button3,button4,button6,button7);
end;

procedure TForm1.EspaceGestiondesacces1Click(Sender: TObject);
begin
button8.Click;
end;

procedure TForm1.TabSheetgaShow(Sender: TObject);
begin
pagecontrol4.ActivePage:=ajout_id;
end;

procedure TForm1.ajout_idShow(Sender: TObject);
begin
edit9.Clear;
edit10.Clear;
edit11.Clear;
radiogroup1.ItemIndex:=-1;
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
begin
edit9.Clear;
edit10.Clear;
edit11.Clear;
radiogroup1.ItemIndex:=-1;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
  if(edit9.Text='')then
  showmessage('Champ identifiant vide !')
  else
  begin
    if(recherche(form2.Table1,edit9.Text,'user'))then
    showmessage('Identifiant déja existant !')
    else
    begin
      if(edit10.Text='')or(edit11.Text='')then
      showmessage('Champ(s) mot de passe vide(s) !')
      else
      begin
        if(edit10.Text<>edit11.Text)then
        showmessage('Les champs mot de passe et confirmation de mot de passe ne concorde pas !')
        else
        begin
          if(radiogroup1.ItemIndex=-1)then
          showmessage('Veuillez selectionner un droit d''acces pour l''identifiant !')
          else
          begin
            table3.Close;
            table3.Open;
            table3.Last;
            table3.Insert;
            table3.Edit;
            table3.FieldValues['user']:=edit9.Text;
            table3.FieldValues['pass']:=edit10.Text;
              if(radiogroup1.ItemIndex=0)then
              table3.FieldValues['admin']:=true
              else
              table3.FieldValues['admin']:=false;
            table3.Post;
            showmessage('Identifiant '+edit9.Text+' ajouté !');
            bitbtn11.Click;
          end;
        end;
      end;
    end;
  end;
end;

procedure TForm1.BitBtn14Click(Sender: TObject);
begin
  if(dblookupcombobox6.Text='')then
  showmessage('Veuillez selectionner l''identifiant a supprimer !')
  else
  begin
    if(not(recherche(table3,dblookupcombobox6.Text,'user')))then
    showmessage('L''identifiant n''existe pas (ou plus )!')
    else
    begin
      if(messagedlg('Voulez vous vraiment supprimer l''identifiant '+dblookupcombobox6.Text+' ?',mtwarning,[mbYes,mbNo],0)=mrYes)then
      begin
      table3.Delete;
      showmessage('Suppression éfféctué !');
      end;
    end;
  end;
end;

procedure TForm1.BitBtn13Click(Sender: TObject);
begin
edit12.Clear;
edit13.Clear;
edit14.Clear;
radiogroup2.ItemIndex:=-1;
end;

procedure TForm1.modif_idShow(Sender: TObject);
begin
bitbtn13.Click;
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
var trouve:boolean;
begin
  if(dblookupcombobox5.Text='')then
  showmessage('Veuillez selectionner l''identifiant que vous voulez modifier !')
  else
  begin
    if(not(recherche(table3,dblookupcombobox5.Text,'user')))then
    showmessage('L''identifiant n''existe pas (ou plus) !')
    else
    begin
      if(edit12.Text='')then
      showmessage('Champ ancien mot de pass vide !')
      else
      begin
      trouve:=false;
      table3.Close;
      table3.Open;
      table3.First;
      while(not(trouve))do
      begin
        if(table3.FieldValues['user']=dblookupcombobox5.Text)then
        trouve:=true
        else
        table3.Next;
      end;
      if(table3.FieldValues['pass']<>edit12.Text)then
      showmessage('Ancien mot de passe faux !')
      else
      begin
        if(edit13.Text='')or(edit14.Text='')then
        showmessage('Champ(s) mot de passe vide(s)!')
        else
        begin
          if(edit13.Text<>edit14.Text)then
          showmessage('Les champs nouveau mot de passe et confirmation nouveau mot de passe ne concorde pas !')
          else
          begin
            if(radiogroup2.ItemIndex=-1)then
            showmessage('Veuillez selectioner un droit d''acces a l''identifiacteur que vous voulez modifier !')
            else
            begin
            table3.Edit;
            table3.FieldValues['pass']:=edit13.Text;
            if(radiogroup2.ItemIndex=0)then
            table3.FieldValues['admin']:=true
            else
            table3.FieldValues['admin']:=false;
            table3.Post;
            bitbtn13.Click;
            showmessage('Modification éfféctué !');
            end;
          end;
        end;
      end;
      end;
    end;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
pagecontrol1.ActivePage:=tabsheetl;
btn_enb(button4,button8,button3,button2,button6,button7);
end;

procedure TForm1.Espacelecteur1Click(Sender: TObject);
begin
button4.Click;
end;

procedure TForm1.TabSheetlShow(Sender: TObject);
begin
pagecontrol5.ActivePage:=lecteur;
end;

procedure TForm1.lecteurShow(Sender: TObject);
begin
pagecontrol6.ActivePage:=ajout_lec;
end;

procedure TForm1.ajout_lecShow(Sender: TObject);
begin
bitbtn16.Click;
end;

procedure TForm1.BitBtn16Click(Sender: TObject);
begin
maskedit3.Clear;
edit15.Clear;
edit16.Clear;
edit17.Clear;
maskedit4.Clear;
maskedit6.Clear;
edit21.clear;
end;

procedure TForm1.BitBtn15Click(Sender: TObject);
var inc:boolean;i:integer;
begin
i:=1;inc:=true;
while(i<7)and(inc)do
begin
  if(maskedit3.Text[i]=' ')then
  inc:=false
  else
  i:=i+1;
end;
  if(not(inc))then
  showmessage('Champ numéro vide ou incomplet !')
  else
  begin
  table3.Open;
  table3.First;
  inc:=false;
  while(not(inc))and(not(table3.Eof))do
  begin
    if(strtoint(maskedit3.Text)=table3.FieldValues['num_l'])then
    inc:=true
    else
    table3.Next;
  end;
  if(inc)then
  showmessage('Le numéro de lecteur existe déja !')
  else
  begin
    if(edit15.Text='')then
    showmessage('Champ nom vide !')
    else
    begin
      if(edit16.Text='')then
      showmessage('Champ prénom vide !')
      else
      begin
      if(maskedit6.Text[1]=' ')or(maskedit6.Text[2]=' ')or(maskedit6.Text[4]=' ')or(maskedit6.Text[5]=' ')or(maskedit6.Text[7]=' ')or(maskedit6.Text[8]=' ')or(maskedit6.Text[9]=' ')or(maskedit6.Text[10]=' ')then
      showmessage('Champ date vide ou incomplet !')
      else
      begin
        if(edit17.Text='')then
        showmessage('Champ adresse vide !')
        else
        begin
          if(dblookupcombobox7.Text='')then
          showmessage('Veuillez selectionner la catégorie du lecteur !')
          else
          begin
            table4.Open;
            table4.Last;
            table4.Insert;
            table4.Edit;
            table4.FieldValues['num_l']:=strtoint(maskedit3.Text);
            table4.FieldValues['nom_l']:=edit15.Text;
            table4.FieldValues['prenom_l']:=edit16.Text;
            table4.FieldValues['date_nai']:=strtodate(maskedit6.Text);
            table4.FieldValues['adr_l']:=edit17.Text;
            if(maskedit4.Text='          ')then
            table4.FieldValues['tel_l']:=0
            else
            table4.FieldValues['tel_l']:=strtoint(maskedit4.Text);
            table4.FieldValues['mail_l']:=edit21.Text;
            table4.FieldValues['etat_l']:='0';
            table4.FieldValues['num_cat']:=strtoint(dblookupcombobox7.Text);
            table4.FieldValues['nb_pret']:=0;
            table4.Post;
            showmessage('Ajout du lecteur '+edit15.Text+' '+edit16.Text+' éfféctué !');
            bitbtn16.Click;
          end;
        end;
      end;
    end;
    end;
    end;
  end;
end;

procedure TForm1.BitBtn18Click(Sender: TObject);
begin
edit18.Clear;
edit19.clear;
edit20.Clear;
edit22.Clear;
maskedit5.Clear;
maskedit7.Clear;
end;

procedure TForm1.modif_lecShow(Sender: TObject);
begin
bitbtn18.Click;
end;

procedure TForm1.DBLookupComboBox8Exit(Sender: TObject);
begin
if(dblookupcombobox8.Text<>'')and(recherche(table4,dblookupcombobox8.Text,'num_l'))then
begin
edit18.Text:=table4.FieldValues['nom_l'];
edit19.Text:=table4.FieldValues['prenom_l'];
maskedit5.Text:=datetostr(table4.FieldValues['date_nai']);
edit20.Text:=table4.FieldValues['adr_l'];
if(table4.FieldValues['tel_l']<>0)then
maskedit7.Text:=inttostr(table4.FieldValues['tel_l']);
if(table4.FieldValues['mail_l']<>NULL)then
edit22.Text:=table4.FieldValues['mail_l'];
end;
end;

procedure TForm1.BitBtn19Click(Sender: TObject);
begin
maskedit8.Clear;
maskedit9.Clear;
labelededit1.Clear;
end;

procedure TForm1.modif_catShow(Sender: TObject);
begin
bitbtn19.Click;
end;

procedure TForm1.categorieShow(Sender: TObject);
begin
bitbtn19.Click;
end;

procedure TForm1.BitBtn20Click(Sender: TObject);
begin
if(dblookupcombobox10.Text='')then
showmessage('Veuillez selectionner la catégorie a modifier !')
else
begin
  if(maskedit8.Text=' ')then
  showmessage('Champ nombre max de pret vide !')
  else
  begin
    if(maskedit9.Text[1]=' ')or(maskedit9.Text[2]=' ')then
    showmessage('Champ durée pénalité vide !')
    else
    begin
      if(labelededit1.Text='')then
      showmessage('Champ formule de pénalité vide !')
      else
      begin
      table5.Open;
      table5.Edit;
      table5.fieldvalues['nb_max']:=strtoint(maskedit8.text);
      table5.fieldvalues['duree_pen']:=strtoint(maskedit9.text);
      table5.fieldvalues['formule_pen']:=labelededit1.Text;
      table5.Post;
      showmessage('Modification éfféctué !');
      bitbtn19.Click;
      end;
    end;
  end;
end;
end;

procedure TForm1.DBLookupComboBox10Exit(Sender: TObject);
begin
if(dblookupcombobox10.Text<>'')and(recherche(table5,dblookupcombobox10.Text,'lib_cat'))then
begin
maskedit8.text:=inttostr(table5.fieldvalues['nb_max']);
maskedit9.text:=inttostr(table5.fieldvalues['duree_pen']);
if(table5.fieldvalues['formule_pen']<>NULL)then
labelededit1.Text:=table5.fieldvalues['formule_pen'];
end;
end;

procedure TForm1.BitBtn17Click(Sender: TObject);
begin
  if(dblookupcombobox8.Text='')then
  showmessage('Veuillez selectionner le numéro du lecteur que vous voulez modifier !')
  else
  begin
    if(not(recherche(table4,dblookupcombobox8.Text,'num_l')))then
    showmessage('Le lecteur n''existe pas (ou plus) !')
    else
    begin
      if(edit18.Text='')then
      showmessage('Champ nom vide !')
      else
      begin
        if(edit19.Text='')then
        showmessage('Champ prénom vide !')
        else
        begin
          if(maskedit5.Text[1]=' ')or(maskedit5.Text[2]=' ')or(maskedit5.Text[4]=' ')or(maskedit5.Text[5]=' ')or(maskedit5.Text[7]=' ')or(maskedit5.Text[8]=' ')or(maskedit5.Text[9]=' ')or(maskedit5.Text[10]=' ')then
          showmessage('Champ date vide ou incomplet !')
          else
          begin
            if(edit20.Text='')then
            showmessage('Champ adresse vide !')
            else
            begin
              if(dblookupcombobox9.Text='')then
              showmessage('Veuillez selectionner la catégorie du lecteur que vous voulez modifier !')
              else
              begin
              table4.Open;
              table4.Edit;
              table4.FieldValues['nom_l']:=edit18.Text;
              table4.FieldValues['prenom_l']:=edit19.Text;
              table4.FieldValues['date_nai']:=strtodate(maskedit5.Text);
              table4.FieldValues['adr_l']:=edit20.Text;
              if(maskedit7.Text='          ')then
              table4.FieldValues['tel_l']:=0
              else
              table4.FieldValues['tel_l']:=strtoint(maskedit7.Text);
              table4.FieldValues['mail_l']:=edit22.Text;
              table4.FieldValues['etat_l']:='0';
              table4.FieldValues['num_cat']:=strtoint(dblookupcombobox9.Text);
              table4.Post;
              showmessage('Modification du lecteur '+edit18.Text+' '+edit19.Text+' éfféctué !');
              bitbtn19.Click;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.Espacerecherche1Click(Sender: TObject);
begin
button5.Click;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
pagecontrol1.ActivePage:=tabsheetp;
btn_enb(button6,button8,button3,button4,button2,button7);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
pagecontrol1.ActivePage:=tabsheetr;
btn_enb(button7,button8,button3,button4,button6,button2);
end;

procedure TForm1.TabSheet2Show(Sender: TObject);
begin
btn_enb(button7,button8,button3,button4,button6,button2);
button7.Enabled:=true;
end;

procedure TForm1.BitBtn21Click(Sender: TObject);
begin
if(dblookupcombobox11.Text='')then
showmessage('Veuillez selectionner le lecteur a depenaliser !')
else
begin
  if(not(recherche(table4,dblookupcombobox11.Text,'num_l')))then
  showmessage('Le lecteur n''existe pas (ou plus) !')
  else
  begin
    if(table4.FieldValues['etat_l']='Non penalisé')then
    showmessage('Le lecteur selectionné n''est pas penalisé !')
    else
    begin
    if(messagedlg('Voulez vous vraiment depenaliser le lecteur dont le numéro est : '+dblookupcombobox11.Text+' ?',mtconfirmation,[mbYes,mbNo],0)=mrYes)then
    begin
    table4.Edit;
    table4.FieldValues['etat_l']:='Non penalisé';
    table4.Post;
    showmessage('Lecteur depenalisé !');
    end;
    end;
  end;
end;
end;

procedure TForm1.Espacepret1Click(Sender: TObject);
begin
button6.Click;
end;

procedure TForm1.Espacerestitution1Click(Sender: TObject);
begin
button7.Click;
end;

procedure TForm1.TabSheetpShow(Sender: TObject);
begin
err_l:=false;
bitbtn22.enabled:=false;
query1.SQL.Clear;
query1.SQL.add('select *');
query1.SQL.add('from exemplaire');
query1.SQL.add('where etat_exmpl=:param1 and statut_exmpl=:param2');
query1.ParamByName('param1').asstring:='Bonne';
query1.ParamByName('param2').AsString:='Non prété';
end;

procedure TForm1.DBLookupComboBox12Exit(Sender: TObject);
var trouve:boolean;nmax:integer;
begin
if(dblookupcombobox12.Text='')then
err_l:=true
else
begin
  tablel.Open;
  trouve:=false;
  while(not(trouve))and(not(tablel.Eof))do
  begin
    if(strtoint(dblookupcombobox12.Text)=tablel.FieldValues['num_l'])then
    trouve:=true
    else
    tablel.Next;
  end;
  if(not(trouve))then
  begin
  err_l:=true;
  showmessage('Le lecteur n''existe pas (ou plus) !');
  end
  else
  begin
    if(tablel.FieldValues['etat_l']='Pénalisé')then
    begin
    showmessage('Le lecteur est pénalisé');
    err_l:=true;
    end
    else
    begin
      table5.Open;
      while(not(table5.Eof))and(table5.FieldValues['num_cat']<>tablel.FieldValues['num_cat'])do
      begin
      table5.Next;
      end;
      nmax:=table5.FieldValues['nb_max'];
      if(tablel.FieldValues['nb_pret']>=nmax)then
      begin
      err_l:=true;
      showmessage('Le lecteur a atteint le nombre maximum de pret !');
      end
      else
      begin
       bitbtn22.Enabled:=true;
       err_l:=false;
      end;
    end;
  end;
end;
query1.SQL.Clear;
query1.SQL.Add('select cote');
query1.sql.add('from exemplaire');
query1.sql.add('where etat_exmpl=:param1 and statut_exmpl=:param2');
query1.ParamByName('param1').asstring:='Bonne';
query1.ParamByName('param2').AsString:='Non prété';
query1.Open;
end;

procedure TForm1.DBLookupComboBox12Enter(Sender: TObject);
begin
bitbtn22.enabled:=false;
end;

procedure TForm1.BitBtn22Click(Sender: TObject);
var trouve:boolean;nbp:integer;
begin
if(err_l)then
showmessage('Erreur champ Numéro lecteur !')
else
begin
  if(dblookupcombobox13.text='')then
  showmessage('Champ Cote vide !')
  else
  begin
    table2.Close;
    table2.Open;
    trouve:=false;
    table2.First;
    while(not(table2.Eof))and(not(trouve))do
    begin
      if(table2.FieldValues['cote']=dblookupcombobox13.Text)then
      trouve:=true
      else
      table2.Next;
    end;
    if(not(trouve))then
    showmessage('L''exemplaire n''existe pas (ou plus) !')
    else
    begin
    if(table2.FieldValues['statut_exmpl']='Prété')then
    showmessage('L''exemplaire n''est pas disponible !')
    else
    begin
    queryv.SQL.Clear;
    queryv.SQL.Add('select *');
    queryv.SQL.Add('from pret');
    queryv.SQL.Add('where num_l=:param1 and cote=:param2 and date_pret=:param3');
    queryv.ParamByName('param1').AsInteger:=strtoint(dblookupcombobox12.text);
    queryv.ParamByName('param2').AsString:=dblookupcombobox13.text;
    queryv.ParamByName('param3').asdate:=date;
    queryv.Open;
    if(not(queryv.Eof))then
    showmessage('Opération déja éfféctué !')
    else
    begin
    table6.Open;
    table6.Last;
    table6.Insert;
    table6.edit;
    table6.FieldValues['num_l']:=strtoint(dblookupcombobox12.text);
    table6.fieldvalues['cote']:=dblookupcombobox13.text;
    table6.FieldValues['date_pret']:=date;
    table6.FieldValues['date_retour']:=date+15;
    table6.FieldValues['date_restitution']:=strtodate('01/01/0001');
    table6.fieldvalues['etat_res']:='Non restitué';
    table6.Post;
    table2.close;
    table2.Open;
    table2.First;
    trouve:=false;
    while(not(trouve))do
    begin
      if(table2.FieldValues['cote']=dblookupcombobox13.Text)then
      trouve:=true
      else
      table2.Next;
    end;
    table2.edit;
    table2.FieldValues['statut_exmpl']:='Prété';
    table2.Post;
    tablel.Edit;
    nbp:=tablel.FieldValues['nb_pret'];
    tablel.FieldValues['nb_pret']:=nbp+1;
    tablel.Post;
    tablel.Refresh;
    query1.Refresh;
    showmessage('Operation de pret éfféctué !');
    end;
    end;
    end;
  end;
end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm1.BitBtn23Click(Sender: TObject);
var trouve:boolean;nl:integer;
begin
if(dblookupcombobox14.text='')then
showmessage('Veuillez selectionner le numéro du lecteur !')
else
begin
  if(dblookupcombobox15.Text='')then
  showmessage('Veuillez selectionner la cote du livre !')
  else
  begin
    if(radiogroup3.ItemIndex=-1)then
    showmessage('Veuillez selectionner l''etat de retour du livre !')
    else
    begin
     table6.Open;
     table6.First;
     trouve:=false;
     while(not(table6.Eof))and(not(trouve))do
     begin
      if(table6.FieldValues['num_l']=strtoint(dblookupcombobox14.Text))and(table6.FieldValues['cote']=dblookupcombobox15.Text)and(table6.FieldValues['etat_res']='')then
      trouve:=true
      else
      table6.Next;
     end;
     if(not(trouve))then
     showmessage('erreur !')
     else
     begin
     table6.Edit;
     table6.FieldValues['date_restitution']:=date;
     case(radiogroup3.ItemIndex)of
     0:table6.FieldValues['etat_res']:='Bonne';
     1:table6.FieldValues['etat_res']:='Mauvaise';
     2:table6.FieldValues['etat_res']:='Perdu';
     end;
     table6.Post;
     if(radiogroup3.ItemIndex=1)or(radiogroup3.ItemIndex=2)or(date>table6.FieldValues['date_restitution'])then
     begin
     table4.Open;
     table4.First;
     trouve:=false;
     nl:=strtoint(dblookupcombobox14.Text);
     while(not(trouve))and(not(table4.Eof))do
     begin
      if(table4.FieldValues['num_l']=nl)then
      trouve:=true
      else
      table4.Next;
     end;
     if(trouve)then
     begin
     table4.Edit;
     table4.FieldValues['etat_l']:='Pénalisé';
     table4.Post;
     end;
     end;
     nl:=table4.FieldValues['nb_pret'];
     table4.Edit;
     table4.FieldValues['nb_pret']:=nl-1;
     table4.Post;
     table2.open;
     table2.First;
     trouve:=false;
     while(not(trouve))and(not(table2.eof))do
     begin
      if(table2.FieldValues['cote']=dblookupcombobox15.Text)then
      trouve:=true
      else
      table2.Next;
     end;
     table2.edit;
     case(radiogroup3.ItemIndex)of
     0:table2.FieldValues['etat_exmpl']:='Bonne';
     1:table2.FieldValues['etat_exmpl']:='Mauvaise';
     2:table2.FieldValues['etat_exmpl']:='Perdu';
     end;
     table2.FieldValues['statut_exmpl']:='Non preté';
     table2.post;
     showmessage('Restituion éfféctué !');
     end;
    end;
  end;
end;
end;

procedure TForm1.DBLookupComboBox14Exit(Sender: TObject);
begin
if(dblookupcombobox14.text<>'')then
begin
query4.SQL.clear;
query4.sql.add('select cote');
query4.SQL.Add('from pret');
query4.sql.add('where etat_res=:param1 and num_l=:param2');
query4.ParamByName('param1').AsString:='Non restitué';
query4.ParamByName('param2').AsInteger:=strtoint(dblookupcombobox14.text);
query4.Open;
dblookupcombobox15.ListField:='cote';
dblookupcombobox15.keyField:='cote';
end;
end;

procedure TForm1.BitBtn24Click(Sender: TObject);
begin
  if(dblookupcombobox16.Text='')then
  showmessage('Veuillez selectionner le lecteur a supprimer !')
  else
  begin
    if(not(recherche(table4,dblookupcombobox16.Text,'num_l')))then
    showmessage('Le lecteur n''existe pas (ou plus) !')
    else
    begin
      if(table4.FieldValues['nb_pret']<>0)then
      showmessage('Le lecteur n''a pas rendu tous les documents qu''il a prété !')
      else
      begin
      if(messagedlg('Voulez vraiment supprimer leceteur dont le numéro est : '+dblookupcombobox16.Text+' ?',mtwarning,[mbYes,mbNo],0)=mrYes)then
      begin
      table4.Delete;
      showmessage('Suppression éfféctué !');
      end;
      end;
    end;
  end;
end;

procedure TForm1.TabSheetrShow(Sender: TObject);
begin
query3.SQL.Clear;
query3.sql.add('select num_l');
query3.sql.add('from pret');
query3.sql.add('where etat_res=:param1');
query3.ParamByName('param1').AsString:='Non restitué';
query3.Open;
end;

end.
