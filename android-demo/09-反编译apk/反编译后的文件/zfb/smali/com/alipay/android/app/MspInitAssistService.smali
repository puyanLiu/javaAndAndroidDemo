.class public abstract Lcom/alipay/android/app/MspInitAssistService;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/MspInitAssistService;

.field private static b:Lcom/alipay/android/app/MspInitAssistService;

.field private static c:Lcom/alipay/android/app/MspInitAssistService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiniInstance()Lcom/alipay/android/app/MspInitAssistService;
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->b:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->b:Lcom/alipay/android/app/MspInitAssistService;

    .line 52
    :goto_0
    return-object v0

    .line 42
    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.ui.quickpay.MspInitAssistServiceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspInitAssistService;

    .line 46
    sput-object v0, Lcom/alipay/android/app/MspInitAssistService;->b:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->b:Lcom/alipay/android/app/MspInitAssistService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " getMiniInstance "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMspInstance()Lcom/alipay/android/app/MspInitAssistService;
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->a:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->a:Lcom/alipay/android/app/MspInitAssistService;

    .line 34
    :goto_0
    return-object v0

    .line 25
    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.MspInitAssistServiceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspInitAssistService;

    .line 28
    sput-object v0, Lcom/alipay/android/app/MspInitAssistService;->a:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->a:Lcom/alipay/android/app/MspInitAssistService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " getMspInstance "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 55
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    if-nez v0, :cond_0

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 58
    :cond_0
    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->c:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->c:Lcom/alipay/android/app/MspInitAssistService;

    goto :goto_0

    .line 62
    :cond_1
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.pay.MspInitAssistServiceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspInitAssistService;

    .line 65
    sput-object v0, Lcom/alipay/android/app/MspInitAssistService;->c:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_2

    .line 66
    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->c:Lcom/alipay/android/app/MspInitAssistService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " getSdkInstance "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    :cond_2
    move-object v0, v1

    .line 71
    goto :goto_0
.end method

.method public static initFirstCreate(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMiniInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v1

    .line 121
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceFirstCreate(Landroid/content/Context;)V

    .line 127
    :cond_0
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1, p0}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceFirstCreate(Landroid/content/Context;)V

    .line 130
    :cond_1
    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {v2, p0}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceFirstCreate(Landroid/content/Context;)V

    .line 133
    :cond_2
    return-void
.end method

.method public static initServiceCreate()V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMiniInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v1

    .line 140
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceCreate()V

    .line 145
    :cond_0
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceCreate()V

    .line 148
    :cond_1
    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v2}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceCreate()V

    .line 151
    :cond_2
    return-void
.end method

.method public static isRunAsSdk()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public static stopServiceDestory()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/MspInitAssistService;->stopWhenServiceDestroy(Landroid/content/Context;)V

    .line 159
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMiniInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/MspInitAssistService;->stopWhenServiceDestroy(Landroid/content/Context;)V

    .line 163
    :cond_1
    return-void
.end method


# virtual methods
.method public demoPay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSdkAlixPayStub(Lcom/alipay/android/app/IServiceAdapter;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract initWhenServiceCreate()V
.end method

.method public abstract initWhenServiceFirstCreate(Landroid/content/Context;)V
.end method

.method public pay(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public registerCallback(Lcom/alipay/android/app/IAlipayCallback;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public registerCallback(Lcom/alipay/android/app/IRemoteCallback;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public abstract stopWhenServiceDestroy(Landroid/content/Context;)V
.end method

.method public unregisterAlipayCallback()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public unregisterCallback()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
