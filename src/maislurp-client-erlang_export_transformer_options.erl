-module(maislurp-client-erlang_export_transformer_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_export_transformer_options/0]).

-type maislurp-client-erlang_export_transformer_options() ::
    #{ 'aiTransformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiMappingId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'flattenArrays' := boolean(),
       'since' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'format' := binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'smsId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachmentId' => binary(),
       'includeMetaData' := boolean(),
       'delimiter' => binary(),
       'arraySeparator' => binary(),
       'includeMetaDataColumns' => list()
     }.

encode(#{ 'aiTransformId' := AiTransformId,
          'aiMappingId' := AiMappingId,
          'flattenArrays' := FlattenArrays,
          'since' := Since,
          'before' := Before,
          'format' := Format,
          'inboxId' := InboxId,
          'phoneId' := PhoneId,
          'emailId' := EmailId,
          'smsId' := SmsId,
          'attachmentId' := AttachmentId,
          'includeMetaData' := IncludeMetaData,
          'delimiter' := Delimiter,
          'arraySeparator' := ArraySeparator,
          'includeMetaDataColumns' := IncludeMetaDataColumns
        }) ->
    #{ 'aiTransformId' => AiTransformId,
       'aiMappingId' => AiMappingId,
       'flattenArrays' => FlattenArrays,
       'since' => Since,
       'before' => Before,
       'format' => Format,
       'inboxId' => InboxId,
       'phoneId' => PhoneId,
       'emailId' => EmailId,
       'smsId' => SmsId,
       'attachmentId' => AttachmentId,
       'includeMetaData' => IncludeMetaData,
       'delimiter' => Delimiter,
       'arraySeparator' => ArraySeparator,
       'includeMetaDataColumns' => IncludeMetaDataColumns
     }.
