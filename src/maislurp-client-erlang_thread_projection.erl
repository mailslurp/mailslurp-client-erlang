-module(maislurp-client-erlang_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_thread_projection/0]).

-type maislurp-client-erlang_thread_projection() ::
    #{ 'aliasId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'bcc' => list(),
       'cc' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'subject' => binary(),
       'to' := list(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'aliasId' := AliasId,
          'bcc' := Bcc,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'id' := Id,
          'inboxId' := InboxId,
          'name' := Name,
          'subject' := Subject,
          'to' := To,
          'updatedAt' := UpdatedAt,
          'userId' := UserId
        }) ->
    #{ 'aliasId' => AliasId,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'id' => Id,
       'inboxId' => InboxId,
       'name' => Name,
       'subject' => Subject,
       'to' => To,
       'updatedAt' => UpdatedAt,
       'userId' => UserId
     }.
