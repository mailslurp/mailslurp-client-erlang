-module(maislurp-client-erlang_create_inbox_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_inbox_dto/0]).

-type maislurp-client-erlang_create_inbox_dto() ::
    #{ 'allowTeamAccess' => boolean(),
       'description' => binary(),
       'emailAddress' => binary(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'expiresIn' => integer(),
       'favourite' => boolean(),
       'inboxType' => binary(),
       'name' => binary(),
       'tags' => list(),
       'useDomainPool' => boolean()
     }.

encode(#{ 'allowTeamAccess' := AllowTeamAccess,
          'description' := Description,
          'emailAddress' := EmailAddress,
          'expiresAt' := ExpiresAt,
          'expiresIn' := ExpiresIn,
          'favourite' := Favourite,
          'inboxType' := InboxType,
          'name' := Name,
          'tags' := Tags,
          'useDomainPool' := UseDomainPool
        }) ->
    #{ 'allowTeamAccess' => AllowTeamAccess,
       'description' => Description,
       'emailAddress' => EmailAddress,
       'expiresAt' => ExpiresAt,
       'expiresIn' => ExpiresIn,
       'favourite' => Favourite,
       'inboxType' => InboxType,
       'name' => Name,
       'tags' => Tags,
       'useDomainPool' => UseDomainPool
     }.
