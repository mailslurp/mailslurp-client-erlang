-module(maislurp-client-erlang_bounced_recipient_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounced_recipient_dto/0]).

-type maislurp-client-erlang_bounced_recipient_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' := binary(),
       'diagnosticCode' => binary(),
       'action' => binary(),
       'status' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'sentEmailId' := SentEmailId,
          'recipient' := Recipient,
          'diagnosticCode' := DiagnosticCode,
          'action' := Action,
          'status' := Status,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'sentEmailId' => SentEmailId,
       'recipient' => Recipient,
       'diagnosticCode' => DiagnosticCode,
       'action' => Action,
       'status' => Status,
       'createdAt' => CreatedAt
     }.
