-module(maislurp-client-erlang_create_totp_device_otp_auth_url_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_totp_device_otp_auth_url_options/0]).

-type maislurp-client-erlang_create_totp_device_otp_auth_url_options() ::
    #{ 'otpAuthUrl' := binary(),
       'name' => binary(),
       'username' => binary(),
       'issuer' => binary(),
       'digits' => integer(),
       'period' => integer(),
       'algorithm' => binary()
     }.

encode(#{ 'otpAuthUrl' := OtpAuthUrl,
          'name' := Name,
          'username' := Username,
          'issuer' := Issuer,
          'digits' := Digits,
          'period' := Period,
          'algorithm' := Algorithm
        }) ->
    #{ 'otpAuthUrl' => OtpAuthUrl,
       'name' => Name,
       'username' => Username,
       'issuer' => Issuer,
       'digits' => Digits,
       'period' => Period,
       'algorithm' => Algorithm
     }.
