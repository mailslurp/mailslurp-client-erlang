-module(maislurp-client-erlang_totp_device_optional_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_totp_device_optional_dto/0]).

-type maislurp-client-erlang_totp_device_optional_dto() ::
    #{ 'device' => maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto()
     }.

encode(#{ 'device' := Device
        }) ->
    #{ 'device' => Device
     }.
