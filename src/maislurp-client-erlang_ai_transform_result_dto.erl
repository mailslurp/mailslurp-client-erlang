-module(maislurp-client-erlang_ai_transform_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_transform_result_dto/0]).

-type maislurp-client-erlang_ai_transform_result_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformMappingId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'value' := maps:map(),
       'entityId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityType' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'aiTransformId' := AiTransformId,
          'aiTransformMappingId' := AiTransformMappingId,
          'value' := Value,
          'entityId' := EntityId,
          'entityType' := EntityType,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'aiTransformId' => AiTransformId,
       'aiTransformMappingId' => AiTransformMappingId,
       'value' => Value,
       'entityId' => EntityId,
       'entityType' => EntityType,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
