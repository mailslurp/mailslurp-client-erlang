-module(maislurp-client-erlang_server_endpoints).

-export([encode/1]).

-export_type([maislurp-client-erlang_server_endpoints/0]).

-type maislurp-client-erlang_server_endpoints() ::
    #{ 'host' := binary(),
       'port' := integer(),
       'tls' := boolean(),
       'altPorts' := list()
     }.

encode(#{ 'host' := Host,
          'port' := Port,
          'tls' := Tls,
          'altPorts' := AltPorts
        }) ->
    #{ 'host' => Host,
       'port' => Port,
       'tls' => Tls,
       'altPorts' => AltPorts
     }.
