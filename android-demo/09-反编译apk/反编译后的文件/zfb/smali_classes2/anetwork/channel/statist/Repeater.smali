.class public Lanetwork/channel/statist/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"


# static fields
.field private static d:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private a:Lanetwork/channel/aidl/ParcelableObject;

.field private b:Lanetwork/channel/entity/RequestConfig;

.field private c:Landroid/os/Handler;

.field private e:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field private f:Z

.field private g:B


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableNetworkListener;Lanetwork/channel/entity/RequestConfig;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanetwork/channel/statist/Repeater;->f:Z

    .line 32
    const/16 v0, 0x8

    iput-byte v0, p0, Lanetwork/channel/statist/Repeater;->g:B

    .line 34
    iput-object v1, p0, Lanetwork/channel/statist/Repeater;->a:Lanetwork/channel/aidl/ParcelableObject;

    .line 35
    iput-object v1, p0, Lanetwork/channel/statist/Repeater;->c:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 37
    iput-object p2, p0, Lanetwork/channel/statist/Repeater;->b:Lanetwork/channel/entity/RequestConfig;

    .line 39
    :try_start_0
    invoke-interface {p1}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a()B

    move-result v0

    iget-byte v1, p0, Lanetwork/channel/statist/Repeater;->g:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/statist/Repeater;->f:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    const-string/jumbo v0, "ANet.Repeater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bDegrade:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lanetwork/channel/statist/Repeater;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lanetwork/channel/statist/Repeater;)Lanetwork/channel/aidl/ParcelableObject;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lanetwork/channel/statist/Repeater;->a:Lanetwork/channel/aidl/ParcelableObject;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Lanetwork/channel/statist/Repeater;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lanetwork/channel/statist/Repeater;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lanetwork/channel/statist/Repeater;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 147
    const/4 v0, 0x5

    const/16 v1, 0x3c

    const/4 v2, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lanetwork/channel/http/ThreadPoolExecutorFactory;->a(IIIII)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lanetwork/channel/statist/Repeater;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 149
    :cond_1
    sget-object v0, Lanetwork/channel/statist/Repeater;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 150
    const-string/jumbo v0, "ANet.Repeater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[dispatchCallBack submit...]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(III[B)V
    .locals 7

    .prologue
    .line 68
    iget-object v0, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v6, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 70
    new-instance v0, Lanetwork/channel/statist/b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lanetwork/channel/statist/b;-><init>(Lanetwork/channel/statist/Repeater;III[BLanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 89
    invoke-direct {p0, v0}, Lanetwork/channel/statist/Repeater;->a(Ljava/lang/Runnable;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string/jumbo v0, "ANet.Repeater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "progressListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    const-string/jumbo v0, "ANet.Repeater"

    const-string/jumbo v1, "[onResponseCode]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 52
    new-instance v1, Lanetwork/channel/statist/a;

    invoke-direct {v1, p0, p1, p2, v0}, Lanetwork/channel/statist/a;-><init>(Lanetwork/channel/statist/Repeater;ILjava/util/Map;Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 63
    invoke-direct {p0, v1}, Lanetwork/channel/statist/Repeater;->a(Ljava/lang/Runnable;)V

    .line 65
    :cond_0
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "ANet.Repeater"

    const-string/jumbo v1, "[onFinish] "

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 99
    new-instance v1, Lanetwork/channel/statist/c;

    invoke-direct {v1, p0, p1, v0}, Lanetwork/channel/statist/c;-><init>(Lanetwork/channel/statist/Repeater;Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 116
    invoke-direct {p0, v1}, Lanetwork/channel/statist/Repeater;->a(Ljava/lang/Runnable;)V

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 120
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_1

    .line 127
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 128
    if-eqz v0, :cond_0

    .line 130
    const/4 v2, 0x0

    iput-object v2, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 133
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v1

    .line 136
    goto :goto_0

    .line 138
    :cond_1
    const-string/jumbo v0, "ANet.Repeater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "degradeListener :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lanetwork/channel/statist/Repeater;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u4e0d\u964d\u7ea7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 139
    goto :goto_0
.end method
