-module(maislurp-client-erlang_get_email_screenshot_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_get_email_screenshot_options/0]).

-type maislurp-client-erlang_get_email_screenshot_options() ::
    #{ 'height' => integer(),
       'width' => integer()
     }.

encode(#{ 'height' := Height,
          'width' := Width
        }) ->
    #{ 'height' => Height,
       'width' => Width
     }.
