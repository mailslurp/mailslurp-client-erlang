-module(maislurp-client-erlang_api_mcp_o_auth_controller_api).

-export([authorization_server_metadata/1, authorization_server_metadata/2,
         authorization_server_metadata1/1, authorization_server_metadata1/2,
         authorize/7, authorize/8,
         protected_resource_metadata/1, protected_resource_metadata/2,
         protected_resource_metadata1/1, protected_resource_metadata1/2,
         register/2, register/3,
         token/4, token/5]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec authorization_server_metadata(ctx:ctx()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
authorization_server_metadata(Ctx) ->
    authorization_server_metadata(Ctx, #{}).

-spec authorization_server_metadata(ctx:ctx(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
authorization_server_metadata(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/.well-known/oauth-authorization-server/mcp"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec authorization_server_metadata1(ctx:ctx()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
authorization_server_metadata1(Ctx) ->
    authorization_server_metadata1(Ctx, #{}).

-spec authorization_server_metadata1(ctx:ctx(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
authorization_server_metadata1(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/.well-known/oauth-authorization-server"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec authorize(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
authorize(Ctx, ClientId, RedirectUri, ResponseType, CodeChallenge, CodeChallengeMethod, Resource) ->
    authorize(Ctx, ClientId, RedirectUri, ResponseType, CodeChallenge, CodeChallengeMethod, Resource, #{}).

-spec authorize(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
authorize(Ctx, ClientId, RedirectUri, ResponseType, CodeChallenge, CodeChallengeMethod, Resource, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/mcp/oauth/authorize"],
    QS = lists:flatten([{<<"client_id">>, ClientId}, {<<"redirect_uri">>, RedirectUri}, {<<"response_type">>, ResponseType}, {<<"code_challenge">>, CodeChallenge}, {<<"code_challenge_method">>, CodeChallengeMethod}, {<<"resource">>, Resource}])++maislurp-client-erlang_utils:optional_params(['scope', 'state'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec protected_resource_metadata(ctx:ctx()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
protected_resource_metadata(Ctx) ->
    protected_resource_metadata(Ctx, #{}).

-spec protected_resource_metadata(ctx:ctx(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
protected_resource_metadata(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/.well-known/oauth-protected-resource/mcp"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec protected_resource_metadata1(ctx:ctx()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
protected_resource_metadata1(Ctx) ->
    protected_resource_metadata1(Ctx, #{}).

-spec protected_resource_metadata1(ctx:ctx(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
protected_resource_metadata1(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/.well-known/oauth-protected-resource"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec register(ctx:ctx(), maislurp-client-erlang_mcp_o_auth_client_registration_options:maislurp-client-erlang_mcp_o_auth_client_registration_options()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
register(Ctx, MaislurpClientErlangMcpOAuthClientRegistrationOptions) ->
    register(Ctx, MaislurpClientErlangMcpOAuthClientRegistrationOptions, #{}).

-spec register(ctx:ctx(), maislurp-client-erlang_mcp_o_auth_client_registration_options:maislurp-client-erlang_mcp_o_auth_client_registration_options(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
register(Ctx, MaislurpClientErlangMcpOAuthClientRegistrationOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mcp/oauth/register"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangMcpOAuthClientRegistrationOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec token(ctx:ctx(), binary(), binary(), binary()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
token(Ctx, GrantType, ClientId, Resource) ->
    token(Ctx, GrantType, ClientId, Resource, #{}).

-spec token(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
token(Ctx, GrantType, ClientId, Resource, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mcp/oauth/token"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"grant_type">>, GrantType}, {<<"client_id">>, ClientId}, {<<"resource">>, Resource}]++maislurp-client-erlang_utils:optional_params(['code', 'redirect_uri', 'code_verifier', 'refresh_token'], _OptionalParams)},
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


