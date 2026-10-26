-module(maislurp-client-erlang_email_available_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_available_result/0]).

-type maislurp-client-erlang_email_available_result() ::
    #{ 'available' := boolean()
     }.

encode(#{ 'available' := Available
        }) ->
    #{ 'available' => Available
     }.
