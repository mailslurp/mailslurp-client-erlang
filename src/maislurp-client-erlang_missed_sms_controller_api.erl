-module(maislurp-client-erlang_missed_sms_controller_api).

-export([get_all_missed_sms_messages/1, get_all_missed_sms_messages/2,
         get_missed_sms_count/1, get_missed_sms_count/2,
         get_missed_sms_message/2, get_missed_sms_message/3]).

-define(BASE_URL, "").

%% @doc Get all missed SMS messages in paginated format
%% 
-spec get_all_missed_sms_messages(ctx:ctx()) -> {ok, maislurp-client-erlang_page_missed_sms_projection:maislurp-client-erlang_page_missed_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_missed_sms_messages(Ctx) ->
    get_all_missed_sms_messages(Ctx, #{}).

-spec get_all_missed_sms_messages(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_missed_sms_projection:maislurp-client-erlang_page_missed_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_missed_sms_messages(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/missed-sms"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['phoneNumber', 'page', 'size', 'sort', 'since', 'before', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get missed SMS count
%% 
-spec get_missed_sms_count(ctx:ctx()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_missed_sms_count(Ctx) ->
    get_missed_sms_count(Ctx, #{}).

-spec get_missed_sms_count(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_missed_sms_count(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/missed-sms/count"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get missed SMS content
%% Returns a missed SMS with full content.
-spec get_missed_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_missed_sms_dto:maislurp-client-erlang_missed_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_missed_sms_message(Ctx, MissedSmsId) ->
    get_missed_sms_message(Ctx, MissedSmsId, #{}).

-spec get_missed_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_missed_sms_dto:maislurp-client-erlang_missed_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_missed_sms_message(Ctx, MissedSmsId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/missed-sms/", MissedSmsId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


