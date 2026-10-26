-module(maislurp-client-erlang_alias_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_alias_thread_projection/0]).

-type maislurp-client-erlang_alias_thread_projection() ::
    #{ 'subject' => binary(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'cc' => list(),
       'bcc' => list(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'aliasId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'subject' := Subject,
          'name' := Name,
          'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'to' := To,
          'createdAt' := CreatedAt,
          'cc' := Cc,
          'bcc' := Bcc,
          'updatedAt' := UpdatedAt,
          'aliasId' := AliasId
        }) ->
    #{ 'subject' => Subject,
       'name' => Name,
       'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'to' => To,
       'createdAt' => CreatedAt,
       'cc' => Cc,
       'bcc' => Bcc,
       'updatedAt' => UpdatedAt,
       'aliasId' => AliasId
     }.
