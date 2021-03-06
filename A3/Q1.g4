grammar Q1;

start:
    Host EOF;

Host: FirstTwoOctet Dot Octet Dot Octet;

fragment Dot : '.';

Octet :
    ([1-9]?[0-9])
    | ('1'[0-9][0-9])
    | ('2'[0-4][0-9])
    | ('2''5'[0-5])
    ;

FirstTwoOctet :
    ('1'[1-9] Dot Octet)
    | ([2-9]?[0-9] Dot Octet)
    | ('1'[0-6][0-9] Dot Octet)
    | ('1''7'[0-1] Dot Octet)
    | ('1''7''2' Dot '1'[0-5])
    | ('1''7''2' Dot '3'[2-9])
    | ('1''7''2' Dot [4-9]?[0-9])
    | ('1''7''2' Dot '1'[0-9][0-9])
    | ('1''7''2' Dot '2'[0-4][0-9])
    | ('1''7''2' Dot '2''5'[0-5])
    | ('1''7'[3-9] Dot Octet)
    | ('1''8'[0-9] Dot Octet)
    | ('1''9'[0-1] Dot Octet)
    | ('1''9''2' Dot [0-9]?[0-9])
    | ('1''9''2' Dot '1'[0-5][0-9])
    | ('1''9''2' Dot '1''6'[0-7])
    | ('1''9''2' Dot '1''6''9')
    | ('1''9''2' Dot '1'[7-9][0-9])
    | ('1''9''2' Dot '2'[0-4][0-9])
    | ('1''9''2' Dot '2''5'[0-5])
    | ('1''9'[3-9] Dot Octet)
    | ('2'[0-4][0-9] Dot Octet)
    | ('2''5'[0-5] Dot Octet)
    ;