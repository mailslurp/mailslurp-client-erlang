-module(maislurp-client-erlang_agent_capability_features_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_capability_features_dto/0]).

-type maislurp-client-erlang_agent_capability_features_dto() ::
    #{ 'conversationQueue' := boolean(),
       'durableEvents' := boolean(),
       'conversationClaims' := boolean(),
       'humanHandoff' := boolean(),
       'internalNotes' := boolean(),
       'threadedReplyDrafts' := boolean(),
       'webhookSubscriptionsManagedByOwner' := boolean(),
       'virtualTotpDevices' := boolean(),
       'phoneNumberSmsRead' := boolean(),
       'phoneNumberSmsSend' := boolean(),
       'smsConversationQueue' := boolean(),
       'smsDurableEvents' := boolean(),
       'smsConversationClaims' := boolean(),
       'smsHumanHandoff' := boolean(),
       'smsInternalNotes' := boolean(),
       'smsIdempotentSend' := boolean()
     }.

encode(#{ 'conversationQueue' := ConversationQueue,
          'durableEvents' := DurableEvents,
          'conversationClaims' := ConversationClaims,
          'humanHandoff' := HumanHandoff,
          'internalNotes' := InternalNotes,
          'threadedReplyDrafts' := ThreadedReplyDrafts,
          'webhookSubscriptionsManagedByOwner' := WebhookSubscriptionsManagedByOwner,
          'virtualTotpDevices' := VirtualTotpDevices,
          'phoneNumberSmsRead' := PhoneNumberSmsRead,
          'phoneNumberSmsSend' := PhoneNumberSmsSend,
          'smsConversationQueue' := SmsConversationQueue,
          'smsDurableEvents' := SmsDurableEvents,
          'smsConversationClaims' := SmsConversationClaims,
          'smsHumanHandoff' := SmsHumanHandoff,
          'smsInternalNotes' := SmsInternalNotes,
          'smsIdempotentSend' := SmsIdempotentSend
        }) ->
    #{ 'conversationQueue' => ConversationQueue,
       'durableEvents' => DurableEvents,
       'conversationClaims' => ConversationClaims,
       'humanHandoff' => HumanHandoff,
       'internalNotes' => InternalNotes,
       'threadedReplyDrafts' => ThreadedReplyDrafts,
       'webhookSubscriptionsManagedByOwner' => WebhookSubscriptionsManagedByOwner,
       'virtualTotpDevices' => VirtualTotpDevices,
       'phoneNumberSmsRead' => PhoneNumberSmsRead,
       'phoneNumberSmsSend' => PhoneNumberSmsSend,
       'smsConversationQueue' => SmsConversationQueue,
       'smsDurableEvents' => SmsDurableEvents,
       'smsConversationClaims' => SmsConversationClaims,
       'smsHumanHandoff' => SmsHumanHandoff,
       'smsInternalNotes' => SmsInternalNotes,
       'smsIdempotentSend' => SmsIdempotentSend
     }.
