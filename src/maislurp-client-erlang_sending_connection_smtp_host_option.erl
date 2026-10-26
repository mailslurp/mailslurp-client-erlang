-module(maislurp-client-erlang_sending_connection_smtp_host_option).

-export([encode/1]).

-export_type([maislurp-client-erlang_sending_connection_smtp_host_option/0]).

-type maislurp-client-erlang_sending_connection_smtp_host_option() ::
    #{ 'host' := binary(),
       'label' := binary()
     }.

encode(#{ 'host' := Host,
          'label' := Label
        }) ->
    #{ 'host' => Host,
       'label' => Label
     }.
