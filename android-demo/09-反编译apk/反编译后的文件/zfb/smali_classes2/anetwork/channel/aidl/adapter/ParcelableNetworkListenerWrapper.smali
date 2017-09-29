.class public Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;
.super Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;
.source "ParcelableNetworkListenerWrapper.java"


# instance fields
.field public a:I

.field private b:Lanetwork/channel/NetworkListener;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Object;

.field private h:B

.field private i:B

.field private j:B

.field private k:B

.field private l:B

.field private m:B


# direct methods
.method public constructor <init>(Lanetwork/channel/NetworkListener;Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:B

    .line 32
    iput-byte v2, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->i:B

    .line 33
    const/4 v0, 0x2

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    .line 34
    const/4 v0, 0x4

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->k:B

    .line 35
    const/16 v0, 0x8

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->l:B

    .line 36
    const/16 v0, 0x16

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->m:B

    .line 37
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a:I

    .line 44
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->b:Lanetwork/channel/NetworkListener;

    .line 45
    if-eqz p1, :cond_3

    .line 46
    const-class v0, Lanetwork/channel/NetworkCallBack$FinishListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iput-boolean v2, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->c:Z

    .line 48
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:B

    iget-byte v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->i:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:B

    .line 50
    :cond_0
    const-class v0, Lanetwork/channel/NetworkCallBack$ProgressListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iput-boolean v2, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->d:Z

    .line 52
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:B

    iget-byte v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->j:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:B

    .line 54
    :cond_1
    const-class v0, Lanetwork/channel/NetworkCallBack$ResponseCodeListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iput-boolean v2, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->e:Z

    .line 56
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:B

    iget-byte v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->k:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:B

    .line 58
    :cond_2
    const-class v0, Lanetwork/channel/anet/DegradableListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:B

    iget-byte v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->l:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:B

    .line 62
    :cond_3
    iput-object p2, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->f:Landroid/os/Handler;

    .line 63
    iput-object p3, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method static synthetic a(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public final a()B
    .locals 1

    .prologue
    .line 155
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->h:B

    return v0
.end method

.method public final a(Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-boolean v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->c:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->b:Lanetwork/channel/NetworkListener;

    check-cast v0, Lanetwork/channel/NetworkCallBack$FinishListener;

    .line 107
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->f:Landroid/os/Handler;

    .line 108
    iget-object v2, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Ljava/lang/Object;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    new-instance v3, Lanetwork/channel/aidl/adapter/e;

    invoke-direct {v3, p0, p1, v2, v0}, Lanetwork/channel/aidl/adapter/e;-><init>(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;Lanetwork/channel/aidl/DefaultFinishEvent;Ljava/lang/Object;Lanetwork/channel/NetworkCallBack$FinishListener;)V

    .line 121
    invoke-static {v3, v1}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 124
    :cond_0
    iput-object v4, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->b:Lanetwork/channel/NetworkListener;

    .line 125
    iput-object v4, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->g:Ljava/lang/Object;

    .line 126
    iput-object v4, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->f:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/DefaultProgressEvent;Lanetwork/channel/aidl/ParcelableObject;)V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->d:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->b:Lanetwork/channel/NetworkListener;

    check-cast v0, Lanetwork/channel/NetworkCallBack$ProgressListener;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lanetwork/channel/aidl/adapter/d;

    invoke-direct {v1, p0, p1, v0}, Lanetwork/channel/aidl/adapter/d;-><init>(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;Lanetwork/channel/aidl/DefaultProgressEvent;Lanetwork/channel/NetworkCallBack$ProgressListener;)V

    .line 81
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->f:Landroid/os/Handler;

    invoke-static {v1, v0}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final a(ILanetwork/channel/aidl/ParcelableHeader;Lanetwork/channel/aidl/ParcelableObject;)Z
    .locals 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->e:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->b:Lanetwork/channel/NetworkListener;

    check-cast v0, Lanetwork/channel/NetworkCallBack$ResponseCodeListener;

    .line 134
    if-eqz v0, :cond_0

    .line 135
    new-instance v1, Lanetwork/channel/aidl/adapter/f;

    invoke-direct {v1, p0, v0, p2}, Lanetwork/channel/aidl/adapter/f;-><init>(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;Lanetwork/channel/NetworkCallBack$ResponseCodeListener;Lanetwork/channel/aidl/ParcelableHeader;)V

    .line 142
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->f:Landroid/os/Handler;

    invoke-static {v1, v0}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 145
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method
