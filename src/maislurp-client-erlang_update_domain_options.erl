-module(maislurp-client-erlang_update_domain_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_domain_options/0]).

-type maislurp-client-erlang_update_domain_options() ::
    #{ 'catchAllInboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'catchAllInboxId' := CatchAllInboxId
        }) ->
    #{ 'catchAllInboxId' => CatchAllInboxId
     }.
