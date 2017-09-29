.class public Lanetwork/channel/aidl/adapter/NetworkProxy;
.super Ljava/lang/Object;
.source "NetworkProxy.java"

# interfaces
.implements Lanetwork/channel/Network;


# static fields
.field private static a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

.field private static b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lanetwork/channel/aidl/adapter/FutureResponse;",
            "Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Z

.field private static h:Landroid/content/ServiceConnection;


# instance fields
.field private d:Lanetwork/channel/aidl/RemoteNetwork;

.field private e:I

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->b:Ljava/util/Hashtable;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->c:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->g:Z

    .line 443
    new-instance v0, Lanetwork/channel/aidl/adapter/b;

    invoke-direct {v0}, Lanetwork/channel/aidl/adapter/b;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->h:Landroid/content/ServiceConnection;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->e:I

    .line 57
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    .line 58
    iput p2, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->e:I

    .line 59
    return-void
.end method

.method static synthetic a(Lanetwork/channel/aidl/adapter/NetworkProxy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lanetwork/channel/aidl/IRemoteNetworkGetter;)Lanetwork/channel/aidl/IRemoteNetworkGetter;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    return-object p0
.end method

.method private a(Lanetwork/channel/aidl/RemoteNetwork;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Lanetwork/channel/aidl/ParcelableFuture;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 339
    const-string/jumbo v1, "ANet.NetworkProxy"

    const-string/jumbo v2, "[redirectAsyncCall]"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-nez p1, :cond_0

    .line 363
    :goto_0
    return-object v0

    .line 343
    :cond_0
    :try_start_0
    invoke-interface {p1, p2, p3}, Lanetwork/channel/aidl/RemoteNetwork;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    const-string/jumbo v1, "call asyncSend(pRequest, listenerWrapper) method exception."

    .line 348
    const-string/jumbo v2, "ANet.NetworkProxy"

    invoke-static {v2, v1, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    invoke-static {v1, v0}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    .line 350
    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const/16 v2, 0xe7

    const-string/jumbo v3, ""

    invoke-virtual {p2}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    :goto_1
    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 353
    if-eqz p3, :cond_1

    .line 355
    :try_start_1
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(B)V

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableObject;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    :cond_1
    :goto_2
    new-instance v0, Lanetwork/channel/aidl/adapter/c;

    invoke-direct {v0, p0}, Lanetwork/channel/aidl/adapter/c;-><init>(Lanetwork/channel/aidl/adapter/NetworkProxy;)V

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p2}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 357
    :catch_1
    move-exception v0

    .line 358
    const-string/jumbo v1, "ANet.NetworkProxy"

    const-string/jumbo v2, "[asyncSend] callback-listenerWrapper.onFinished"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic a(Lanetwork/channel/aidl/adapter/NetworkProxy;Lanetwork/channel/aidl/RemoteNetwork;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Lanetwork/channel/aidl/ParcelableFuture;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/RemoteNetwork;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(ILjava/net/URL;)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b(ILjava/net/URL;)Lanetwork/channel/aidl/RemoteNetwork;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;I)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b(Landroid/content/Context;I)Lanetwork/channel/aidl/RemoteNetwork;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lanetwork/channel/aidl/adapter/NetworkProxy;Lanetwork/channel/aidl/RemoteNetwork;)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    return-object p1
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->g:Z

    return v0
.end method

