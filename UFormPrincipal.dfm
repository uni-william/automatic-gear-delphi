object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'S'#243' C'#226'mbio Autom'#225'tico'
  ClientHeight = 461
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  FormStyle = fsMDIForm
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 21
  object MainMenu1: TMainMenu
    Images = DMPrincipal.ImageList
    Left = 168
    Top = 80
    object Cadastro1: TMenuItem
      Caption = 'C&adastros'
      ImageIndex = 8
      object Clientes1: TMenuItem
        Caption = '&Clientes'
        ImageIndex = 10
        OnClick = Clientes1Click
      end
      object Produtos1: TMenuItem
        Caption = '&Produtos'
        ImageIndex = 12
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = '&Sair'
        ImageIndex = 13
        OnClick = N2Click
      end
    end
    object Operaes1: TMenuItem
      Caption = '&Opera'#231#245'es'
      ImageIndex = 9
      object Pedidos1: TMenuItem
        Caption = '&Pedidos'
        ImageIndex = 9
      end
    end
  end
end
