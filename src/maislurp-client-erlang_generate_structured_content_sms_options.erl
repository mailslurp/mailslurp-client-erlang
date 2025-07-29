-module(maislurp-client-erlang_generate_structured_content_sms_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_structured_content_sms_options/0]).

-type maislurp-client-erlang_generate_structured_content_sms_options() ::
    #{ 'smsId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'instructions' => binary(),
       'outputSchema' => maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema(),
       'transformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'smsId' := SmsId,
          'instructions' := Instructions,
          'outputSchema' := OutputSchema,
          'transformId' := TransformId
        }) ->
    #{ 'smsId' => SmsId,
       'instructions' => Instructions,
       'outputSchema' => OutputSchema,
       'transformId' => TransformId
     }.
