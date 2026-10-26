-module(maislurp-client-erlang_ai_message_model_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_model_dto/0]).

-type maislurp-client-erlang_ai_message_model_dto() ::
    #{ 'model' := binary(),
       'providerModel' := binary(),
       'evaluatorVersion' := binary(),
       'movingAlias' := boolean(),
       'tokenMultiplier' := float(),
       'supportedMessageTypes' := list(),
       'pricingVersion' := binary()
     }.

encode(#{ 'model' := Model,
          'providerModel' := ProviderModel,
          'evaluatorVersion' := EvaluatorVersion,
          'movingAlias' := MovingAlias,
          'tokenMultiplier' := TokenMultiplier,
          'supportedMessageTypes' := SupportedMessageTypes,
          'pricingVersion' := PricingVersion
        }) ->
    #{ 'model' => Model,
       'providerModel' => ProviderModel,
       'evaluatorVersion' => EvaluatorVersion,
       'movingAlias' => MovingAlias,
       'tokenMultiplier' => TokenMultiplier,
       'supportedMessageTypes' => SupportedMessageTypes,
       'pricingVersion' => PricingVersion
     }.
