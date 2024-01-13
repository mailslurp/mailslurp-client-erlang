-module(maislurp-client-erlang_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_thread_projection/0]).

-type maislurp-client-erlang_thread_projection() ::
    #{ 'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'bcc' => list(),
       'cc' => list(),
       'aliasId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'inboxId' := InboxId,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'aliasId' := AliasId,
          'subject' := Subject,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'inboxId' => InboxId,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'aliasId' => AliasId,
       'subject' => Subject,
       'name' => Name,
       'id' => Id
     }.
