.class final Lanetwork/channel/http/d;
.super Ljava/lang/Object;
.source "NetworkStatusHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lanetwork/channel/http/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 105
    iget-object v0, p0, Lanetwork/channel/http/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 106
    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lanetwork/channel/http/d;->a:Landroid/content/Context;

    monitor-enter v2

    .line 108
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/http/d;->a:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    if-eqz v0, :cond_2

    .line 113
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 117
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    :cond_0
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 120
    const-string/jumbo v0, "ANet.NetworkStatusHelper"

    const-string/jumbo v1, "NO NETWORK"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0}, Lanetwork/channel/monitor/Monitor;->a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V

    .line 180
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 124
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_b

    .line 128
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 129
    invoke-static {v1}, Lmtopsdk/xstate/NetworkStatus;->a(I)Lmtopsdk/xstate/NetworkClassEnum;

    move-result-object v2

    .line 130
    sget-object v3, Lanetwork/channel/http/e;->a:[I

    invoke-virtual {v2}, Lmtopsdk/xstate/NetworkClassEnum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 150
    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NONE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sput-object v1, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 152
    :goto_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 154
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string/jumbo v1, "CMWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_4

    const-string/jumbo v1, "UNIWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_4

    const-string/jumbo v1, "3GWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_4

    const-string/jumbo v1, "CTWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 158
    :cond_4
    const-string/jumbo v0, "wap"

    invoke-static {v0}, Lanetwork/channel/http/NetworkStatusHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    :cond_5
    :goto_3
    :try_start_3
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0}, Lanetwork/channel/anet/AEngine;->a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 175
    :goto_4
    :try_start_4
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0}, Lanetwork/channel/monitor/Monitor;->a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 132
    :pswitch_0
    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sput-object v1, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    goto :goto_2

    .line 135
    :pswitch_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 136
    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->CDMA:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sput-object v1, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    goto :goto_2

    .line 137
    :cond_6
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 138
    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->EDGE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sput-object v1, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    goto :goto_2

    .line 140
    :cond_7
    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->GPRS:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sput-object v1, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    goto :goto_2

    .line 144
    :pswitch_2
    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G3:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sput-object v1, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    goto :goto_2

    .line 147
    :pswitch_3
    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G4:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sput-object v1, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    goto :goto_2

    .line 159
    :cond_8
    const-string/jumbo v1, "CMNET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_9

    const-string/jumbo v1, "UNINET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_9

    const-string/jumbo v1, "3GNET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_9

    const-string/jumbo v1, "CTNET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_a

    .line 162
    :cond_9
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lanetwork/channel/http/NetworkStatusHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 164
    :cond_a
    const-string/jumbo v0, "other"

    invoke-static {v0}, Lanetwork/channel/http/NetworkStatusHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 167
    :cond_b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 168
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->WIFI:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper;->b:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
