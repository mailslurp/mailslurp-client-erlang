-module(maislurp-client-erlang_delete_device_preview_share_link_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_delete_device_preview_share_link_result/0]).

-type maislurp-client-erlang_delete_device_preview_share_link_result() ::
    #{ 'shareLinkId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'revoked' := boolean()
     }.

encode(#{ 'shareLinkId' := ShareLinkId,
          'revoked' := Revoked
        }) ->
    #{ 'shareLinkId' => ShareLinkId,
       'revoked' => Revoked
     }.
