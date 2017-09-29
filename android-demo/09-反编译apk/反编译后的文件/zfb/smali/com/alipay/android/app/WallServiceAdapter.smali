.class public Lcom/alipay/android/app/WallServiceAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/IServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string/jumbo v0, "OK"

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    invoke-static {p1}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    const-string/jumbo v0, "trade_no=\"%s\"&extern_token=\"%s\"&partner=\"%s\"&app_name=\"tb\""

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    iput-object p1, p0, Lcom/alipay/android/app/WallServiceAdapter;->a:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/sys/GlobalContext;->b(Ljava/lang/String;)V

    .line 143
    invoke-static {v0}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 2

    .prologue
    .line 156
    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v0, Lcom/alipay/android/app/d;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/d;-><init>(Lcom/alipay/android/app/WallServiceAdapter;Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 178
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/trade/TradeManager;->a(Lcom/alipay/android/app/IRemoteCallback;)V

    .line 180
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/MspInitAssistService;->registerCallback(Lcom/alipay/android/app/IRemoteCallback;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/TradeManager;->b()V

    .line 192
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/alipay/android/app/MspInitAssistService;->unregisterCallback()V

    .line 196
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&bizcontext=\"{\"biz_type\":\"payment_setting\"}\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    :cond_0
    invoke-static {p1}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final d()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 354
    new-instance v0, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/app/WallServiceAdapter$AlixPayServiceStub;-><init>(Lcom/alipay/android/app/WallServiceAdapter;Lcom/alipay/android/app/IServiceAdapter;)V

    return-object v0
.end method

.method public final f()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 359
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/MspInitAssistService;->getSdkAlixPayStub(Lcom/alipay/android/app/IServiceAdapter;)Landroid/os/IBinder;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
