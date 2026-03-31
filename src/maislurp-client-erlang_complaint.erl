-module(maislurp-client-erlang_complaint).

-export([encode/1]).

-export_type([maislurp-client-erlang_complaint/0]).

-type maislurp-client-erlang_complaint() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventType' => binary(),
       'mailSource' => binary(),
       'mailMessageId' => binary(),
       'complaintRecipient' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'eventType' := EventType,
          'mailSource' := MailSource,
          'mailMessageId' := MailMessageId,
          'complaintRecipient' := ComplaintRecipient,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'eventType' => EventType,
       'mailSource' => MailSource,
       'mailMessageId' => MailMessageId,
       'complaintRecipient' => ComplaintRecipient,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
