-module(maislurp-client-erlang_device_preview_source_email_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_source_email_dto/0]).

-type maislurp-client-erlang_device_preview_source_email_dto() ::
    #{ 'subject' => binary(),
       'from' => binary(),
       'to' := list(),
       'cc' := list(),
       'bcc' := list(),
       'html' => binary(),
       'text' => binary()
     }.

encode(#{ 'subject' := Subject,
          'from' := From,
          'to' := To,
          'cc' := Cc,
          'bcc' := Bcc,
          'html' := Html,
          'text' := Text
        }) ->
    #{ 'subject' => Subject,
       'from' => From,
       'to' => To,
       'cc' => Cc,
       'bcc' => Bcc,
       'html' => Html,
       'text' => Text
     }.
