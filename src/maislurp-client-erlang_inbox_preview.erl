-module(maislurp-client-erlang_inbox_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_preview/0]).

-type maislurp-client-erlang_inbox_preview() ::
    #{ 'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddress' => binary(),
       'expiresAt' => binary(),
       'favourite' => boolean(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxType' => binary(),
       'name' => binary(),
       'tags' => list(),
       'teamAccess' => boolean()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'emailAddress' := EmailAddress,
          'expiresAt' := ExpiresAt,
          'favourite' := Favourite,
          'id' := Id,
          'inboxType' := InboxType,
          'name' := Name,
          'tags' := Tags,
          'teamAccess' := TeamAccess
        }) ->
    #{ 'createdAt' => CreatedAt,
       'emailAddress' => EmailAddress,
       'expiresAt' => ExpiresAt,
       'favourite' => Favourite,
       'id' => Id,
       'inboxType' => InboxType,
       'name' => Name,
       'tags' => Tags,
       'teamAccess' => TeamAccess
     }.
