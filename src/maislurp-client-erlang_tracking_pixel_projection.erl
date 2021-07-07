-module(maislurp-client-erlang_tracking_pixel_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_tracking_pixel_projection/0]).

-type maislurp-client-erlang_tracking_pixel_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'recipient' => binary(),
       'seen' := boolean(),
       'seenAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'id' := Id,
          'inboxId' := InboxId,
          'name' := Name,
          'recipient' := Recipient,
          'seen' := Seen,
          'seenAt' := SeenAt,
          'userId' := UserId
        }) ->
    #{ 'createdAt' => CreatedAt,
       'id' => Id,
       'inboxId' => InboxId,
       'name' => Name,
       'recipient' => Recipient,
       'seen' => Seen,
       'seenAt' => SeenAt,
       'userId' => UserId
     }.
