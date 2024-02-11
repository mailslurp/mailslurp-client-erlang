-module(maislurp-client-erlang_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_thread_projection/0]).

-type maislurp-client-erlang_thread_projection() ::
    #{ 'subject' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' := list(),
       'bcc' => list(),
       'cc' => list(),
       'aliasId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'subject' := Subject,
          'inboxId' := InboxId,
          'userId' := UserId,
          'to' := To,
          'bcc' := Bcc,
          'cc' := Cc,
          'aliasId' := AliasId,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'subject' => Subject,
       'inboxId' => InboxId,
       'userId' => UserId,
       'to' => To,
       'bcc' => Bcc,
       'cc' => Cc,
       'aliasId' => AliasId,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'name' => Name,
       'id' => Id
     }.
