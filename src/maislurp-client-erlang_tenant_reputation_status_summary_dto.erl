-module(maislurp-client-erlang_tenant_reputation_status_summary_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_tenant_reputation_status_summary_dto/0]).

-type maislurp-client-erlang_tenant_reputation_status_summary_dto() ::
    #{ 'generatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'rows' := list()
     }.

encode(#{ 'generatedAt' := GeneratedAt,
          'userId' := UserId,
          'rows' := Rows
        }) ->
    #{ 'generatedAt' => GeneratedAt,
       'userId' => UserId,
       'rows' => Rows
     }.
