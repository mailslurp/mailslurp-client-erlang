-module(maislurp-client-erlang_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_thread_projection/0]).

-type maislurp-client-erlang_thread_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bcc' => list(),
       'cc' => list(),
       'aliasId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'subject' := Subject,
          'inboxId' := InboxId,
          'userId' := UserId,
          'to' := To,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'bcc' := Bcc,
          'cc' := Cc,
          'aliasId' := AliasId
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'subject' => Subject,
       'inboxId' => InboxId,
       'userId' => UserId,
       'to' => To,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'bcc' => Bcc,
       'cc' => Cc,
       'aliasId' => AliasId
     }.
