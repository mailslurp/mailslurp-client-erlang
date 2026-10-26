-module(maislurp-client-erlang_create_agent_conversation_note_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_agent_conversation_note_options/0]).

-type maislurp-client-erlang_create_agent_conversation_note_options() ::
    #{ 'body' := binary(),
       'sourceEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'draftId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'body' := Body,
          'sourceEmailId' := SourceEmailId,
          'draftId' := DraftId
        }) ->
    #{ 'body' => Body,
       'sourceEmailId' => SourceEmailId,
       'draftId' => DraftId
     }.
