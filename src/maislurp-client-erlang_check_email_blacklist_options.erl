-module(maislurp-client-erlang_check_email_blacklist_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_email_blacklist_options/0]).

-type maislurp-client-erlang_check_email_blacklist_options() ::
    #{ 'domain' => binary(),
       'ipAddress' => binary(),
       'mxHost' => binary(),
       'captchaToken' => binary()
     }.

encode(#{ 'domain' := Domain,
          'ipAddress' := IpAddress,
          'mxHost' := MxHost,
          'captchaToken' := CaptchaToken
        }) ->
    #{ 'domain' => Domain,
       'ipAddress' => IpAddress,
       'mxHost' => MxHost,
       'captchaToken' => CaptchaToken
     }.
