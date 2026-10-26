-module(maislurp-client-erlang_public_device_render_target_list_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_public_device_render_target_list_dto/0]).

-type maislurp-client-erlang_public_device_render_target_list_dto() ::
    #{ 'targets' := list()
     }.

encode(#{ 'targets' := Targets
        }) ->
    #{ 'targets' => Targets
     }.
