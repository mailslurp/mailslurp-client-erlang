-module(maislurp-client-erlang_agent_sms_conversation_cursor_page_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_sms_conversation_cursor_page_dto/0]).

-type maislurp-client-erlang_agent_sms_conversation_cursor_page_dto() ::
    #{ 'items' := list(),
       'nextCursor' => binary(),
       'hasMore' := boolean()
     }.

encode(#{ 'items' := Items,
          'nextCursor' := NextCursor,
          'hasMore' := HasMore
        }) ->
    #{ 'items' => Items,
       'nextCursor' => NextCursor,
       'hasMore' => HasMore
     }.
