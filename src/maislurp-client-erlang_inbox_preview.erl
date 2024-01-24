-module(maislurp-client-erlang_inbox_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_preview/0]).

-type maislurp-client-erlang_inbox_preview() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'favourite' := boolean(),
       'name' => binary(),
       'tags' => list(),
       'teamAccess' := boolean(),
       'inboxType' => binary(),
       'virtualInbox' := boolean(),
       'expiresAt' => binary(),
       'functionsAs' => binary()
     }.

encode(#{ 'id' := Id,
          'domainId' := DomainId,
          'emailAddress' := EmailAddress,
          'createdAt' := CreatedAt,
          'favourite' := Favourite,
          'name' := Name,
          'tags' := Tags,
          'teamAccess' := TeamAccess,
          'inboxType' := InboxType,
          'virtualInbox' := VirtualInbox,
          'expiresAt' := ExpiresAt,
          'functionsAs' := FunctionsAs
        }) ->
    #{ 'id' => Id,
       'domainId' => DomainId,
       'emailAddress' => EmailAddress,
       'createdAt' => CreatedAt,
       'favourite' => Favourite,
       'name' => Name,
       'tags' => Tags,
       'teamAccess' => TeamAccess,
       'inboxType' => InboxType,
       'virtualInbox' => VirtualInbox,
       'expiresAt' => ExpiresAt,
       'functionsAs' => FunctionsAs
     }.
