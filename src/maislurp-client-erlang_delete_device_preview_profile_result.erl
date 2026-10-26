-module(maislurp-client-erlang_delete_device_preview_profile_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_delete_device_preview_profile_result/0]).

-type maislurp-client-erlang_delete_device_preview_profile_result() ::
    #{ 'profileId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'deleted' := boolean()
     }.

encode(#{ 'profileId' := ProfileId,
          'deleted' := Deleted
        }) ->
    #{ 'profileId' => ProfileId,
       'deleted' => Deleted
     }.
