-module(maislurp-client-erlang_admin_send_pause_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_admin_send_pause_dto/0]).

-type maislurp-client-erlang_admin_send_pause_dto() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'reason' := binary(),
       'createdBy' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'userId' := UserId,
          'reason' := Reason,
          'createdBy' := CreatedBy,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'userId' => UserId,
       'reason' => Reason,
       'createdBy' => CreatedBy,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
