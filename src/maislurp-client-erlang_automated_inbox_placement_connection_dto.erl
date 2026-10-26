-module(maislurp-client-erlang_automated_inbox_placement_connection_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_automated_inbox_placement_connection_dto/0]).

-type maislurp-client-erlang_automated_inbox_placement_connection_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' := binary(),
       'provider' := binary(),
       'fromEmail' := binary(),
       'smtpHost' => binary(),
       'smtpPort' => integer(),
       'smtpSecurity' => binary(),
       'usernameHint' => binary(),
       'status' := binary(),
       'lastVerifiedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastErrorCode' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'provider' := Provider,
          'fromEmail' := FromEmail,
          'smtpHost' := SmtpHost,
          'smtpPort' := SmtpPort,
          'smtpSecurity' := SmtpSecurity,
          'usernameHint' := UsernameHint,
          'status' := Status,
          'lastVerifiedAt' := LastVerifiedAt,
          'lastErrorCode' := LastErrorCode,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'provider' => Provider,
       'fromEmail' => FromEmail,
       'smtpHost' => SmtpHost,
       'smtpPort' => SmtpPort,
       'smtpSecurity' => SmtpSecurity,
       'usernameHint' => UsernameHint,
       'status' => Status,
       'lastVerifiedAt' => LastVerifiedAt,
       'lastErrorCode' => LastErrorCode,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
