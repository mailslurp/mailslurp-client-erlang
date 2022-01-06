-module(maislurp-client-erlang_tracking_pixel_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_tracking_pixel_dto/0]).

-type maislurp-client-erlang_tracking_pixel_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'seen' => boolean(),
       'recipient' => binary(),
       'html' => binary(),
       'url' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'seenAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'seen' := Seen,
          'recipient' := Recipient,
          'html' := Html,
          'url' := Url,
          'inboxId' := InboxId,
          'sentEmailId' := SentEmailId,
          'seenAt' := SeenAt,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'seen' => Seen,
       'recipient' => Recipient,
       'html' => Html,
       'url' => Url,
       'inboxId' => InboxId,
       'sentEmailId' => SentEmailId,
       'seenAt' => SeenAt,
       'createdAt' => CreatedAt
     }.
