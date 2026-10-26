-module(maislurp-client-erlang_email_warmup_content_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_content_options/0]).

-type maislurp-client-erlang_email_warmup_content_options() ::
    #{ 'source' := binary(),
       'subject' => binary(),
       'textBody' => binary(),
       'htmlBody' => binary()
     }.

encode(#{ 'source' := Source,
          'subject' := Subject,
          'textBody' := TextBody,
          'htmlBody' := HtmlBody
        }) ->
    #{ 'source' => Source,
       'subject' => Subject,
       'textBody' => TextBody,
       'htmlBody' => HtmlBody
     }.
