-module(maislurp-client-erlang_auth_v2_api).

-export([auth_v2_account_switch/2, auth_v2_account_switch/3,
         auth_v2_bootstrap/2, auth_v2_bootstrap/3,
         auth_v2_environment_switch/2, auth_v2_environment_switch/3,
         auth_v2_logout/1, auth_v2_logout/2,
         auth_v2_password_login/2, auth_v2_password_login/3,
         auth_v2_provider_callback/2, auth_v2_provider_callback/3,
         email_callback/1, email_callback/2,
         email_callback_complete/1, email_callback_complete/2,
         email_callback_continue/1, email_callback_continue/2,
         email_callback_continue_script/1, email_callback_continue_script/2,
         email_callback_head/1, email_callback_head/2]).

-define(BASE_URL, "").

%% @doc Switch the account bound to an Auth v2 session
%% 
-spec auth_v2_account_switch(ctx:ctx(), maislurp-client-erlang_switch_account_options:maislurp-client-erlang_switch_account_options()) -> {ok, maislurp-client-erlang_auth_v2_bootstrap_dto:maislurp-client-erlang_auth_v2_bootstrap_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_account_switch(Ctx, MaislurpClientErlangSwitchAccountOptions) ->
    auth_v2_account_switch(Ctx, MaislurpClientErlangSwitchAccountOptions, #{}).

-spec auth_v2_account_switch(ctx:ctx(), maislurp-client-erlang_switch_account_options:maislurp-client-erlang_switch_account_options(), maps:map()) -> {ok, maislurp-client-erlang_auth_v2_bootstrap_dto:maislurp-client-erlang_auth_v2_bootstrap_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_account_switch(Ctx, MaislurpClientErlangSwitchAccountOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/auth/v2/account/switch"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSwitchAccountOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Bootstrap an existing Auth v2 session
%% 
-spec auth_v2_bootstrap(ctx:ctx()) -> {ok, maislurp-client-erlang_auth_v2_bootstrap_dto:maislurp-client-erlang_auth_v2_bootstrap_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_bootstrap(Ctx) ->
    auth_v2_bootstrap(Ctx, #{}).

-spec auth_v2_bootstrap(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_auth_v2_bootstrap_dto:maislurp-client-erlang_auth_v2_bootstrap_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_bootstrap(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/auth/v2/bootstrap"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangAuthV2BootstrapOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Switch the environment bound to an Auth v2 session
%% 
-spec auth_v2_environment_switch(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_auth_v2_bootstrap_dto:maislurp-client-erlang_auth_v2_bootstrap_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_environment_switch(Ctx, TargetUserId) ->
    auth_v2_environment_switch(Ctx, TargetUserId, #{}).

-spec auth_v2_environment_switch(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_auth_v2_bootstrap_dto:maislurp-client-erlang_auth_v2_bootstrap_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_environment_switch(Ctx, TargetUserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/auth/v2/environment/", TargetUserId, "/switch"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Revoke an Auth v2 session
%% 
-spec auth_v2_logout(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_logout(Ctx) ->
    auth_v2_logout(Ctx, #{}).

-spec auth_v2_logout(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_logout(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/auth/v2/logout"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an Auth v2 session using a password
%% 
-spec auth_v2_password_login(ctx:ctx(), maislurp-client-erlang_auth_v2_password_login_options:maislurp-client-erlang_auth_v2_password_login_options()) -> {ok, maislurp-client-erlang_auth_v2_bootstrap_dto:maislurp-client-erlang_auth_v2_bootstrap_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_password_login(Ctx, MaislurpClientErlangAuthV2PasswordLoginOptions) ->
    auth_v2_password_login(Ctx, MaislurpClientErlangAuthV2PasswordLoginOptions, #{}).

-spec auth_v2_password_login(ctx:ctx(), maislurp-client-erlang_auth_v2_password_login_options:maislurp-client-erlang_auth_v2_password_login_options(), maps:map()) -> {ok, maislurp-client-erlang_auth_v2_bootstrap_dto:maislurp-client-erlang_auth_v2_bootstrap_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_password_login(Ctx, MaislurpClientErlangAuthV2PasswordLoginOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/auth/v2/password/login"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangAuthV2PasswordLoginOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Redeem a staging provider handoff and continue to the app
%% 
-spec auth_v2_provider_callback(ctx:ctx(), binary()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_provider_callback(Ctx, ProviderKind) ->
    auth_v2_provider_callback(Ctx, ProviderKind, #{}).

-spec auth_v2_provider_callback(ctx:ctx(), binary(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
auth_v2_provider_callback(Ctx, ProviderKind, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/auth/v2/callback/", ProviderKind, ""],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['code'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec email_callback(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
email_callback(Ctx) ->
    email_callback(Ctx, #{}).

-spec email_callback(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
email_callback(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/auth/v2/callback/email"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['code'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec email_callback_complete(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
email_callback_complete(Ctx) ->
    email_callback_complete(Ctx, #{}).

-spec email_callback_complete(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
email_callback_complete(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/auth/v2/callback/email/complete"],
    QS = [],
    Headers = [],
    Body1 = {form, []++maislurp-client-erlang_utils:optional_params(['attempt'], _OptionalParams)},
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec email_callback_continue(ctx:ctx()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
email_callback_continue(Ctx) ->
    email_callback_continue(Ctx, #{}).

-spec email_callback_continue(ctx:ctx(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
email_callback_continue(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/auth/v2/callback/email/continue"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['attempt'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec email_callback_continue_script(ctx:ctx()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
email_callback_continue_script(Ctx) ->
    email_callback_continue_script(Ctx, #{}).

-spec email_callback_continue_script(ctx:ctx(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
email_callback_continue_script(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/auth/v2/callback/email/continue.js"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec email_callback_head(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
email_callback_head(Ctx) ->
    email_callback_head(Ctx, #{}).

-spec email_callback_head(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
email_callback_head(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = head,
    Path = ["/auth/v2/callback/email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


