-module(maislurp-client-erlang_ai_transform_mapping_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_transform_mapping_projection/0]).

-type maislurp-client-erlang_ai_transform_mapping_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'aiTransformId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityType' := binary(),
       'contentSelector' => binary(),
       'triggerSelector' => binary(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'createdAt' := CreatedAt,
          'aiTransformId' := AiTransformId,
          'entityId' := EntityId,
          'entityType' := EntityType,
          'contentSelector' := ContentSelector,
          'triggerSelector' := TriggerSelector,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'createdAt' => CreatedAt,
       'aiTransformId' => AiTransformId,
       'entityId' => EntityId,
       'entityType' => EntityType,
       'contentSelector' => ContentSelector,
       'triggerSelector' => TriggerSelector,
       'name' => Name,
       'id' => Id
     }.
