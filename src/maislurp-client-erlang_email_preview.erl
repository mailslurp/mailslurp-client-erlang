-module(maislurp-client-erlang_email_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_preview/0]).

-type maislurp-client-erlang_email_preview() ::
    #{ 'attachments' => list(),
       'bcc' => list(),
       'cc' => list(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'from' => binary(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'read' => boolean(),
       'subject' => binary(),
       'to' => list()
     }.

encode(#{ 'attachments' := Attachments,
          'bcc' := Bcc,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'from' := From,
          'id' := Id,
          'read' := Read,
          'subject' := Subject,
          'to' := To
        }) ->
    #{ 'attachments' => Attachments,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'from' => From,
       'id' => Id,
       'read' => Read,
       'subject' => Subject,
       'to' => To
     }.
