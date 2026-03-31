-module(maislurp-client-erlang_organization_inbox_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_organization_inbox_projection/0]).

-type maislurp-client-erlang_organization_inbox_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'name' => binary(),
       'emailAddress' := binary(),
       'favourite' := boolean(),
       'tags' => list(),
       'teamAccess' := boolean(),
       'inboxType' => binary(),
       'readOnly' := boolean(),
       'virtualInbox' := boolean(),
       'functionsAs' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'description' => binary(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'accountRegion' => binary()
     }.

encode(#{ 'id' := Id,
          'domainId' := DomainId,
          'createdAt' := CreatedAt,
          'name' := Name,
          'emailAddress' := EmailAddress,
          'favourite' := Favourite,
          'tags' := Tags,
          'teamAccess' := TeamAccess,
          'inboxType' := InboxType,
          'readOnly' := ReadOnly,
          'virtualInbox' := VirtualInbox,
          'functionsAs' := FunctionsAs,
          'userId' := UserId,
          'description' := Description,
          'expiresAt' := ExpiresAt,
          'accountRegion' := AccountRegion
        }) ->
    #{ 'id' => Id,
       'domainId' => DomainId,
       'createdAt' => CreatedAt,
       'name' => Name,
       'emailAddress' => EmailAddress,
       'favourite' => Favourite,
       'tags' => Tags,
       'teamAccess' => TeamAccess,
       'inboxType' => InboxType,
       'readOnly' => ReadOnly,
       'virtualInbox' => VirtualInbox,
       'functionsAs' => FunctionsAs,
       'userId' => UserId,
       'description' => Description,
       'expiresAt' => ExpiresAt,
       'accountRegion' => AccountRegion
     }.
