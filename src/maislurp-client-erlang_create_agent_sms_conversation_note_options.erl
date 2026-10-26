-module(maislurp-client-erlang_create_agent_sms_conversation_note_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_agent_sms_conversation_note_options/0]).

-type maislurp-client-erlang_create_agent_sms_conversation_note_options() ::
    #{ 'body' := binary(),
       'sourceSmsId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'body' := Body,
          'sourceSmsId' := SourceSmsId
        }) ->
    #{ 'body' => Body,
       'sourceSmsId' => SourceSmsId
     }.
