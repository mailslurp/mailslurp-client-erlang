-module(maislurp-client-erlang_ai_controller_api).

-export([generate_structured_content_from_email/2, generate_structured_content_from_email/3]).

-define(BASE_URL, "").

%% @doc Generate structured content for an email
%% Use output schemas to extract data from an email using AI
-spec generate_structured_content_from_email(ctx:ctx(), maislurp-client-erlang_generate_structured_content_email_options:maislurp-client-erlang_generate_structured_content_email_options()) -> {ok, maislurp-client-erlang_structured_content_result:maislurp-client-erlang_structured_content_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_structured_content_from_email(Ctx, MaislurpClientErlangGenerateStructuredContentEmailOptions) ->
    generate_structured_content_from_email(Ctx, MaislurpClientErlangGenerateStructuredContentEmailOptions, #{}).

-spec generate_structured_content_from_email(ctx:ctx(), maislurp-client-erlang_generate_structured_content_email_options:maislurp-client-erlang_generate_structured_content_email_options(), maps:map()) -> {ok, maislurp-client-erlang_structured_content_result:maislurp-client-erlang_structured_content_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_structured_content_from_email(Ctx, MaislurpClientErlangGenerateStructuredContentEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/ai/structured-content/email"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGenerateStructuredContentEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


