-module(maislurp-client-erlang_totp_device_code_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_totp_device_code_dto/0]).

-type maislurp-client-erlang_totp_device_code_dto() ::
    #{ 'code' := binary(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'code' := Code,
          'expiresAt' := ExpiresAt
        }) ->
    #{ 'code' => Code,
       'expiresAt' => ExpiresAt
     }.
