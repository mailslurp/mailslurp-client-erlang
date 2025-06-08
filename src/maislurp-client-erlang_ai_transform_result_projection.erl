-module(maislurp-client-erlang_ai_transform_result_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_transform_result_projection/0]).

-type maislurp-client-erlang_ai_transform_result_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityType' := binary(),
       'aiTransformMappingId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'value' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'aiTransformId' := AiTransformId,
          'entityId' := EntityId,
          'entityType' := EntityType,
          'aiTransformMappingId' := AiTransformMappingId,
          'value' := Value,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'aiTransformId' => AiTransformId,
       'entityId' => EntityId,
       'entityType' => EntityType,
       'aiTransformMappingId' => AiTransformMappingId,
       'value' => Value,
       'id' => Id
     }.
