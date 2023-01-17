-module(maislurp-client-erlang_create_inbox_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_inbox_dto/0]).

-type maislurp-client-erlang_create_inbox_dto() ::
    #{ 'emailAddress' => binary(),
       'name' => binary(),
       'description' => binary(),
       'useDomainPool' => boolean(),
       'tags' => list(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'favourite' => boolean(),
       'expiresIn' => integer(),
       'allowTeamAccess' => boolean(),
       'inboxType' => binary(),
       'virtualInbox' => boolean(),
       'useShortAddress' => boolean()
     }.

encode(#{ 'emailAddress' := EmailAddress,
          'name' := Name,
          'description' := Description,
          'useDomainPool' := UseDomainPool,
          'tags' := Tags,
          'expiresAt' := ExpiresAt,
          'favourite' := Favourite,
          'expiresIn' := ExpiresIn,
          'allowTeamAccess' := AllowTeamAccess,
          'inboxType' := InboxType,
          'virtualInbox' := VirtualInbox,
          'useShortAddress' := UseShortAddress
        }) ->
    #{ 'emailAddress' => EmailAddress,
       'name' => Name,
       'description' => Description,
       'useDomainPool' => UseDomainPool,
       'tags' => Tags,
       'expiresAt' => ExpiresAt,
       'favourite' => Favourite,
       'expiresIn' => ExpiresIn,
       'allowTeamAccess' => AllowTeamAccess,
       'inboxType' => InboxType,
       'virtualInbox' => VirtualInbox,
       'useShortAddress' => UseShortAddress
     }.
