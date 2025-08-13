-module(maislurp-client-erlang_lookup_mx_records_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_lookup_mx_records_options/0]).

-type maislurp-client-erlang_lookup_mx_records_options() ::
    #{ 'host' := binary()
     }.

encode(#{ 'host' := Host
        }) ->
    #{ 'host' => Host
     }.
