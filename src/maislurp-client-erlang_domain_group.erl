-module(maislurp-client-erlang_domain_group).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_group/0]).

-type maislurp-client-erlang_domain_group() ::
    #{ 'label' := binary(),
       'domains' := list()
     }.

encode(#{ 'label' := Label,
          'domains' := Domains
        }) ->
    #{ 'label' => Label,
       'domains' => Domains
     }.
