-module(maislurp-client-erlang_campaign_probe_run_now_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_campaign_probe_run_now_result/0]).

-type maislurp-client-erlang_campaign_probe_run_now_result() ::
    #{ 'probe' := maislurp-client-erlang_campaign_probe_dto:maislurp-client-erlang_campaign_probe_dto(),
       'run' := maislurp-client-erlang_campaign_probe_run_dto:maislurp-client-erlang_campaign_probe_run_dto()
     }.

encode(#{ 'probe' := Probe,
          'run' := Run
        }) ->
    #{ 'probe' => Probe,
       'run' => Run
     }.
