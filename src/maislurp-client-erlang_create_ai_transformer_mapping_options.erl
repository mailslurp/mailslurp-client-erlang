-module(maislurp-client-erlang_create_ai_transformer_mapping_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_ai_transformer_mapping_options/0]).

-type maislurp-client-erlang_create_ai_transformer_mapping_options() ::
    #{ 'name' := binary(),
       'aiTransformId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityType' := binary(),
       'contentSelector' => binary(),
       'triggerSelector' => binary(),
       'spreadRootArray' => boolean()
     }.

encode(#{ 'name' := Name,
          'aiTransformId' := AiTransformId,
          'entityId' := EntityId,
          'entityType' := EntityType,
          'contentSelector' := ContentSelector,
          'triggerSelector' := TriggerSelector,
          'spreadRootArray' := SpreadRootArray
        }) ->
    #{ 'name' => Name,
       'aiTransformId' => AiTransformId,
       'entityId' => EntityId,
       'entityType' => EntityType,
       'contentSelector' => ContentSelector,
       'triggerSelector' => TriggerSelector,
       'spreadRootArray' => SpreadRootArray
     }.
