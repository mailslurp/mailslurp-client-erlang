-module(maislurp-client-erlang_template_controller_api).

-export([create_template/2, create_template/3,
         delete_template/2, delete_template/3,
         get_all_templates/1, get_all_templates/2,
         get_template/2, get_template/3,
         get_templates/1, get_templates/2,
         update_template/3, update_template/4]).

-define(BASE_URL, "").

%% @doc Create a Template
%% 
-spec create_template(ctx:ctx(), maislurp-client-erlang_create_template_options:maislurp-client-erlang_create_template_options()) -> {ok, maislurp-client-erlang_template_dto:maislurp-client-erlang_template_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_template(Ctx, CreateTemplateOptions) ->
    create_template(Ctx, CreateTemplateOptions, #{}).

-spec create_template(ctx:ctx(), maislurp-client-erlang_create_template_options:maislurp-client-erlang_create_template_options(), maps:map()) -> {ok, maislurp-client-erlang_template_dto:maislurp-client-erlang_template_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_template(Ctx, CreateTemplateOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/templates"],
    QS = [],
    Headers = [],
    Body1 = CreateTemplateOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete Template
%% 
-spec delete_template(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_template(Ctx, TemplateId) ->
    delete_template(Ctx, TemplateId, #{}).

-spec delete_template(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_template(Ctx, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/templates/", TemplateId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all Templates in paginated format
%% 
-spec get_all_templates(ctx:ctx()) -> {ok, maislurp-client-erlang_page_template_projection:maislurp-client-erlang_page_template_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_templates(Ctx) ->
    get_all_templates(Ctx, #{}).

-spec get_all_templates(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_template_projection:maislurp-client-erlang_page_template_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_templates(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/templates/paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Template
%% 
-spec get_template(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_template_dto:maislurp-client-erlang_template_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_template(Ctx, TemplateId) ->
    get_template(Ctx, TemplateId, #{}).

-spec get_template(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_template_dto:maislurp-client-erlang_template_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_template(Ctx, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/templates/", TemplateId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all Templates
%% 
-spec get_templates(ctx:ctx()) -> {ok, [maislurp-client-erlang_template_projection:maislurp-client-erlang_template_projection()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_templates(Ctx) ->
    get_templates(Ctx, #{}).

-spec get_templates(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_template_projection:maislurp-client-erlang_template_projection()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_templates(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/templates"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a Template
%% 
-spec update_template(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_template_options:maislurp-client-erlang_create_template_options()) -> {ok, maislurp-client-erlang_template_dto:maislurp-client-erlang_template_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_template(Ctx, TemplateId, CreateTemplateOptions) ->
    update_template(Ctx, TemplateId, CreateTemplateOptions, #{}).

-spec update_template(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_template_options:maislurp-client-erlang_create_template_options(), maps:map()) -> {ok, maislurp-client-erlang_template_dto:maislurp-client-erlang_template_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_template(Ctx, TemplateId, CreateTemplateOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/templates/", TemplateId, ""],
    QS = [],
    Headers = [],
    Body1 = CreateTemplateOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


