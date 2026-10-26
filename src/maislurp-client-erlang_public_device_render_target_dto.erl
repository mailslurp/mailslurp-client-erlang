-module(maislurp-client-erlang_public_device_render_target_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_public_device_render_target_dto/0]).

-type maislurp-client-erlang_public_device_render_target_dto() ::
    #{ 'target' := binary(),
       'baseTarget' := binary(),
       'provider' => binary(),
       'client' := binary(),
       'surface' := binary(),
       'platform' := binary(),
       'formFactor' := binary(),
       'engine' := binary(),
       'appearance' := binary()
     }.

encode(#{ 'target' := Target,
          'baseTarget' := BaseTarget,
          'provider' := Provider,
          'client' := Client,
          'surface' := Surface,
          'platform' := Platform,
          'formFactor' := FormFactor,
          'engine' := Engine,
          'appearance' := Appearance
        }) ->
    #{ 'target' => Target,
       'baseTarget' => BaseTarget,
       'provider' => Provider,
       'client' => Client,
       'surface' => Surface,
       'platform' => Platform,
       'formFactor' => FormFactor,
       'engine' => Engine,
       'appearance' => Appearance
     }.
