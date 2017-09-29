.class public Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;
.super Ljava/lang/Object;
.source "ResultActionProcessor.java"


# static fields
.field public static final ALERT_MAIN_TEXT:Ljava/lang/String; = "mainText"

.field public static final ALERT_SUB_TEXT:Ljava/lang/String; = "subText"

.field public static final DESC:Ljava/lang/String; = "desc"

.field public static final LINK_SCHEMA:Ljava/lang/String; = "schema"

.field public static final RESULT_VIEW:Ljava/lang/String; = "resultView"

.field public static final SHOW_TYPE:Ljava/lang/String; = "showType"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TRIGGER_ACTIONS:Ljava/lang/String; = "triggerActions"

.field public static final TRIGGER_TYPE:Ljava/lang/String; = "triggerType"

.field public static final TRIGGER_TYPE_AUTO:Ljava/lang/String; = "auto"

.field public static final TRIGGER_TYPE_CLICK:Ljava/lang/String; = "click"

.field public static final TRIGGER_TYPE_MAIN_CLICK:Ljava/lang/String; = "mainClick"

.field public static final TRIGGER_TYPE_SUB_CLICK:Ljava/lang/String; = "subClick"

.field public static final TYPE_ALERT:Ljava/lang/String; = "alert"

.field public static final TYPE_FINISH_PAGE:Ljava/lang/String; = "finishPage"

.field public static final TYPE_LINK:Ljava/lang/String; = "link"

.field public static final TYPE_RETRY:Ljava/lang/String; = "retry"

.field public static final TYPE_SHOW_WARN:Ljava/lang/String; = "showWarn"

.field public static final TYPE_TOAST:Ljava/lang/String; = "toast"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processTriggerAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;Ljava/lang/String;)V

    return-void
.end method

.method public static processAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 111
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$1;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$1;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "process followAction="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v1, "auto"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processResultAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunner"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static processAlertAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V
    .locals 7

    .prologue
    .line 164
    iget-object v4, p1, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;->extInfo:Ljava/util/Map;

    .line 165
    if-eqz v4, :cond_1

    .line 166
    const-string/jumbo v0, "title"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    const-string/jumbo v0, "desc"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    const-string/jumbo v0, "mainText"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getRpcUiResponsible()Lcom/alipay/mobile/beehive/rpc/IRpcUiResponsible;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/beehive/rpc/IRpcUiResponsible;->getTitleBar()Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alipay/mobile/beehive/R$string;->confirm:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 176
    :goto_0
    const-string/jumbo v0, "subText"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 177
    const/4 v6, 0x0

    .line 178
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v6, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$2;

    invoke-direct {v6, p0, p1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$2;-><init>(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V

    .line 187
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    new-instance v4, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$3;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$3;-><init>(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 196
    :cond_1
    return-void

    .line 172
    :catch_0
    move-exception v3

    .line 173
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "RpcRunner"

    invoke-interface {v5, v6, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method private static processFinishPageAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V
    .locals 3

    .prologue
    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunner"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static processLinkAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;->extInfo:Ljava/util/Map;

    .line 211
    if-eqz v0, :cond_0

    .line 212
    const-string/jumbo v1, "schema"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-static {v0}, Lcom/alipay/mobile/beehive/util/JumpUtil;->processSchema(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method private static processResultAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;->triggerType:Ljava/lang/String;

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string/jumbo v0, "auto"

    .line 129
    :cond_0
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;->type:Ljava/lang/String;

    .line 133
    const-string/jumbo v1, "toast"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    invoke-static {p0, p1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processToastAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V

    .line 147
    :cond_2
    :goto_1
    const-string/jumbo v0, "auto"

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processTriggerAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunner"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    :cond_3
    :try_start_1
    const-string/jumbo v1, "alert"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    invoke-static {p0, p1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processAlertAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V

    goto :goto_1

    .line 137
    :cond_4
    const-string/jumbo v1, "link"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    invoke-static {p0, p1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processLinkAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V

    goto :goto_1

    .line 139
    :cond_5
    const-string/jumbo v1, "finishPage"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    invoke-static {p0, p1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processFinishPageAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V

    goto :goto_1

    .line 141
    :cond_6
    const-string/jumbo v1, "showWarn"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 142
    invoke-static {p0, p1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processShowWarnAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V

    goto :goto_1

    .line 143
    :cond_7
    const-string/jumbo v1, "retry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-static {p0, p1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processRetryAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static processRetryAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getRetryRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getRetryRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 254
    :cond_0
    return-void
.end method

.method public static processShowType(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 70
    :try_start_0
    const-string/jumbo v0, "success"

    invoke-static {p1, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->getFieldByReflect(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    const-string/jumbo v2, "do not process showType on success=true"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string/jumbo v0, "resultView"

    invoke-static {p1, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->getFieldByReflect(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    const-string/jumbo v2, "resultView is empty"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunner"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :cond_2
    :try_start_1
    const-string/jumbo v0, "showType"

    invoke-static {p1, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->getFieldByReflect(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "RpcRunner"

    .line 87
    const-string/jumbo v4, "showType=%d, resultView=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v1

    if-nez v1, :cond_3

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    const-string/jumbo v2, "getActivityResponsible()=null!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_3
    if-nez v0, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    const-string/jumbo v2, "toast resultView success"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :cond_4
    if-ne v0, v8, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/beehive/R$string;->confirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    .line 96
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    const-string/jumbo v2, "alert resultView success"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static processShowWarnAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V
    .locals 3

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;->triggerActions:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;->triggerActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 232
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;->extInfo:Ljava/util/Map;

    .line 233
    if-eqz v0, :cond_0

    .line 234
    const-string/jumbo v2, "desc"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->setWarnText(Ljava/lang/String;)V

    .line 239
    :cond_0
    if-eqz v1, :cond_2

    new-instance v0, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor$4;-><init>(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->showWarn(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_2
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RpcRunner"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static processToastAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;->extInfo:Ljava/util/Map;

    .line 155
    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v1, "desc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;->getActivityResponsible()Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    .line 161
    :cond_0
    return-void
.end method

.method private static processTriggerAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p1, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;->triggerActions:Ljava/util/List;

    .line 200
    if-eqz v0, :cond_1

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    :cond_1
    return-void

    .line 201
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/rpc/model/ResultAction;

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-static {p0, v0, p2}, Lcom/alipay/mobile/beehive/rpc/ResultActionProcessor;->processResultAction(Lcom/alipay/mobile/beehive/rpc/RpcUiProcessor;Lcom/alipay/mobile/beehive/rpc/model/ResultAction;Ljava/lang/String;)V

    goto :goto_0
.end method
