-module(maislurp-client-erlang_lookup_ptr_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_lookup_ptr_options/0]).

-type maislurp-client-erlang_lookup_ptr_options() ::
    #{ 'ip' := binary(),
       'captchaToken' => binary()
     }.

encode(#{ 'ip' := Ip,
          'captchaToken' := CaptchaToken
        }) ->
    #{ 'ip' => Ip,
       'captchaToken' => CaptchaToken
     }.
