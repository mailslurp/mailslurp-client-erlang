-module(maislurp-client-erlang_ruleset_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_ruleset_dto/0]).

-type maislurp-client-erlang_ruleset_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'scope' := binary(),
       'action' := binary(),
       'target' := binary(),
       'handler' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'inboxId' := InboxId,
          'phoneId' := PhoneId,
          'scope' := Scope,
          'action' := Action,
          'target' := Target,
          'handler' := Handler,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'inboxId' => InboxId,
       'phoneId' => PhoneId,
       'scope' => Scope,
       'action' => Action,
       'target' => Target,
       'handler' => Handler,
       'createdAt' => CreatedAt
     }.
