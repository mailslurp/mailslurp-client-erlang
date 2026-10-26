-module(maislurp-client-erlang_check_domain_monitor_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_domain_monitor_options/0]).

-type maislurp-client-erlang_check_domain_monitor_options() ::
    #{ 'domain' := binary(),
       'captchaToken' => binary()
     }.

encode(#{ 'domain' := Domain,
          'captchaToken' := CaptchaToken
        }) ->
    #{ 'domain' => Domain,
       'captchaToken' => CaptchaToken
     }.
