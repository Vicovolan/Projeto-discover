// This file contains your Data Connector logic
[Version = "1.0.0"]
section conexao;

[DataSource.Kind="conexao", Publish="conexao.Publish"]
shared conexao.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from conexao: " & _message
    in
        a;

// Data Source Kind description
conexao = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Anonymous = []
    ]
];

// Data Source UI publishing description
conexao.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = conexao.Icons,
    SourceTypeImage = conexao.Icons
];

conexao.Icons = [
    Icon16 = { Extension.Contents("conexao16.png"), Extension.Contents("conexao20.png"), Extension.Contents("conexao24.png"), Extension.Contents("conexao32.png") },
    Icon32 = { Extension.Contents("conexao32.png"), Extension.Contents("conexao40.png"), Extension.Contents("conexao48.png"), Extension.Contents("conexao64.png") }
];
