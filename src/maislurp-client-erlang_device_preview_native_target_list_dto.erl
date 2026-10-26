-module(maislurp-client-erlang_device_preview_native_target_list_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_native_target_list_dto/0]).

-type maislurp-client-erlang_device_preview_native_target_list_dto() ::
    #{ 'targets' := list()
     }.

encode(#{ 'targets' := Targets
        }) ->
    #{ 'targets' => Targets
     }.
