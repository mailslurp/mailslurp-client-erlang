-module(maislurp-client-erlang_describe_domain_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_describe_domain_options/0]).

-type maislurp-client-erlang_describe_domain_options() ::
    #{ 'domain' := binary()
     }.

encode(#{ 'domain' := Domain
        }) ->
    #{ 'domain' => Domain
     }.
