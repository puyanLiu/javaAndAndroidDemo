.class Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.hardwarepay.bracelet.activity.HardwareHandleActivity$6"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x126

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 1
    sget-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v3

    aget-object v0, v2, v4

    const-string/jumbo v2, "result"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v5, Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;

    invoke-direct {v5, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;)V

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const-string/jumbo v5, "result"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;I)I

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->i(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v4, Lcom/alipay/android/app/hardwarepay/bracelet/activity/u;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/u;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;)V

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :sswitch_0
    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :sswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->j(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "new"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "data"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v5, "name"

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v5}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v6}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->k(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)I

    move-result v6

    iput v6, v5, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    iput-object v6, v5, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v2, 0xb

    iput v2, v5, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v2, 0x7d3

    iput v2, v5, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    :goto_1
    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->finish()V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v2, "data"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->b:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "params"

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "params"

    const-string/jumbo v6, "params"

    invoke-virtual {v2, v6}, Lcom/alipay/android/app/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    :cond_3
    new-instance v2, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v2}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->k(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)I

    move-result v5

    iput v5, v2, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->b:Ljava/lang/String;

    aput-object v6, v5, v4

    iput-object v5, v2, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v4, 0xb

    iput v4, v2, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v4, 0x3eb

    iput v4, v2, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v4, Lcom/alipay/android/app/hardwarepay/bracelet/activity/t;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/t;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;)V

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_0
        0x71 -> :sswitch_2
    .end sparse-switch
.end method
