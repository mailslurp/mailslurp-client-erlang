-module(maislurp-client-erlang_organization_inbox_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_organization_inbox_projection/0]).

-type maislurp-client-erlang_organization_inbox_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'name' => binary(),
       'emailAddress' => binary(),
       'favourite' := boolean(),
       'tags' => list(),
       'teamAccess' := boolean(),
       'inboxType' => binary(),
       'readOnly' := boolean(),
       'virtualInbox' := boolean()
     }.

encode(#{ 'id' := Id,
          'createdAt' := CreatedAt,
          'name' := Name,
          'emailAddress' := EmailAddress,
          'favourite' := Favourite,
          'tags' := Tags,
          'teamAccess' := TeamAccess,
          'inboxType' := InboxType,
          'readOnly' := ReadOnly,
          'virtualInbox' := VirtualInbox
        }) ->
    #{ 'id' => Id,
       'createdAt' => CreatedAt,
       'name' => Name,
       'emailAddress' => EmailAddress,
       'favourite' => Favourite,
       'tags' => Tags,
       'teamAccess' => TeamAccess,
       'inboxType' => InboxType,
       'readOnly' => ReadOnly,
       'virtualInbox' => VirtualInbox
     }.
