-module(maislurp-client-erlang_tracking_pixel_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_tracking_pixel_projection/0]).

-type maislurp-client-erlang_tracking_pixel_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' => binary(),
       'seen' := boolean(),
       'seenAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'inboxId' := InboxId,
          'sentEmailId' := SentEmailId,
          'recipient' := Recipient,
          'seen' := Seen,
          'seenAt' := SeenAt,
          'createdAt' := CreatedAt,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'inboxId' => InboxId,
       'sentEmailId' => SentEmailId,
       'recipient' => Recipient,
       'seen' => Seen,
       'seenAt' => SeenAt,
       'createdAt' => CreatedAt,
       'name' => Name,
       'id' => Id
     }.
