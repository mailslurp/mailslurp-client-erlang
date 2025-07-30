-module(maislurp-client-erlang_o_auth_connection_api).

-export([create_o_auth_connection/3, create_o_auth_connection/4,
         exchange_authorization_token_and_create_or_update_inbox/3, exchange_authorization_token_and_create_or_update_inbox/4]).

-define(BASE_URL, "").

%% @doc Create an OAuth connection
%% Configure an inbox for OAuth sync with MailSlurp
-spec create_o_auth_connection(ctx:ctx(), binary(), binary()) -> {ok, maislurp-client-erlang_create_o_auth_connection_result:maislurp-client-erlang_create_o_auth_connection_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_o_auth_connection(Ctx, RedirectBase, OAuthConnectionType) ->
    create_o_auth_connection(Ctx, RedirectBase, OAuthConnectionType, #{}).

-spec create_o_auth_connection(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maislurp-client-erlang_create_o_auth_connection_result:maislurp-client-erlang_create_o_auth_connection_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_o_auth_connection(Ctx, RedirectBase, OAuthConnectionType, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/oauth-connection"],
    QS = lists:flatten([{<<"redirectBase">>, RedirectBase}, {<<"oAuthConnectionType">>, OAuthConnectionType}])++maislurp-client-erlang_utils:optional_params(['emailAddress'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Exchange authorization code for access token and create inbox
%% Exchange an OAuth code for an access token and create an inbox connection in MailSlurp
-spec exchange_authorization_token_and_create_or_update_inbox(ctx:ctx(), binary(), binary()) -> {ok, maislurp-client-erlang_create_o_auth_exchange_result:maislurp-client-erlang_create_o_auth_exchange_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
exchange_authorization_token_and_create_or_update_inbox(Ctx, AuthorizationCode, RedirectUri) ->
    exchange_authorization_token_and_create_or_update_inbox(Ctx, AuthorizationCode, RedirectUri, #{}).

-spec exchange_authorization_token_and_create_or_update_inbox(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maislurp-client-erlang_create_o_auth_exchange_result:maislurp-client-erlang_create_o_auth_exchange_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
exchange_authorization_token_and_create_or_update_inbox(Ctx, AuthorizationCode, RedirectUri, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/oauth-connection/oauth-exchange/google"],
    QS = lists:flatten([{<<"authorizationCode">>, AuthorizationCode}, {<<"redirectUri">>, RedirectUri}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


