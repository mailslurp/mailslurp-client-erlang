-module(maislurp-client-erlang_bounced_email_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounced_email_dto/0]).

-type maislurp-client-erlang_bounced_email_dto() ::
    #{ 'bounceMta' => binary(),
       'bounceRecipients' => list(),
       'bounceSubType' => binary(),
       'bounceType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'notificationType' := binary(),
       'sender' := binary(),
       'sentToRecipients' => list(),
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
       'userId' => UserId
     }.
