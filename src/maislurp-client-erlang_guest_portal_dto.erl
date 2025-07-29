-module(maislurp-client-erlang_guest_portal_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_guest_portal_dto/0]).

-type maislurp-client-erlang_guest_portal_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'description' => binary(),
       'linkHelp' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'loginUrl' := binary()
     }.

encode(#{ 'id' := Id,
          'domainId' := DomainId,
          'userId' := UserId,
          'name' := Name,
          'description' := Description,
          'linkHelp' := LinkHelp,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'loginUrl' := LoginUrl
        }) ->
    #{ 'id' => Id,
       'domainId' => DomainId,
       'userId' => UserId,
       'name' => Name,
       'description' => Description,
       'linkHelp' => LinkHelp,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'loginUrl' => LoginUrl
     }.
