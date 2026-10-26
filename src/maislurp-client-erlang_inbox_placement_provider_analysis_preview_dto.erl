-module(maislurp-client-erlang_inbox_placement_provider_analysis_preview_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_provider_analysis_preview_dto/0]).

-type maislurp-client-erlang_inbox_placement_provider_analysis_preview_dto() ::
    #{ 'status' := binary(),
       'subject' => binary(),
       'fromEmail' => binary(),
       'textSnippet' => binary(),
       'htmlSnippet' => binary(),
       'details' := maps:map()
     }.

encode(#{ 'status' := Status,
          'subject' := Subject,
          'fromEmail' := FromEmail,
          'textSnippet' := TextSnippet,
          'htmlSnippet' := HtmlSnippet,
          'details' := Details
        }) ->
    #{ 'status' => Status,
       'subject' => Subject,
       'fromEmail' => FromEmail,
       'textSnippet' => TextSnippet,
       'htmlSnippet' => HtmlSnippet,
       'details' => Details
     }.
