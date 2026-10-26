-module(maislurp-client-erlang_device_preview_shared_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_shared_result_dto/0]).

-type maislurp-client-erlang_device_preview_shared_result_dto() ::
    #{ 'share' := maislurp-client-erlang_device_preview_share_link_dto:maislurp-client-erlang_device_preview_share_link_dto(),
       'run' := maislurp-client-erlang_device_preview_shared_run_dto:maislurp-client-erlang_device_preview_shared_run_dto(),
       'targets' := list(),
       'screenshots' := list(),
       'comments' := list()
     }.

encode(#{ 'share' := Share,
          'run' := Run,
          'targets' := Targets,
          'screenshots' := Screenshots,
          'comments' := Comments
        }) ->
    #{ 'share' => Share,
       'run' => Run,
       'targets' => Targets,
       'screenshots' => Screenshots,
       'comments' => Comments
     }.
