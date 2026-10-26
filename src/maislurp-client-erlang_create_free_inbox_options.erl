-module(maislurp-client-erlang_create_free_inbox_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_free_inbox_options/0]).

-type maislurp-client-erlang_create_free_inbox_options() ::
    #{ 'captchaToken' := binary()
     }.

encode(#{ 'captchaToken' := CaptchaToken
        }) ->
    #{ 'captchaToken' => CaptchaToken
     }.
