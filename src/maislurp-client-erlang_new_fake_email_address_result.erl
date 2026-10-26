-module(maislurp-client-erlang_new_fake_email_address_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_new_fake_email_address_result/0]).

-type maislurp-client-erlang_new_fake_email_address_result() ::
    #{ 'emailAddress' := binary()
     }.

encode(#{ 'emailAddress' := EmailAddress
        }) ->
    #{ 'emailAddress' => EmailAddress
     }.
