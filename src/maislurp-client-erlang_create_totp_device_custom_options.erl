-module(maislurp-client-erlang_create_totp_device_custom_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_totp_device_custom_options/0]).

-type maislurp-client-erlang_create_totp_device_custom_options() ::
    #{ 'secret' := binary(),
       'name' => binary(),
       'username' => binary(),
       'issuer' => binary(),
       'digits' => integer(),
       'period' => integer(),
       'algorithm' => binary()
     }.

encode(#{ 'secret' := Secret,
          'name' := Name,
          'username' := Username,
          'issuer' := Issuer,
          'digits' := Digits,
          'period' := Period,
          'algorithm' := Algorithm
        }) ->
    #{ 'secret' => Secret,
       'name' => Name,
       'username' => Username,
       'issuer' => Issuer,
       'digits' => Digits,
       'period' => Period,
       'algorithm' => Algorithm
     }.
