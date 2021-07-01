-module(maislurp-client-erlang_tracking_pixel_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_tracking_pixel_dto/0]).

-type maislurp-client-erlang_tracking_pixel_dto() ::
    #{ 'html' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' => binary(),
       'seen' := boolean(),
       'url' := binary()
     }.

encode(#{ 'html' := Html,
          'id' := Id,
          'recipient' := Recipient,
          'seen' := Seen,
          'url' := Url
        }) ->
    #{ 'html' => Html,
       'id' => Id,
       'recipient' => Recipient,
       'seen' => Seen,
       'url' => Url
     }.
