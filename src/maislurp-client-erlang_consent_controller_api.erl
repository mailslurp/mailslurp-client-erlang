-module(maislurp-client-erlang_consent_controller_api).

-export([check_sending_consent_for_email_address/2, check_sending_consent_for_email_address/3,
         get_opt_in_identities/1, get_opt_in_identities/2,
         revoke_opt_in_consent_for_email_address/2, revoke_opt_in_consent_for_email_address/3,
         send_opt_in_consent_for_email_address/2, send_opt_in_consent_for_email_address/3]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec check_sending_consent_for_email_address(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_opt_in_sending_consent_dto:maislurp-client-erlang_opt_in_sending_consent_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_sending_consent_for_email_address(Ctx, EmailAddress) ->
    check_sending_consent_for_email_address(Ctx, EmailAddress, #{}).

-spec check_sending_consent_for_email_address(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_opt_in_sending_consent_dto:maislurp-client-erlang_opt_in_sending_consent_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_sending_consent_for_email_address(Ctx, EmailAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/consent/opt-in/sending-consent"],
    QS = lists:flatten([{<<"emailAddress">>, EmailAddress}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_opt_in_identities(ctx:ctx()) -> {ok, maislurp-client-erlang_page_opt_in_identity_projection:maislurp-client-erlang_page_opt_in_identity_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_opt_in_identities(Ctx) ->
    get_opt_in_identities(Ctx, #{}).

-spec get_opt_in_identities(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_opt_in_identity_projection:maislurp-client-erlang_page_opt_in_identity_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_opt_in_identities(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/consent/opt-in"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec revoke_opt_in_consent_for_email_address(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_opt_in_sending_consent_dto:maislurp-client-erlang_opt_in_sending_consent_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
revoke_opt_in_consent_for_email_address(Ctx, EmailAddress) ->
    revoke_opt_in_consent_for_email_address(Ctx, EmailAddress, #{}).

-spec revoke_opt_in_consent_for_email_address(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_opt_in_sending_consent_dto:maislurp-client-erlang_opt_in_sending_consent_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
revoke_opt_in_consent_for_email_address(Ctx, EmailAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/consent/opt-in"],
    QS = lists:flatten([{<<"emailAddress">>, EmailAddress}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send a verification code to a user once they have explicitly submitted their email address
%% Send double-opt in consent for an email address
-spec send_opt_in_consent_for_email_address(ctx:ctx(), maislurp-client-erlang_opt_in_consent_options:maislurp-client-erlang_opt_in_consent_options()) -> {ok, maislurp-client-erlang_opt_in_consent_send_result:maislurp-client-erlang_opt_in_consent_send_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_opt_in_consent_for_email_address(Ctx, MaislurpClientErlangOptInConsentOptions) ->
    send_opt_in_consent_for_email_address(Ctx, MaislurpClientErlangOptInConsentOptions, #{}).

-spec send_opt_in_consent_for_email_address(ctx:ctx(), maislurp-client-erlang_opt_in_consent_options:maislurp-client-erlang_opt_in_consent_options(), maps:map()) -> {ok, maislurp-client-erlang_opt_in_consent_send_result:maislurp-client-erlang_opt_in_consent_send_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_opt_in_consent_for_email_address(Ctx, MaislurpClientErlangOptInConsentOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/consent/opt-in/send"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangOptInConsentOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


