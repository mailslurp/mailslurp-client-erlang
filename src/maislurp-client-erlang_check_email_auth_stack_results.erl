-module(maislurp-client-erlang_check_email_auth_stack_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_email_auth_stack_results/0]).

-type maislurp-client-erlang_check_email_auth_stack_results() ::
    #{ 'domain' := binary(),
       'status' := binary(),
       'healthScore' := integer(),
       'totalChecks' := integer(),
       'passingChecks' := integer(),
       'failingChecks' := integer(),
       'spf' := maislurp-client-erlang_lookup_spf_domain_results:maislurp-client-erlang_lookup_spf_domain_results(),
       'dmarc' := maislurp-client-erlang_lookup_dmarc_domain_results:maislurp-client-erlang_lookup_dmarc_domain_results(),
       'dkim' := maislurp-client-erlang_lookup_dkim_domain_results:maislurp-client-erlang_lookup_dkim_domain_results(),
       'bimi' := maislurp-client-erlang_lookup_bimi_domain_results:maislurp-client-erlang_lookup_bimi_domain_results(),
       'mx' := maislurp-client-erlang_lookup_mx_records_results:maislurp-client-erlang_lookup_mx_records_results(),
       'mtaSts' := maislurp-client-erlang_lookup_mta_sts_domain_results:maislurp-client-erlang_lookup_mta_sts_domain_results(),
       'tlsReporting' := maislurp-client-erlang_lookup_tls_reporting_domain_results:maislurp-client-erlang_lookup_tls_reporting_domain_results(),
       'insights' := list(),
       'warnings' := list(),
       'errors' := list()
     }.

encode(#{ 'domain' := Domain,
          'status' := Status,
          'healthScore' := HealthScore,
          'totalChecks' := TotalChecks,
          'passingChecks' := PassingChecks,
          'failingChecks' := FailingChecks,
          'spf' := Spf,
          'dmarc' := Dmarc,
          'dkim' := Dkim,
          'bimi' := Bimi,
          'mx' := Mx,
          'mtaSts' := MtaSts,
          'tlsReporting' := TlsReporting,
          'insights' := Insights,
          'warnings' := Warnings,
          'errors' := Errors
        }) ->
    #{ 'domain' => Domain,
       'status' => Status,
       'healthScore' => HealthScore,
       'totalChecks' => TotalChecks,
       'passingChecks' => PassingChecks,
       'failingChecks' => FailingChecks,
       'spf' => Spf,
       'dmarc' => Dmarc,
       'dkim' => Dkim,
       'bimi' => Bimi,
       'mx' => Mx,
       'mtaSts' => MtaSts,
       'tlsReporting' => TlsReporting,
       'insights' => Insights,
       'warnings' => Warnings,
       'errors' => Errors
     }.
