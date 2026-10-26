-module(maislurp-client-erlang_domain_monitor_summary_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_summary_dto/0]).

-type maislurp-client-erlang_domain_monitor_summary_dto() ::
    #{ 'monitor' := maislurp-client-erlang_domain_monitor_dto:maislurp-client-erlang_domain_monitor_dto(),
       'latestRun' => maislurp-client-erlang_domain_monitor_run_dto:maislurp-client-erlang_domain_monitor_run_dto(),
       'insights' := maislurp-client-erlang_domain_monitor_insights_dto:maislurp-client-erlang_domain_monitor_insights_dto(),
       'authStack' := maislurp-client-erlang_check_email_auth_stack_results:maislurp-client-erlang_check_email_auth_stack_results()
     }.

encode(#{ 'monitor' := Monitor,
          'latestRun' := LatestRun,
          'insights' := Insights,
          'authStack' := AuthStack
        }) ->
    #{ 'monitor' => Monitor,
       'latestRun' => LatestRun,
       'insights' => Insights,
       'authStack' => AuthStack
     }.
