-module(maislurp-client-erlang_ai_transform_result_projection_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_transform_result_projection_dto/0]).

-type maislurp-client-erlang_ai_transform_result_projection_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformMappingId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'value' => maps:map(),
       'entityId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'aiTransformId' := AiTransformId,
          'aiTransformMappingId' := AiTransformMappingId,
          'userId' := UserId,
          'value' := Value,
          'entityId' := EntityId,
          'entityType' := EntityType,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'aiTransformId' => AiTransformId,
       'aiTransformMappingId' => AiTransformMappingId,
       'userId' => UserId,
       'value' => Value,
       'entityId' => EntityId,
       'entityType' => EntityType,
       'createdAt' => CreatedAt
     }.
