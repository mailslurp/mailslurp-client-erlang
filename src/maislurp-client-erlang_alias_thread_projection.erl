-module(maislurp-client-erlang_alias_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_alias_thread_projection/0]).

-type maislurp-client-erlang_alias_thread_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'cc' => list(),
       'bcc' => list(),
       'aliasId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'inboxId' := InboxId,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'aliasId' := AliasId,
          'subject' := Subject,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'inboxId' => InboxId,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'aliasId' => AliasId,
       'subject' => Subject,
       'name' => Name,
       'id' => Id
     }.
