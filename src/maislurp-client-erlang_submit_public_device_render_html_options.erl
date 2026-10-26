-module(maislurp-client-erlang_submit_public_device_render_html_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_submit_public_device_render_html_options/0]).

-type maislurp-client-erlang_submit_public_device_render_html_options() ::
    #{ 'html' := binary(),
       'subject' => binary(),
       'from' => binary()
     }.

encode(#{ 'html' := Html,
          'subject' := Subject,
          'from' := From
        }) ->
    #{ 'html' => Html,
       'subject' => Subject,
       'from' => From
     }.