.method static synthetic b(Lanetwork/channel/aidl/adapter/NetworkProxy;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->e:I

    return v0
.end method

.method private static declared-synchronized b(ILjava/net/URL;)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 8

    .prologue
    .line 270
    const-class v7, Lanetwork/channel/aidl/adapter/NetworkProxy;

    monitor-enter v7

    :try_start_0
    const-string/jumbo v0, "ANet.NetworkProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[getRemoteNetworkInstance] type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v6, 0x0

    .line 272
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 274
    :try_start_1
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    invoke-interface {v0, p0}, Lanetwork/channel/aidl/IRemoteNetworkGetter;->a(I)Lanetwork/channel/aidl/RemoteNetwork;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 284
    :goto_0
    monitor-exit v7

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    :try_start_2
    const-string/jumbo v1, "get RemoteNetwork Delegate failed."

    .line 277
    const-string/jumbo v2, "ANet.NetworkProxy"

    invoke-static {v2, v1, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    invoke-static {v1, v0}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    .line 279
    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const/16 v2, 0xe8

    const-string/jumbo v3, ""

    if-nez p1, :cond_1

    const-string/jumbo v4, ""

    :goto_1
    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    move-object v0, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_1

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static b(Landroid/content/Context;I)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 3

    .prologue
    .line 288
    const-string/jumbo v0, "ANet.NetworkProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[getLocalNetworkInstance] type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 295
    new-instance v0, Lanetwork/channel/http/HttpNetworkDelegate;

    invoke-direct {v0, p0}, Lanetwork/channel/http/HttpNetworkDelegate;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    .line 291
    :pswitch_0
    new-instance v0, Lanetwork/channel/degrade/DegradableNetworkDegate;

    invoke-direct {v0, p0}, Lanetwork/channel/degrade/DegradableNetworkDegate;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 293
    :pswitch_1
    new-instance v0, Lanetwork/channel/anet/ANetworkDelegate;

    invoke-direct {v0, p0}, Lanetwork/channel/anet/ANetworkDelegate;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic c(Lanetwork/channel/aidl/adapter/NetworkProxy;)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    return-object v0
.end method

.method static synthetic c()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->g:Z

    return v0
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->f()V

    return-void
.end method

.method private static f()V
    .locals 5

    .prologue
    .line 367
    const-string/jumbo v0, "ANet.NetworkProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[callAll]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lanetwork/channel/aidl/adapter/NetworkProxy;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v2, Lanetwork/channel/aidl/adapter/NetworkProxy;->c:Ljava/util/ArrayList;

    monitor-enter v2

    .line 369
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 370
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    if-eqz v0, :cond_0

    .line 373
    :try_start_1
    invoke-virtual {v0}, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    :try_start_2
    const-string/jumbo v3, "ANet.NetworkProxy"

    const-string/jumbo v4, "callAll() exception"

    invoke-static {v3, v4, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 379
    :cond_1
    :try_start_3
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 382
    :try_start_4
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 387
    :goto_2
    return-void

    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Lanetwork/channel/Request;)Lanetwork/channel/Response;
    .locals 8

    .prologue
    const v1, 0xfe5a

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 64
    const-string/jumbo v0, "ANet.NetworkProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[syncSend] startTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    if-nez v0, :cond_2

    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    invoke-interface {p1}, Lanetwork/channel/Request;->getURL()Ljava/net/URL;

    move-result-object v4

    const-string/jumbo v2, "ANet.NetworkProxy"

    const-string/jumbo v3, "bindService"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    if-nez v0, :cond_0

    sget-boolean v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->g:Z

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    sget-boolean v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    iget v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->e:I

    invoke-interface {p1}, Lanetwork/channel/Request;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-static {v0, v2}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b(ILjava/net/URL;)Lanetwork/channel/aidl/RemoteNetwork;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    :cond_1
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    if-nez v0, :cond_2

    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    iget v2, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->e:I

    invoke-static {v0, v2}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b(Landroid/content/Context;I)Lanetwork/channel/aidl/RemoteNetwork;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    .line 67
    :cond_2
    new-instance v4, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v4, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Lanetwork/channel/Request;)V

    .line 68
    iput-wide v6, v4, Lanetwork/channel/aidl/ParcelableRequest;->a:J

    .line 70
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    invoke-interface {v0, v4}, Lanetwork/channel/aidl/RemoteNetwork;->a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 78
    :goto_1
    return-object v0

    .line 65
    :cond_3
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lanetwork/channel/aidl/IRemoteNetworkGetter;

    invoke-static {v0, v2}, Lcom/taobao/android/service/Services;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/IRemoteNetworkGetter;

    sput-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    sput-boolean v2, Lanetwork/channel/aidl/adapter/NetworkProxy;->g:Z

    const-string/jumbo v2, "get service interface failed."

    const-string/jumbo v3, "ANet.NetworkProxy"

    invoke-static {v3, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v0}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v0, "Page_Net_Exception"

    const/16 v2, 0xe8

    const-string/jumbo v3, ""

    if-nez v4, :cond_4

    const-string/jumbo v4, ""

    :goto_2
    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 71
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 72
    const-string/jumbo v0, "call asyncSend method failed."

    .line 73
    const-string/jumbo v2, "ANet.NetworkProxy"

    invoke-static {v2, v0, v6}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    invoke-static {v0, v6}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    .line 75
    const-string/jumbo v0, "Page_Net_Exception"

    const/16 v2, 0xe7

    const-string/jumbo v3, ""

    invoke-virtual {v4}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v7

    if-nez v7, :cond_5

    const-string/jumbo v4, ""

    :goto_3
    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    const-string/jumbo v0, "ANet.NetworkProxy"

    const-string/jumbo v1, "[syncRemoteCallFailed]"

    invoke-static {v0, v1, v6}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lanetwork/channel/aidl/NetworkResponse;

    const/16 v1, -0xc

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    goto :goto_1

    .line 75
    :cond_5
    invoke-virtual {v4}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public final a(Lanetwork/channel/Request;Ljava/lang/Object;Landroid/os/Handler;Lanetwork/channel/NetworkListener;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanetwork/channel/Request;",
            "Ljava/lang/Object;",
            "Landroid/os/Handler;",
            "Lanetwork/channel/NetworkListener;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lanetwork/channel/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    const-string/jumbo v2, "ANet.NetworkProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[asyncSend build 1] startTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v5, Lanetwork/channel/aidl/adapter/FutureResponse;

    invoke-direct {v5}, Lanetwork/channel/aidl/adapter/FutureResponse;-><init>()V

    .line 107
    const/4 v4, 0x0

    .line 108
    if-nez p4, :cond_0

    if-eqz p3, :cond_1

    .line 109
    :cond_0
    new-instance v4, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    invoke-direct {v4, p4, p3, p2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;-><init>(Lanetwork/channel/NetworkListener;Landroid/os/Handler;Ljava/lang/Object;)V

    .line 111
    :cond_1
    new-instance v3, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v3, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Lanetwork/channel/Request;)V

    .line 112
    iput-wide v0, v3, Lanetwork/channel/aidl/ParcelableRequest;->a:J

    .line 113
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    iget v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->e:I

    invoke-interface {p1}, Lanetwork/channel/Request;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b(ILjava/net/URL;)Lanetwork/channel/aidl/RemoteNetwork;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    .line 118
    :cond_2
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    if-nez v0, :cond_6

    .line 119
    new-instance v6, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    new-instance v0, Lanetwork/channel/aidl/adapter/a;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lanetwork/channel/aidl/adapter/a;-><init>(Lanetwork/channel/aidl/adapter/NetworkProxy;Lanetwork/channel/Request;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;Lanetwork/channel/aidl/adapter/FutureResponse;)V

    invoke-direct {v6, p0, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;-><init>(Lanetwork/channel/aidl/adapter/NetworkProxy;Ljava/util/concurrent/Callable;)V

    .line 135
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lanetwork/channel/aidl/adapter/NetworkProxy;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v5, v6}, Lanetwork/channel/aidl/adapter/FutureResponse;->a(Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;)V

    .line 141
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->f:Landroid/content/Context;

    const-string/jumbo v1, "ANet.NetworkProxy"

    const-string/jumbo v2, "[asyncBindService]"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lanetwork/channel/aidl/IRemoteNetworkGetter;

    sget-object v2, Lanetwork/channel/aidl/adapter/NetworkProxy;->h:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/taobao/android/service/Services;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->g:Z

    const-string/jumbo v0, "ANet.NetworkProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bBindFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lanetwork/channel/aidl/adapter/NetworkProxy;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mGetter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->g:Z

    if-nez v0, :cond_3

    sget-object v0, Lanetwork/channel/aidl/adapter/NetworkProxy;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->f()V

    .line 146
    :cond_4
    :goto_1
    return-object v5

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_6
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy;->d:Lanetwork/channel/aidl/RemoteNetwork;

    invoke-direct {p0, v0, v3, v4}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/RemoteNetwork;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    .line 144
    invoke-virtual {v5, v0}, Lanetwork/channel/aidl/adapter/FutureResponse;->a(Lanetwork/channel/aidl/ParcelableFuture;)V

    goto :goto_1
.end method
