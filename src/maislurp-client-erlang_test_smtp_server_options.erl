-module(maislurp-client-erlang_test_smtp_server_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_test_smtp_server_options/0]).

-type maislurp-client-erlang_test_smtp_server_options() ::
    #{ 'host' := binary(),
       'port' := integer(),
       'useStartTls' := boolean(),
       'username' => binary(),
       'password' => binary(),
       'from' => binary(),
       'to' => binary(),
       'captchaToken' => binary()
     }.

encode(#{ 'host' := Host,
          'port' := Port,
          'useStartTls' := UseStartTls,
          'username' := Username,
          'password' := Password,
          'from' := From,
          'to' := To,
          'captchaToken' := CaptchaToken
        }) ->
    #{ 'host' => Host,
       'port' => Port,
       'useStartTls' => UseStartTls,
       'username' => Username,
       'password' => Password,
       'from' => From,
       'to' => To,
       'captchaToken' => CaptchaToken
     }.
