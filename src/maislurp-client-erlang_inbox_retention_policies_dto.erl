-module(maislurp-client-erlang_inbox_retention_policies_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_retention_policies_dto/0]).

-type maislurp-client-erlang_inbox_retention_policies_dto() ::
    #{ 'policies' := list()
     }.

encode(#{ 'policies' := Policies
        }) ->
    #{ 'policies' => Policies
     }.
