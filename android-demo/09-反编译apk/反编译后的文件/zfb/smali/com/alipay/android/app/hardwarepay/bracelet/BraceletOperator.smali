.class public Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;
.super Ljava/lang/Object;
.source "BraceletOperator.java"


# instance fields
.field private a:Lcom/alipay/security/mobile/auth/IAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 127
    .line 128
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/hardwarepay/bracelet/d;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/d;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;)V

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result v0

    .line 129
    if-eq v0, v4, :cond_1

    .line 130
    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    .line 131
    const/16 v1, 0x6a

    if-eq v0, v1, :cond_1

    .line 132
    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    .line 133
    const/16 v1, 0x7f

    if-eq v0, v1, :cond_1

    .line 134
    const/16 v1, 0x7e

    if-ne v0, v1, :cond_2

    .line 135
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    const-string/jumbo v0, "message"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string/jumbo v0, "result"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 142
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    invoke-interface {p2, v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;->onProcessSuccess(Lorg/json/JSONObject;)V

    .line 148
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 149
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wwdc"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/base/util/Tools;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;Landroid/content/Context;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;->a(Landroid/content/Context;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;Ljava/util/Properties;)V
    .locals 7

    .prologue
    .line 47
    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    return-void

    .line 51
    :pswitch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/a;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/alipay/android/app/hardwarepay/bracelet/a;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;Landroid/content/Context;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;Ljava/util/Properties;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;->a(Landroid/content/Context;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V

    goto :goto_0

    .line 66
    :pswitch_2
    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/b;

    invoke-direct {v1, p0, p3}, Lcom/alipay/android/app/hardwarepay/bracelet/b;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V

    .line 104
    const-string/jumbo v2, "bluetoothMac"

    const-string/jumbo v3, ""

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    const-string/jumbo v3, "bicData"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    new-instance v4, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5, v3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    .line 107
    invoke-virtual {v4, v2}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->setExtraParams(Ljava/lang/String;)V

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "wwdc:::setting \u624b\u73af\u652f\u4ed8\u8fde\u63a5type:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ",mac:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",bicData:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 110
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/app/hardwarepay/bracelet/c;

    invoke-direct {v2, p0, p1, v4, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/c;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;Landroid/content/Context;Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
