-module(maislurp-client-erlang_tracking_pixel_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_tracking_pixel_dto/0]).

-type maislurp-client-erlang_tracking_pixel_dto() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'html' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' => binary(),
       'seen' := boolean(),
       'seenAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'url' := binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'html' := Html,
          'id' := Id,
          'inboxId' := InboxId,
          'recipient' := Recipient,
          'seen' := Seen,
          'seenAt' := SeenAt,
          'sentEmailId' := SentEmailId,
          'url' := Url
        }) ->
    #{ 'createdAt' => CreatedAt,
       'html' => Html,
       'id' => Id,
       'inboxId' => InboxId,
       'recipient' => Recipient,
       'seen' => Seen,
       'seenAt' => SeenAt,
       'sentEmailId' => SentEmailId,
       'url' => Url
     }.
