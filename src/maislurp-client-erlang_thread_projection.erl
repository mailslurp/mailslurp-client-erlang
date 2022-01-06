-module(maislurp-client-erlang_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_thread_projection/0]).

-type maislurp-client-erlang_thread_projection() ::
    #{ 'name' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'updatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'subject' => binary(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' => list(),
       'bcc' => list(),
       'cc' => list(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'aliasId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'updatedAt' := UpdatedAt,
          'subject' := Subject,
          'userId' := UserId,
          'inboxId' := InboxId,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'aliasId' := AliasId
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'updatedAt' => UpdatedAt,
       'subject' => Subject,
       'userId' => UserId,
       'inboxId' => InboxId,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'aliasId' => AliasId
     }.
