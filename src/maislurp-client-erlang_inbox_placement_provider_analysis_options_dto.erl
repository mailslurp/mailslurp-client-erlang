-module(maislurp-client-erlang_inbox_placement_provider_analysis_options_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_provider_analysis_options_dto/0]).

-type maislurp-client-erlang_inbox_placement_provider_analysis_options_dto() ::
    #{ 'authentication' := boolean(),
       'domain' := boolean(),
       'content' := boolean(),
       'links' := boolean(),
       'blacklists' := boolean(),
       'sanitizedPreview' := boolean()
     }.

encode(#{ 'authentication' := Authentication,
          'domain' := Domain,
          'content' := Content,
          'links' := Links,
          'blacklists' := Blacklists,
          'sanitizedPreview' := SanitizedPreview
        }) ->
    #{ 'authentication' => Authentication,
       'domain' => Domain,
       'content' => Content,
       'links' => Links,
       'blacklists' => Blacklists,
       'sanitizedPreview' => SanitizedPreview
     }.
