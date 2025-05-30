-module(maislurp-client-erlang_inbox_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_dto/0]).

-type maislurp-client-erlang_inbox_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'name' => binary(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'description' => binary(),
       'emailAddress' := binary(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'favourite' := boolean(),
       'tags' => list(),
       'inboxType' => binary(),
       'readOnly' := boolean(),
       'virtualInbox' := boolean(),
       'functionsAs' => binary(),
       'localPart' => binary(),
       'domain' => binary(),
       'accountRegion' => binary()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'name' := Name,
          'domainId' := DomainId,
          'description' := Description,
          'emailAddress' := EmailAddress,
          'expiresAt' := ExpiresAt,
          'favourite' := Favourite,
          'tags' := Tags,
          'inboxType' := InboxType,
          'readOnly' := ReadOnly,
          'virtualInbox' := VirtualInbox,
          'functionsAs' := FunctionsAs,
          'localPart' := LocalPart,
          'domain' := Domain,
          'accountRegion' := AccountRegion
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'name' => Name,
       'domainId' => DomainId,
       'description' => Description,
       'emailAddress' => EmailAddress,
       'expiresAt' => ExpiresAt,
       'favourite' => Favourite,
       'tags' => Tags,
       'inboxType' => InboxType,
       'readOnly' => ReadOnly,
       'virtualInbox' => VirtualInbox,
       'functionsAs' => FunctionsAs,
       'localPart' => LocalPart,
       'domain' => Domain,
       'accountRegion' => AccountRegion
     }.
