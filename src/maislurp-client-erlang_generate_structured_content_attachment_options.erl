-module(maislurp-client-erlang_generate_structured_content_attachment_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_structured_content_attachment_options/0]).

-type maislurp-client-erlang_generate_structured_content_attachment_options() ::
    #{ 'attachmentId' := binary(),
       'instructions' => binary(),
       'outputSchema' := maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema()
     }.

encode(#{ 'attachmentId' := AttachmentId,
          'instructions' := Instructions,
          'outputSchema' := OutputSchema
        }) ->
    #{ 'attachmentId' => AttachmentId,
       'instructions' => Instructions,
       'outputSchema' => OutputSchema
     }.
