-module(maislurp-client-erlang_inbox_ruleset_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_ruleset_dto/0]).

-type maislurp-client-erlang_inbox_ruleset_dto() ::
    #{ 'action' := binary(),
       'handler' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'scope' := binary(),
       'target' := binary()
     }.

encode(#{ 'action' := Action,
          'handler' := Handler,
          'id' := Id,
          'inboxId' := InboxId,
          'scope' := Scope,
          'target' := Target
        }) ->
    #{ 'action' => Action,
       'handler' => Handler,
       'id' => Id,
       'inboxId' => InboxId,
       'scope' => Scope,
       'target' => Target
     }.
