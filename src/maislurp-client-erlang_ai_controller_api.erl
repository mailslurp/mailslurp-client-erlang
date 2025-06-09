-module(maislurp-client-erlang_ai_controller_api).

-export([create_transformer/2, create_transformer/3,
         create_transformer1/2, create_transformer1/3,
         create_transformer_mappings/2, create_transformer_mappings/3,
         delete_transformer/2, delete_transformer/3,
         delete_transformer_mapping/2, delete_transformer_mapping/3,
         delete_transformers/1, delete_transformers/2,
         generate_structured_content_from_attachment/2, generate_structured_content_from_attachment/3,
         generate_structured_content_from_email/2, generate_structured_content_from_email/3,
         generate_structured_content_from_sms/2, generate_structured_content_from_sms/3,
         get_transformer/2, get_transformer/3,
         get_transformer_mapping/2, get_transformer_mapping/3,
         get_transformer_mappings/1, get_transformer_mappings/2,
         get_transformer_result/2, get_transformer_result/3,
         get_transformer_results/1, get_transformer_results/2,
         validate_structured_output_schema/2, validate_structured_output_schema/3]).

-define(BASE_URL, "").

%% @doc List transformers
%% List all AI transforms
-spec create_transformer(ctx:ctx(), maislurp-client-erlang_a_i_tranform_create_options:maislurp-client-erlang_a_i_tranform_create_options()) -> {ok, maislurp-client-erlang_page_ai_transform_projection:maislurp-client-erlang_page_ai_transform_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_transformer(Ctx, Options) ->
    create_transformer(Ctx, Options, #{}).

-spec create_transformer(ctx:ctx(), maislurp-client-erlang_a_i_tranform_create_options:maislurp-client-erlang_a_i_tranform_create_options(), maps:map()) -> {ok, maislurp-client-erlang_page_ai_transform_projection:maislurp-client-erlang_page_ai_transform_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_transformer(Ctx, Options, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/ai/transformer"],
    QS = lists:flatten([{<<"options">>, Options}])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a transformer for reuse in automations
%% Save an AI transform instructions and schema for use with webhooks and automations
-spec create_transformer1(ctx:ctx(), maislurp-client-erlang_ai_tranform_create_options:maislurp-client-erlang_ai_tranform_create_options()) -> {ok, maislurp-client-erlang_a_i_transform_dto:maislurp-client-erlang_a_i_transform_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_transformer1(Ctx, MaislurpClientErlangAiTranformCreateOptions) ->
    create_transformer1(Ctx, MaislurpClientErlangAiTranformCreateOptions, #{}).

-spec create_transformer1(ctx:ctx(), maislurp-client-erlang_ai_tranform_create_options:maislurp-client-erlang_ai_tranform_create_options(), maps:map()) -> {ok, maislurp-client-erlang_a_i_transform_dto:maislurp-client-erlang_a_i_transform_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_transformer1(Ctx, MaislurpClientErlangAiTranformCreateOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/ai/transformer"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangAiTranformCreateOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create transformer mapping
%% Create AI transformer mappings to other entities
-spec create_transformer_mappings(ctx:ctx(), maislurp-client-erlang_create_ai_transformer_mapping_options:maislurp-client-erlang_create_ai_transformer_mapping_options()) -> {ok, maislurp-client-erlang_a_i_transform_mapping_dto:maislurp-client-erlang_a_i_transform_mapping_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_transformer_mappings(Ctx, MaislurpClientErlangCreateAiTransformerMappingOptions) ->
    create_transformer_mappings(Ctx, MaislurpClientErlangCreateAiTransformerMappingOptions, #{}).

-spec create_transformer_mappings(ctx:ctx(), maislurp-client-erlang_create_ai_transformer_mapping_options:maislurp-client-erlang_create_ai_transformer_mapping_options(), maps:map()) -> {ok, maislurp-client-erlang_a_i_transform_mapping_dto:maislurp-client-erlang_a_i_transform_mapping_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_transformer_mappings(Ctx, MaislurpClientErlangCreateAiTransformerMappingOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/ai/transformer/mappings"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateAiTransformerMappingOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a transformer
%% Delete an AI transformer and schemas by ID
-spec delete_transformer(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_transformer(Ctx, Id) ->
    delete_transformer(Ctx, Id, #{}).

-spec delete_transformer(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_transformer(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/ai/transformer/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete transformer mapping
%% Delete an AI transformer mapping
-spec delete_transformer_mapping(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_transformer_mapping(Ctx, Id) ->
    delete_transformer_mapping(Ctx, Id, #{}).

-spec delete_transformer_mapping(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_transformer_mapping(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/ai/transformer/mappings/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all transformers
%% Delete all AI transformers and schemas
-spec delete_transformers(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_transformers(Ctx) ->
    delete_transformers(Ctx, #{}).

-spec delete_transformers(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_transformers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/ai/transformer"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Generate structured content for an attachment
%% Use output schemas to extract data from an attachment using AI
-spec generate_structured_content_from_attachment(ctx:ctx(), maislurp-client-erlang_generate_structured_content_attachment_options:maislurp-client-erlang_generate_structured_content_attachment_options()) -> {ok, maislurp-client-erlang_structured_content_result_dto:maislurp-client-erlang_structured_content_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_structured_content_from_attachment(Ctx, MaislurpClientErlangGenerateStructuredContentAttachmentOptions) ->
    generate_structured_content_from_attachment(Ctx, MaislurpClientErlangGenerateStructuredContentAttachmentOptions, #{}).

-spec generate_structured_content_from_attachment(ctx:ctx(), maislurp-client-erlang_generate_structured_content_attachment_options:maislurp-client-erlang_generate_structured_content_attachment_options(), maps:map()) -> {ok, maislurp-client-erlang_structured_content_result_dto:maislurp-client-erlang_structured_content_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_structured_content_from_attachment(Ctx, MaislurpClientErlangGenerateStructuredContentAttachmentOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/ai/structured-content/attachment"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGenerateStructuredContentAttachmentOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Generate structured content for an email
%% Use output schemas to extract data from an email using AI
-spec generate_structured_content_from_email(ctx:ctx(), maislurp-client-erlang_generate_structured_content_email_options:maislurp-client-erlang_generate_structured_content_email_options()) -> {ok, maislurp-client-erlang_structured_content_result_dto:maislurp-client-erlang_structured_content_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_structured_content_from_email(Ctx, MaislurpClientErlangGenerateStructuredContentEmailOptions) ->
    generate_structured_content_from_email(Ctx, MaislurpClientErlangGenerateStructuredContentEmailOptions, #{}).

-spec generate_structured_content_from_email(ctx:ctx(), maislurp-client-erlang_generate_structured_content_email_options:maislurp-client-erlang_generate_structured_content_email_options(), maps:map()) -> {ok, maislurp-client-erlang_structured_content_result_dto:maislurp-client-erlang_structured_content_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
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

%% @doc Generate structured content for a TXT message
%% Use output schemas to extract data from an SMS using AI
-spec generate_structured_content_from_sms(ctx:ctx(), maislurp-client-erlang_generate_structured_content_sms_options:maislurp-client-erlang_generate_structured_content_sms_options()) -> {ok, maislurp-client-erlang_structured_content_result_dto:maislurp-client-erlang_structured_content_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_structured_content_from_sms(Ctx, MaislurpClientErlangGenerateStructuredContentSmsOptions) ->
    generate_structured_content_from_sms(Ctx, MaislurpClientErlangGenerateStructuredContentSmsOptions, #{}).

-spec generate_structured_content_from_sms(ctx:ctx(), maislurp-client-erlang_generate_structured_content_sms_options:maislurp-client-erlang_generate_structured_content_sms_options(), maps:map()) -> {ok, maislurp-client-erlang_structured_content_result_dto:maislurp-client-erlang_structured_content_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
generate_structured_content_from_sms(Ctx, MaislurpClientErlangGenerateStructuredContentSmsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/ai/structured-content/sms"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGenerateStructuredContentSmsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a transformer
%% Get AI transformer and schemas by ID
-spec get_transformer(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_a_i_transform_dto:maislurp-client-erlang_a_i_transform_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_transformer(Ctx, Id) ->
    get_transformer(Ctx, Id, #{}).

-spec get_transformer(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_a_i_transform_dto:maislurp-client-erlang_a_i_transform_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_transformer(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/ai/transformer/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get transformer mapping
%% Get an AI transformer mapping
-spec get_transformer_mapping(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_a_i_transform_mapping_dto:maislurp-client-erlang_a_i_transform_mapping_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_transformer_mapping(Ctx, Id) ->
    get_transformer_mapping(Ctx, Id, #{}).

-spec get_transformer_mapping(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_a_i_transform_mapping_dto:maislurp-client-erlang_a_i_transform_mapping_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_transformer_mapping(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/ai/transformer/mappings/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get transformer mappings
%% Get AI transformer mappings to other entities
-spec get_transformer_mappings(ctx:ctx()) -> {ok, maislurp-client-erlang_page_ai_transform_mapping_projection:maislurp-client-erlang_page_ai_transform_mapping_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_transformer_mappings(Ctx) ->
    get_transformer_mappings(Ctx, #{}).

-spec get_transformer_mappings(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_ai_transform_mapping_projection:maislurp-client-erlang_page_ai_transform_mapping_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_transformer_mappings(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/ai/transformer/mappings"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['aiTransformId', 'entityId', 'entityType', 'page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get transformer result
%% Get AI transformer result
-spec get_transformer_result(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_a_i_transform_result_dto:maislurp-client-erlang_a_i_transform_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_transformer_result(Ctx, Id) ->
    get_transformer_result(Ctx, Id, #{}).

-spec get_transformer_result(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_a_i_transform_result_dto:maislurp-client-erlang_a_i_transform_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_transformer_result(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/ai/transformer/results/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get transformer results
%% Get AI transformer results
-spec get_transformer_results(ctx:ctx()) -> {ok, maislurp-client-erlang_page_ai_transform_result_projection:maislurp-client-erlang_page_ai_transform_result_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_transformer_results(Ctx) ->
    get_transformer_results(Ctx, #{}).

-spec get_transformer_results(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_ai_transform_result_projection:maislurp-client-erlang_page_ai_transform_result_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_transformer_results(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/ai/transformer/results"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['aiTransformId', 'aiTransformMappingId', 'entityId', 'entityType', 'page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Validate structured content schema
%% Check if a schema is valid and can be used to extract data using AI
-spec validate_structured_output_schema(ctx:ctx(), maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema()) -> {ok, maislurp-client-erlang_structured_output_schema_validation:maislurp-client-erlang_structured_output_schema_validation(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
validate_structured_output_schema(Ctx, MaislurpClientErlangStructuredOutputSchema) ->
    validate_structured_output_schema(Ctx, MaislurpClientErlangStructuredOutputSchema, #{}).

-spec validate_structured_output_schema(ctx:ctx(), maislurp-client-erlang_structured_output_schema:maislurp-client-erlang_structured_output_schema(), maps:map()) -> {ok, maislurp-client-erlang_structured_output_schema_validation:maislurp-client-erlang_structured_output_schema_validation(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
validate_structured_output_schema(Ctx, MaislurpClientErlangStructuredOutputSchema, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/ai/structured-content/validate"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangStructuredOutputSchema,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


