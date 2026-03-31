-module(maislurp-client-erlang_create_inbox_forwarder_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_inbox_forwarder_options/0]).

-type maislurp-client-erlang_create_inbox_forwarder_options() ::
    #{ 'field' => binary(),
       'match' => binary(),
       'forwardToRecipients' := list(),
       'should' => binary(),
       'matchOptions' => maislurp-client-erlang_inbox_automation_match_options:maislurp-client-erlang_inbox_automation_match_options(),
       'attachmentTextExtractionMethod' => binary()
     }.

encode(#{ 'field' := Field,
          'match' := Match,
          'forwardToRecipients' := ForwardToRecipients,
          'should' := Should,
          'matchOptions' := MatchOptions,
          'attachmentTextExtractionMethod' := AttachmentTextExtractionMethod
        }) ->
    #{ 'field' => Field,
       'match' => Match,
       'forwardToRecipients' => ForwardToRecipients,
       'should' => Should,
       'matchOptions' => MatchOptions,
       'attachmentTextExtractionMethod' => AttachmentTextExtractionMethod
     }.
