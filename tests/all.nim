import
  keccak_tiny, strutils

# some examples taken from https://www.di-mgt.com.au/sha_testvectors.html

assert $sha3_224("abc") == "E642824C3F8CF24AD09234EE7D3C766FC9A3A5168D0C94AD73B46FDF"
assert $sha3_256("abc") == "3A985DA74FE225B2045C172D6BD390BD855F086E3E9D525B46BFE24511431532"
assert $sha3_384("abc") == "EC01498288516FC926459F58E2C6AD8DF9B473CB0FC08C2596DA7CF0E49BE4B298D88CEA927AC7F539F1EDF228376D25"
assert $sha3_512("abc") == "B751850B1A57168A5693CD924B6B096E08F621827444F70D884F5D0240D2712E10E116E9192AF3C91A7EC57647E3934057340B4CF408D5A56592F8274EEC53F0"

assert $sha3_224("") == "6B4E03423667DBB73B6E15454F0EB1ABD4597F9A1B078E3F5B5A6BC7"
assert $sha3_256("") == "A7FFC6F8BF1ED76651C14756A061D662F580FF4DE43B49FA82D80A4B80F8434A"
assert $sha3_384("") == "0C63A75B845E4F7D01107D852E4C2485C51A50AAAA94FC61995E71BBEE983A2AC3713831264ADB47FB6BD1E058D5F004"
assert $sha3_512("") == "A69F73CCA23A9AC5C8B567DC185A756E97C982164FE25859E0D1DCC1475C80A615B2123AF1F5F94C11E3E9402C3AC558F500199D95B6D3E301758586281DCD26"

let s3 = "abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu"

assert $sha3_224(s3) == "543E6868E1666C1A643630DF77367AE5A62A85070A51C14CBF665CBC"
assert $sha3_256(s3) == "916F6061FE879741CA6469B43971DFDB28B1A32DC36CB3254E812BE27AAD1D18"
assert $sha3_384(s3) == "79407D3B5916B59C3E30B09822974791C313FB9ECC849E406F23592D04F625DC8C709B98B43B3852B337216179AA7FC7"
assert $sha3_512(s3) == "AFEBB2EF542E6579C50CAD06D2E578F9F8DD6881D7DC824D26360FEEBF18A4FA73E3261122948EFCFD492E74E82E2189ED0FB440D187F382270CB455F21DD185"

let s4 = repeat('a', 1000000)

assert $sha3_224(s4) == "D69335B93325192E516A912E6D19A15CB51C6ED5C15243E7A7FD653C"
assert $sha3_256(s4) == "5C8875AE474A3634BA4FD55EC85BFFD661F32ACA75C6D699D0CDCB6C115891C1"
assert $sha3_384(s4) == "EEE9E24D78C1855337983451DF97C8AD9EEDF256C6334F8E948D252D5E0E76847AA0774DDB90A842190D2C558B4B8340"
assert $sha3_512(s4) == "3C3A876DA14034AB60627C077BB98F7E120A2A5370212DFFB3385A18D4F38859ED311D0A9D5141CE9CC5C66EE689B266A8AA18ACE8282A0E0DB596C90B0A7B87"

assert $keccak_224("") == "F71837502BA8E10837BDD8D365ADB85591895602FC552B48B7390ABD"
assert $keccak_256("") == "C5D2460186F7233C927E7DB2DCC703C0E500B653CA82273B7BFAD8045D85A470"
assert $keccak_384("") == "2C23146A63A29ACF99E73B88F8C24EAA7DC60AA771780CCC006AFBFA8FE2479B2DD2B21362337441AC12B515911957FF"
assert $keccak_512("") == "0EAB42DE4C3CEB9235FC91ACFFE746B29C29A8C366B7C60E4E67C466F36A4304C00FA9CAF9D87976BA469BCBE06713B435F091EF2769FB160CDAB33D3670680E"

assert $keccak_224("abc") == "C30411768506EBE1C2871B1EE2E87D38DF342317300A9B97A95EC6A8"
assert $keccak_256("abc") == "4E03657AEA45A94FC7D47BA826C8D667C0D1E6E33A64A036EC44F58FA12D6C45"
assert $keccak_384("abc") == "F7DF1165F033337BE098E7D288AD6A2F74409D7A60B49C36642218DE161B1F99F8C681E4AFAF31A34DB29FB763E3C28E"
assert $keccak_512("abc") == "18587DC2EA106B9A1563E32B3312421CA164C7F1F07BC922A9C83D77CEA3A1E5D0C69910739025372DC14AC9642629379540C17E2A65B19D77AA511A9D00BB96"

assert $keccak_224(s3) == "344298994B1B06873EAE2CE739C425C47291A2E24189E01B524F88DC"
assert $keccak_256(s3) == "F519747ED599024F3882238E5AB43960132572B7345FBEB9A90769DAFD21AD67"
assert $keccak_384(s3) == "CC063F34685135368B34F7449108F6D10FA727B09D696EC5331771DA46A923B6C34DBD1D4F77E595689C1F3800681C28"
assert $keccak_512(s3) == "AC2FB35251825D3AA48468A9948C0A91B8256F6D97D8FA4160FAFF2DD9DFCC24F3F1DB7A983DAD13D53439CCAC0B37E24037E7B95F80F59F37A2F683C4BA4682"

assert keccak_224("") == hashFromHex "F71837502BA8E10837BDD8D365ADB85591895602FC552B48B7390ABD"
assert keccak_256("") == hashFromHex(256, "c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470")
