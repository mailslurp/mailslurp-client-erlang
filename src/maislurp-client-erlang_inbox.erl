-module(maislurp-client-erlang_inbox).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox/0]).

-type maislurp-client-erlang_inbox() ::
    #{ 'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'description' => binary(),
       'emailAddress' => binary(),
       'expiresAt' => binary(),
       'favourite' => boolean(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxType' => binary(),
       'name' => binary(),
       'readOnly' => boolean(),
       'tags' => list(),
       'teamAccess' => boolean(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'description' := Description,
          'emailAddress' := EmailAddress,
          'expiresAt' := ExpiresAt,
          'favourite' := Favourite,
          'id' := Id,
          'inboxType' := InboxType,
          'name' := Name,
          'readOnly' := ReadOnly,
          'tags' := Tags,
          'teamAccess' := TeamAccess,
          'userId' := UserId
        }) ->
    #{ 'createdAt' => CreatedAt,
       'description' => Description,
       'emailAddress' => EmailAddress,
       'expiresAt' => ExpiresAt,
       'favourite' => Favourite,
       'id' => Id,
       'inboxType' => InboxType,
       'name' => Name,
       'readOnly' => ReadOnly,
       'tags' => Tags,
       'teamAccess' => TeamAccess,
       'userId' => UserId
     }.
