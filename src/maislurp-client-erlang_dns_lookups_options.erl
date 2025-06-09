-module(maislurp-client-erlang_dns_lookups_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_dns_lookups_options/0]).

-type maislurp-client-erlang_dns_lookups_options() ::
    #{ 'lookups' := list()
     }.

encode(#{ 'lookups' := Lookups
        }) ->
    #{ 'lookups' => Lookups
     }.
