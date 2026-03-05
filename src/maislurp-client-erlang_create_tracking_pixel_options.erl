-module(maislurp-client-erlang_create_tracking_pixel_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_tracking_pixel_options/0]).

-type maislurp-client-erlang_create_tracking_pixel_options() ::
    #{ 'name' => binary(),
       'recipient' => binary()
     }.

encode(#{ 'name' := Name,
          'recipient' := Recipient
        }) ->
    #{ 'name' => Name,
       'recipient' => Recipient
     }.
