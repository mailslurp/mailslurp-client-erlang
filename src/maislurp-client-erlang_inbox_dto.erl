-module(maislurp-client-erlang_inbox_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_dto/0]).

-type maislurp-client-erlang_inbox_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'name' => binary(),
       'description' => binary(),
       'emailAddress' := binary(),
       'expiresAt' => binary(),
       'favourite' := boolean(),
       'tags' => maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'inboxType' => binary(),
       'readOnly' := boolean()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'name' := Name,
          'description' := Description,
          'emailAddress' := EmailAddress,
          'expiresAt' := ExpiresAt,
          'favourite' := Favourite,
          'tags' := Tags,
          'inboxType' := InboxType,
          'readOnly' := ReadOnly
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'name' => Name,
       'description' => Description,
       'emailAddress' => EmailAddress,
       'expiresAt' => ExpiresAt,
       'favourite' => Favourite,
       'tags' => Tags,
       'inboxType' => InboxType,
       'readOnly' => ReadOnly
     }.
