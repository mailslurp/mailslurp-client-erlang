-module(maislurp-client-erlang_fake_email_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_fake_email_result/0]).

-type maislurp-client-erlang_fake_email_result() ::
    #{ 'email' => maislurp-client-erlang_fake_email_dto:maislurp-client-erlang_fake_email_dto()
     }.

encode(#{ 'email' := Email
        }) ->
    #{ 'email' => Email
     }.
