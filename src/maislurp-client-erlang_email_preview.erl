-module(maislurp-client-erlang_email_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_preview/0]).

-type maislurp-client-erlang_email_preview() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'to' := list(),
       'from' => binary(),
       'bcc' => list(),
       'cc' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'read' := boolean(),
       'attachments' => list()
     }.

encode(#{ 'id' := Id,
          'subject' := Subject,
          'to' := To,
          'from' := From,
          'bcc' := Bcc,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'read' := Read,
          'attachments' := Attachments
        }) ->
    #{ 'id' => Id,
       'subject' => Subject,
       'to' => To,
       'from' => From,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'read' => Read,
       'attachments' => Attachments
     }.
