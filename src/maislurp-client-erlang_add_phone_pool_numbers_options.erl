-module(maislurp-client-erlang_add_phone_pool_numbers_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_add_phone_pool_numbers_options/0]).

-type maislurp-client-erlang_add_phone_pool_numbers_options() ::
    #{ 'phoneNumberIds' := list()
     }.

encode(#{ 'phoneNumberIds' := PhoneNumberIds
        }) ->
    #{ 'phoneNumberIds' => PhoneNumberIds
     }.
