-module(maislurp-client-erlang_update_totp_device_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_totp_device_options/0]).

-type maislurp-client-erlang_update_totp_device_options() ::
    #{ 'name' => binary(),
       'username' => binary(),
       'issuer' => binary(),
       'digits' => integer(),
       'period' => integer(),
       'algorithm' => binary()
     }.

encode(#{ 'name' := Name,
          'username' := Username,
          'issuer' := Issuer,
          'digits' := Digits,
          'period' := Period,
          'algorithm' := Algorithm
        }) ->
    #{ 'name' => Name,
       'username' => Username,
       'issuer' => Issuer,
       'digits' => Digits,
       'period' => Period,
       'algorithm' => Algorithm
     }.
