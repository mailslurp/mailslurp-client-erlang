-module(maislurp-client-erlang_inbox_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_projection/0]).

-type maislurp-client-erlang_inbox_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddress' => binary(),
       'favourite' := boolean(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxType' => binary(),
       'name' => binary(),
       'tags' => list(),
       'teamAccess' := boolean()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'emailAddress' := EmailAddress,
          'favourite' := Favourite,
          'id' := Id,
          'inboxType' := InboxType,
          'name' := Name,
          'tags' := Tags,
          'teamAccess' := TeamAccess
        }) ->
    #{ 'createdAt' => CreatedAt,
       'emailAddress' => EmailAddress,
       'favourite' => Favourite,
       'id' => Id,
       'inboxType' => InboxType,
       'name' => Name,
       'tags' => Tags,
       'teamAccess' => TeamAccess
     }.
