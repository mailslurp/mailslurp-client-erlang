-module(maislurp-client-erlang_create_totp_device_base32_secret_key_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_totp_device_base32_secret_key_options/0]).

-type maislurp-client-erlang_create_totp_device_base32_secret_key_options() ::
    #{ 'base32SecretKey' := binary(),
       'name' => binary(),
       'username' => binary(),
       'issuer' => binary(),
       'digits' => integer(),
       'period' => integer(),
       'algorithm' => binary()
     }.

encode(#{ 'base32SecretKey' := Base32SecretKey,
          'name' := Name,
          'username' := Username,
          'issuer' := Issuer,
          'digits' := Digits,
          'period' := Period,
          'algorithm' := Algorithm
        }) ->
    #{ 'base32SecretKey' => Base32SecretKey,
       'name' => Name,
       'username' => Username,
       'issuer' => Issuer,
       'digits' => Digits,
       'period' => Period,
       'algorithm' => Algorithm
     }.
