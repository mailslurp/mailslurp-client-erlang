-module(maislurp-client-erlang_create_public_device_render_test_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_public_device_render_test_options/0]).

-type maislurp-client-erlang_create_public_device_render_test_options() ::
    #{ 'captchaToken' => binary(),
       'target' => binary(),
       'previewMode' := binary()
     }.

encode(#{ 'captchaToken' := CaptchaToken,
          'target' := Target,
          'previewMode' := PreviewMode
        }) ->
    #{ 'captchaToken' => CaptchaToken,
       'target' => Target,
       'previewMode' => PreviewMode
     }.
