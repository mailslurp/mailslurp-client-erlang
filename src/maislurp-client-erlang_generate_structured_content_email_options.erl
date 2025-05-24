-module(maislurp-client-erlang_generate_structured_content_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_structured_content_email_options/0]).

-type maislurp-client-erlang_generate_structured_content_email_options() ::
    #{ 'emailId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'contentSelector' => binary(),
       'instructions' => binary(),
       'outputSchema' := maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema()
     }.

encode(#{ 'emailId' := EmailId,
          'contentSelector' := ContentSelector,
          'instructions' := Instructions,
          'outputSchema' := OutputSchema
        }) ->
    #{ 'emailId' => EmailId,
       'contentSelector' => ContentSelector,
       'instructions' => Instructions,
       'outputSchema' => OutputSchema
     }.
