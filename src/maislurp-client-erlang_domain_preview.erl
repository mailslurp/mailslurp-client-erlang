-module(maislurp-client-erlang_domain_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_preview/0]).

-type maislurp-client-erlang_domain_preview() ::
    #{ 'catchAllInboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'domain' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'catchAllInboxId' := CatchAllInboxId,
          'createdAt' := CreatedAt,
          'domain' := Domain,
          'id' := Id
        }) ->
    #{ 'catchAllInboxId' => CatchAllInboxId,
       'createdAt' => CreatedAt,
       'domain' => Domain,
       'id' => Id
     }.
