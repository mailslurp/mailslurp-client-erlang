-module(maislurp-client-erlang_check_email_auth_stack_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_email_auth_stack_options/0]).

-type maislurp-client-erlang_check_email_auth_stack_options() ::
    #{ 'domain' := binary(),
       'dkimSelector' => binary(),
       'captchaToken' => binary()
     }.

encode(#{ 'domain' := Domain,
          'dkimSelector' := DkimSelector,
          'captchaToken' := CaptchaToken
        }) ->
    #{ 'domain' => Domain,
       'dkimSelector' => DkimSelector,
       'captchaToken' => CaptchaToken
     }.
