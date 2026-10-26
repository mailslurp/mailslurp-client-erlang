-module(maislurp-client-erlang_agent_automation_event_page_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_automation_event_page_dto/0]).

-type maislurp-client-erlang_agent_automation_event_page_dto() ::
    #{ 'events' := list(),
       'nextCursor' := binary(),
       'hasMore' := boolean()
     }.

encode(#{ 'events' := Events,
          'nextCursor' := NextCursor,
          'hasMore' := HasMore
        }) ->
    #{ 'events' => Events,
       'nextCursor' => NextCursor,
       'hasMore' => HasMore
     }.
