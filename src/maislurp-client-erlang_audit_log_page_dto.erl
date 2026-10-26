-module(maislurp-client-erlang_audit_log_page_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_audit_log_page_dto/0]).

-type maislurp-client-erlang_audit_log_page_dto() ::
    #{ 'items' := list(),
       'nextCursor' => binary()
     }.

encode(#{ 'items' := Items,
          'nextCursor' := NextCursor
        }) ->
    #{ 'items' => Items,
       'nextCursor' => NextCursor
     }.
