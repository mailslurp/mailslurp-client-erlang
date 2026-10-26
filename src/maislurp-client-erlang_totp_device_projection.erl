-module(maislurp-client-erlang_totp_device_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_totp_device_projection/0]).

-type maislurp-client-erlang_totp_device_projection() ::
    #{ 'algorithm' => binary(),
       'period' => integer(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'digits' => integer(),
       'username' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'issuer' => binary()
     }.

encode(#{ 'algorithm' := Algorithm,
          'period' := Period,
          'name' := Name,
          'id' := Id,
          'digits' := Digits,
          'username' := Username,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'expiresAt' := ExpiresAt,
          'issuer' := Issuer
        }) ->
    #{ 'algorithm' => Algorithm,
       'period' => Period,
       'name' => Name,
       'id' => Id,
       'digits' => Digits,
       'username' => Username,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'expiresAt' => ExpiresAt,
       'issuer' => Issuer
     }.
