-module(maislurp-client-erlang_tenant_reputation_findings_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_tenant_reputation_findings_dto/0]).

-type maislurp-client-erlang_tenant_reputation_findings_dto() ::
    #{ 'generatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'findings' := list()
     }.

encode(#{ 'generatedAt' := GeneratedAt,
          'userId' := UserId,
          'findings' := Findings
        }) ->
    #{ 'generatedAt' => GeneratedAt,
       'userId' => UserId,
       'findings' => Findings
     }.
