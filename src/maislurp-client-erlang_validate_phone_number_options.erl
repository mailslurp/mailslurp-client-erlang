-module(maislurp-client-erlang_validate_phone_number_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_validate_phone_number_options/0]).

-type maislurp-client-erlang_validate_phone_number_options() ::
    #{ 'phoneNumber' := binary()
     }.

encode(#{ 'phoneNumber' := PhoneNumber
        }) ->
    #{ 'phoneNumber' => PhoneNumber
     }.
