-module(maislurp-client-erlang_bounced_email_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounced_email_dto/0]).

-type maislurp-client-erlang_bounced_email_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'notificationType' := binary(),
       'sentToRecipients' => list(),
       'sender' := binary(),
       'bounceMta' => binary(),
       'bounceType' => binary(),
       'bounceRecipients' => list(),
       'bounceSubType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'notificationType' := NotificationType,
          'sentToRecipients' := SentToRecipients,
          'sender' := Sender,
          'bounceMta' := BounceMta,
          'bounceType' := BounceType,
          'bounceRecipients' := BounceRecipients,
          'bounceSubType' := BounceSubType,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'notificationType' => NotificationType,
       'sentToRecipients' => SentToRecipients,
       'sender' => Sender,
       'bounceMta' => BounceMta,
       'bounceType' => BounceType,
       'bounceRecipients' => BounceRecipients,
       'bounceSubType' => BounceSubType,
       'createdAt' => CreatedAt
     }.
