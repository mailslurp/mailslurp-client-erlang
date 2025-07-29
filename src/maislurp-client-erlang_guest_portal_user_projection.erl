-module(maislurp-client-erlang_guest_portal_user_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_guest_portal_user_projection/0]).

-type maislurp-client-erlang_guest_portal_user_projection() ::
    #{ 'username' := binary(),
       'inboxId' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' => binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'portalId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'username' := Username,
          'inboxId' := InboxId,
          'userId' := UserId,
          'emailAddress' := EmailAddress,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'portalId' := PortalId,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'username' => Username,
       'inboxId' => InboxId,
       'userId' => UserId,
       'emailAddress' => EmailAddress,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'portalId' => PortalId,
       'name' => Name,
       'id' => Id
     }.
