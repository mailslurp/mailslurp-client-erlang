-module(maislurp-client-erlang_sms_controller_api).

-export([delete_sms_message/2, delete_sms_message/3,
         delete_sms_messages/1, delete_sms_messages/2,
         get_sms_message/2, get_sms_message/3,
         get_sms_messages_paginated/1, get_sms_messages_paginated/2,
         get_unread_sms_count/1, get_unread_sms_count/2]).

-define(BASE_URL, "").

%% @doc Delete SMS message.
%% Delete an SMS message
-spec delete_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sms_message(Ctx, SmsId) ->
    delete_sms_message(Ctx, SmsId, #{}).

-spec delete_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sms_message(Ctx, SmsId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sms/", SmsId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all SMS messages
%% Delete all SMS messages or all messages for a given phone number
-spec delete_sms_messages(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sms_messages(Ctx) ->
    delete_sms_messages(Ctx, #{}).

-spec delete_sms_messages(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sms_messages(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sms"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['phoneNumberId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
%% Returns a SMS summary object with content.
-spec get_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sms_dto:maislurp-client-erlang_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sms_message(Ctx, SmsId) ->
    get_sms_message(Ctx, SmsId, #{}).

-spec get_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sms_dto:maislurp-client-erlang_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sms_message(Ctx, SmsId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms/", SmsId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all SMS messages in all phone numbers in paginated form. .
%% By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
-spec get_sms_messages_paginated(ctx:ctx()) -> {ok, maislurp-client-erlang_page_sms_projection:maislurp-client-erlang_page_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sms_messages_paginated(Ctx) ->
    get_sms_messages_paginated(Ctx, #{}).

-spec get_sms_messages_paginated(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_sms_projection:maislurp-client-erlang_page_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sms_messages_paginated(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['phoneNumber', 'page', 'size', 'sort', 'unreadOnly', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get unread SMS count
%% Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response
-spec get_unread_sms_count(ctx:ctx()) -> {ok, maislurp-client-erlang_unread_count:maislurp-client-erlang_unread_count(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_unread_sms_count(Ctx) ->
    get_unread_sms_count(Ctx, #{}).

-spec get_unread_sms_count(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_unread_count:maislurp-client-erlang_unread_count(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_unread_sms_count(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms/unreadCount"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


