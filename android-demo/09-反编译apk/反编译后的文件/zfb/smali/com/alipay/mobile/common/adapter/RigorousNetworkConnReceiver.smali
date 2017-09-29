.class public abstract Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RigorousNetworkConnReceiver.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    iput v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->a:I

    .line 35
    iput v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->b:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string/jumbo v3, "RigorousNetworkConnReceiver"

    const-string/jumbo v4, "\n ============================================================== "

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string/jumbo v0, "RigorousNetworkConnReceiver"

    const-string/jumbo v3, "\u5f53\u524d\u65e0\u7f51\u7edc!"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    move v0, v1

    .line 66
    :goto_0
    if-nez v0, :cond_6

    .line 67
    const-string/jumbo v0, "RigorousNetworkConnReceiver"

    const-string/jumbo v1, "NetworkConnectivityReceiver#onReceive \u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->onReceivee(Landroid/content/Context;Landroid/content/Intent;)V

    .line 73
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->a:I

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->b:I

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    if-nez v8, :cond_4

    :cond_2
    const-string/jumbo v8, "RigorousNetworkConnReceiver"

    const-string/jumbo v9, " New contivity broadcast\uff01"

    invoke-static {v8, v9}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    iput v5, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->a:I

    iput v6, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->b:I

    const-string/jumbo v8, "RigorousNetworkConnReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " type=["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "] subType=["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]  available=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] connected=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] detailedState=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] extraInfo=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "RigorousNetworkConnReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " activeNetworkInfo hashcode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  activeNetworkInfo = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]\n\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v8, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v4, :cond_3

    iget v8, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->a:I

    if-ne v8, v5, :cond_3

    iget v8, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->b:I

    if-ne v8, v6, :cond_3

    const-string/jumbo v0, "RigorousNetworkConnReceiver"

    const-string/jumbo v1, " Old contivity broadcast\uff01"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_0

    .line 69
    :cond_6
    if-ne v0, v2, :cond_0

    .line 70
    const-string/jumbo v0, "RigorousNetworkConnReceiver"

    const-string/jumbo v1, "NetworkConnectivityReceiver#onReceive \u7f51\u7edc\u53d8\u5316"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->onReceivee(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public abstract onReceivee(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public register()V
    .locals 3

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string/jumbo v1, "RigorousNetworkConnReceiver"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
