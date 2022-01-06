-module(maislurp-client-erlang_organization_inbox_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_organization_inbox_projection/0]).

-type maislurp-client-erlang_organization_inbox_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'name' => binary(),
       'emailAddress' => binary(),
       'favourite' := boolean(),
       'tags' => maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'teamAccess' := boolean(),
       'inboxType' => binary(),
       'readOnly' := boolean()
     }.

encode(#{ 'id' := Id,
          'createdAt' := CreatedAt,
          'name' := Name,
          'emailAddress' := EmailAddress,
          'favourite' := Favourite,
          'tags' := Tags,
          'teamAccess' := TeamAccess,
          'inboxType' := InboxType,
          'readOnly' := ReadOnly
        }) ->
    #{ 'id' => Id,
       'createdAt' => CreatedAt,
       'name' => Name,
       'emailAddress' => EmailAddress,
       'favourite' => Favourite,
       'tags' => Tags,
       'teamAccess' => TeamAccess,
       'inboxType' => InboxType,
       'readOnly' => ReadOnly
     }.
