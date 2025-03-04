-module(maislurp-client-erlang_alias_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_alias_thread_projection/0]).

-type maislurp-client-erlang_alias_thread_projection() ::
    #{ 'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'cc' => list(),
       'bcc' => list(),
       'aliasId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'subject' := Subject,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'userId' := UserId,
          'inboxId' := InboxId,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'aliasId' := AliasId,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'subject' => Subject,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'userId' => UserId,
       'inboxId' => InboxId,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'aliasId' => AliasId,
       'name' => Name,
       'id' => Id
     }.
