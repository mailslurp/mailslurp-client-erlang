-module(maislurp-client-erlang_fake_email_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_fake_email_preview/0]).

-type maislurp-client-erlang_fake_email_preview() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'subject' => binary(),
       'preview' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'seen' := boolean()
     }.

encode(#{ 'id' := Id,
          'emailAddress' := EmailAddress,
          'sender' := Sender,
          'recipients' := Recipients,
          'subject' := Subject,
          'preview' := Preview,
          'createdAt' := CreatedAt,
          'seen' := Seen
        }) ->
    #{ 'id' => Id,
       'emailAddress' => EmailAddress,
       'sender' => Sender,
       'recipients' => Recipients,
       'subject' => Subject,
       'preview' => Preview,
       'createdAt' => CreatedAt,
       'seen' => Seen
     }.
