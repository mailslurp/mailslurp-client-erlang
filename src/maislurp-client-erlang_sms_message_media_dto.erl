-module(maislurp-client-erlang_sms_message_media_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_sms_message_media_dto/0]).

-type maislurp-client-erlang_sms_message_media_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'smsId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumberId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachmentId' := binary(),
       'contentType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'smsId' := SmsId,
          'phoneNumberId' := PhoneNumberId,
          'attachmentId' := AttachmentId,
          'contentType' := ContentType,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'smsId' => SmsId,
       'phoneNumberId' => PhoneNumberId,
       'attachmentId' => AttachmentId,
       'contentType' => ContentType,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
