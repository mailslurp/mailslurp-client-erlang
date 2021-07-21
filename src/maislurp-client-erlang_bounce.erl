-module(maislurp-client-erlang_bounce).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce/0]).

-type maislurp-client-erlang_bounce() ::
    #{ 'bounceMta' => binary(),
       'bounceRecipients' => list(),
       'bounceSubType' => binary(),
       'bounceType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'notificationType' := binary(),
       'sender' := binary(),
       'sentToRecipients' => list(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'bounceMta' := BounceMta,
          'bounceRecipients' := BounceRecipients,
          'bounceSubType' := BounceSubType,
          'bounceType' := BounceType,
          'createdAt' := CreatedAt,
          'id' := Id,
          'notificationType' := NotificationType,
          'sender' := Sender,
          'sentToRecipients' := SentToRecipients,
          'updatedAt' := UpdatedAt,
          'userId' := UserId
        }) ->
    #{ 'bounceMta' => BounceMta,
       'bounceRecipients' => BounceRecipients,
       'bounceSubType' => BounceSubType,
       'bounceType' => BounceType,
       'createdAt' => CreatedAt,
       'id' => Id,
       'notificationType' => NotificationType,
       'sender' => Sender,
       'sentToRecipients' => SentToRecipients,
       'updatedAt' => UpdatedAt,
       'userId' => UserId
     }.
