-module(maislurp-client-erlang_inbox_placement_provider_analysis_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_provider_analysis_dto/0]).

-type maislurp-client-erlang_inbox_placement_provider_analysis_dto() ::
    #{ 'requested' := maislurp-client-erlang_inbox_placement_provider_analysis_options_dto:maislurp-client-erlang_inbox_placement_provider_analysis_options_dto(),
       'authentication' := maislurp-client-erlang_inbox_placement_provider_analysis_section_dto:maislurp-client-erlang_inbox_placement_provider_analysis_section_dto(),
       'domain' := maislurp-client-erlang_inbox_placement_provider_analysis_section_dto:maislurp-client-erlang_inbox_placement_provider_analysis_section_dto(),
       'content' := maislurp-client-erlang_inbox_placement_provider_analysis_section_dto:maislurp-client-erlang_inbox_placement_provider_analysis_section_dto(),
       'links' := maislurp-client-erlang_inbox_placement_provider_analysis_section_dto:maislurp-client-erlang_inbox_placement_provider_analysis_section_dto(),
       'blacklists' := maislurp-client-erlang_inbox_placement_provider_analysis_section_dto:maislurp-client-erlang_inbox_placement_provider_analysis_section_dto(),
       'preview' := maislurp-client-erlang_inbox_placement_provider_analysis_preview_dto:maislurp-client-erlang_inbox_placement_provider_analysis_preview_dto()
     }.

encode(#{ 'requested' := Requested,
          'authentication' := Authentication,
          'domain' := Domain,
          'content' := Content,
          'links' := Links,
          'blacklists' := Blacklists,
          'preview' := Preview
        }) ->
    #{ 'requested' => Requested,
       'authentication' => Authentication,
       'domain' => Domain,
       'content' => Content,
       'links' => Links,
       'blacklists' => Blacklists,
       'preview' => Preview
     }.
