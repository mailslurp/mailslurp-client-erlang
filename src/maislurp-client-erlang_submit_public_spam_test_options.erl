-module(maislurp-client-erlang_submit_public_spam_test_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_submit_public_spam_test_options/0]).

-type maislurp-client-erlang_submit_public_spam_test_options() ::
    #{ 'captchaToken' => binary()
     }.

encode(#{ 'captchaToken' := CaptchaToken
        }) ->
    #{ 'captchaToken' => CaptchaToken
     }.
