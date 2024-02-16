-module(maislurp-client-erlang_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_thread_projection/0]).

-type maislurp-client-erlang_thread_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'bcc' => list(),
       'cc' => list(),
       'aliasId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'userId' := UserId,
          'inboxId' := InboxId,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'aliasId' := AliasId,
          'subject' := Subject,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'userId' => UserId,
       'inboxId' => InboxId,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'aliasId' => AliasId,
       'subject' => Subject,
       'name' => Name,
       'id' => Id
     }.
