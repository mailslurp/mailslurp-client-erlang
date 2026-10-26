-module(maislurp-client-erlang_domain_monitor_run_now_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_run_now_result/0]).

-type maislurp-client-erlang_domain_monitor_run_now_result() ::
    #{ 'monitor' := maislurp-client-erlang_domain_monitor_dto:maislurp-client-erlang_domain_monitor_dto(),
       'run' := maislurp-client-erlang_domain_monitor_run_dto:maislurp-client-erlang_domain_monitor_run_dto()
     }.

encode(#{ 'monitor' := Monitor,
          'run' := Run
        }) ->
    #{ 'monitor' => Monitor,
       'run' => Run
     }.
