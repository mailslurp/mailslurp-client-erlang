-module(maislurp-client-erlang_sending_connection_smtp_defaults).

-export([encode/1]).

-export_type([maislurp-client-erlang_sending_connection_smtp_defaults/0]).

-type maislurp-client-erlang_sending_connection_smtp_defaults() ::
    #{ 'host' => binary(),
       'hostOptions' := list(),
       'ports' := list(),
       'recommendedPort' => integer(),
       'recommendedSecurity' => binary(),
       'defaultUsername' => binary(),
       'usernameHint' => binary(),
       'passwordHint' => binary()
     }.

encode(#{ 'host' := Host,
          'hostOptions' := HostOptions,
          'ports' := Ports,
          'recommendedPort' := RecommendedPort,
          'recommendedSecurity' := RecommendedSecurity,
          'defaultUsername' := DefaultUsername,
          'usernameHint' := UsernameHint,
          'passwordHint' := PasswordHint
        }) ->
    #{ 'host' => Host,
       'hostOptions' => HostOptions,
       'ports' => Ports,
       'recommendedPort' => RecommendedPort,
       'recommendedSecurity' => RecommendedSecurity,
       'defaultUsername' => DefaultUsername,
       'usernameHint' => UsernameHint,
       'passwordHint' => PasswordHint
     }.
