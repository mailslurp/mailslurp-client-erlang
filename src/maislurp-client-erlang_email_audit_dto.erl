-module(maislurp-client-erlang_email_audit_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_audit_dto/0]).

-type maislurp-client-erlang_email_audit_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'fromAddress' => binary(),
       'recipient' => binary(),
       'subject' => binary(),
       'analysis' := maislurp-client-erlang_email_audit_analysis_result:maislurp-client-erlang_email_audit_analysis_result(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'emailId' := EmailId,
          'fromAddress' := FromAddress,
          'recipient' := Recipient,
          'subject' := Subject,
          'analysis' := Analysis,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'emailId' => EmailId,
       'fromAddress' => FromAddress,
       'recipient' => Recipient,
       'subject' => Subject,
       'analysis' => Analysis,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
