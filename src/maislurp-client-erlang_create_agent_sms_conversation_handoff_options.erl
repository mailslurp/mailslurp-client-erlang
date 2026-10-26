-module(maislurp-client-erlang_create_agent_sms_conversation_handoff_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_agent_sms_conversation_handoff_options/0]).

-type maislurp-client-erlang_create_agent_sms_conversation_handoff_options() ::
    #{ 'reasonCode' := binary(),
       'reason' => binary(),
       'priority' := binary(),
       'sourceSmsId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'expectedVersion' => integer()
     }.

encode(#{ 'reasonCode' := ReasonCode,
          'reason' := Reason,
          'priority' := Priority,
          'sourceSmsId' := SourceSmsId,
          'expectedVersion' := ExpectedVersion
        }) ->
    #{ 'reasonCode' => ReasonCode,
       'reason' => Reason,
       'priority' => Priority,
       'sourceSmsId' => SourceSmsId,
       'expectedVersion' => ExpectedVersion
     }.
