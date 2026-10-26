-module(maislurp-client-erlang_email_screenshot_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_screenshot_result/0]).

-type maislurp-client-erlang_email_screenshot_result() ::
    #{ 'base64EncodedImage' := binary()
     }.

encode(#{ 'base64EncodedImage' := Base64EncodedImage
        }) ->
    #{ 'base64EncodedImage' => Base64EncodedImage
     }.
