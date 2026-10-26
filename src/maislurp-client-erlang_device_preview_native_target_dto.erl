-module(maislurp-client-erlang_device_preview_native_target_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_native_target_dto/0]).

-type maislurp-client-erlang_device_preview_native_target_dto() ::
    #{ 'target' := binary(),
       'baseTarget' := binary(),
       'provider' => binary(),
       'client' := binary(),
       'surface' := binary(),
       'platform' := binary(),
       'formFactor' := binary(),
       'engine' := binary(),
       'appearance' := binary(),
       'creditCost' := integer(),
       'tier' := binary(),
       'timeoutSeconds' := integer()
     }.

encode(#{ 'target' := Target,
          'baseTarget' := BaseTarget,
          'provider' := Provider,
          'client' := Client,
          'surface' := Surface,
          'platform' := Platform,
          'formFactor' := FormFactor,
          'engine' := Engine,
          'appearance' := Appearance,
          'creditCost' := CreditCost,
          'tier' := Tier,
          'timeoutSeconds' := TimeoutSeconds
        }) ->
    #{ 'target' => Target,
       'baseTarget' => BaseTarget,
       'provider' => Provider,
       'client' => Client,
       'surface' => Surface,
       'platform' => Platform,
       'formFactor' => FormFactor,
       'engine' => Engine,
       'appearance' => Appearance,
       'creditCost' => CreditCost,
       'tier' => Tier,
       'timeoutSeconds' => TimeoutSeconds
     }.
