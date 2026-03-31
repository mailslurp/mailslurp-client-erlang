-module(maislurp-client-erlang_totp_device_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_totp_device_dto/0]).

-type maislurp-client-erlang_totp_device_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'username' => binary(),
       'issuer' => binary(),
       'digits' => integer(),
       'period' => integer(),
       'algorithm' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'username' := Username,
          'issuer' := Issuer,
          'digits' := Digits,
          'period' := Period,
          'algorithm' := Algorithm,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'username' => Username,
       'issuer' => Issuer,
       'digits' => Digits,
       'period' => Period,
       'algorithm' => Algorithm,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
