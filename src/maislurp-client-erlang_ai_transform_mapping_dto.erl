-module(maislurp-client-erlang_ai_transform_mapping_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_transform_mapping_dto/0]).

-type maislurp-client-erlang_ai_transform_mapping_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'entityId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'entityType' := binary()
     }.

encode(#{ 'id' := Id,
          'aiTransformId' := AiTransformId,
          'userId' := UserId,
          'name' := Name,
          'entityId' := EntityId,
          'entityType' := EntityType
        }) ->
    #{ 'id' => Id,
       'aiTransformId' => AiTransformId,
       'userId' => UserId,
       'name' => Name,
       'entityId' => EntityId,
       'entityType' => EntityType
     }.
