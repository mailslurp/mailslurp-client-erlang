-module(maislurp-client-erlang_domain_issues_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_issues_dto/0]).

-type maislurp-client-erlang_domain_issues_dto() ::
    #{ 'hasIssues' := boolean()
     }.

encode(#{ 'hasIssues' := HasIssues
        }) ->
    #{ 'hasIssues' => HasIssues
     }.
