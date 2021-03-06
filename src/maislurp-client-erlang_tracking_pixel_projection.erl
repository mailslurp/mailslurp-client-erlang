-module(maislurp-client-erlang_tracking_pixel_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_tracking_pixel_projection/0]).

-type maislurp-client-erlang_tracking_pixel_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'seen' := boolean(),
       'recipient' => binary(),
       'seenAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'inboxId' := InboxId,
          'userId' := UserId,
          'sentEmailId' := SentEmailId,
          'createdAt' := CreatedAt,
          'seen' := Seen,
          'recipient' := Recipient,
          'seenAt' := SeenAt
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'inboxId' => InboxId,
       'userId' => UserId,
       'sentEmailId' => SentEmailId,
       'createdAt' => CreatedAt,
       'seen' => Seen,
       'recipient' => Recipient,
       'seenAt' => SeenAt
     }.
