-module(maislurp-client-erlang_lookup_dmarc_domain_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_lookup_dmarc_domain_options/0]).

-type maislurp-client-erlang_lookup_dmarc_domain_options() ::
    #{ 'host' := binary()
     }.

encode(#{ 'host' := Host
        }) ->
    #{ 'host' => Host
     }.
