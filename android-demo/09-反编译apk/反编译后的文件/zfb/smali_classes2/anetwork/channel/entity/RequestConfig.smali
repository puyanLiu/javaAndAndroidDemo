.class public Lanetwork/channel/entity/RequestConfig;
.super Ljava/lang/Object;
.source "RequestConfig.java"


# static fields
.field public static final a:Lorg/apache/http/ProtocolVersion;

.field public static final b:Lorg/apache/http/ProtocolVersion;

.field public static final c:Lorg/apache/http/ProtocolVersion;

.field public static final d:Lorg/apache/http/ProtocolVersion;


# instance fields
.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lanetwork/channel/aidl/ParcelableRequest;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/net/URL;

.field private i:Ljava/net/URL;

.field private j:Lorg/apache/http/ProtocolVersion;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x1

    .line 74
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string/jumbo v1, "HTTP"

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 75
    sput-object v0, Lanetwork/channel/entity/RequestConfig;->a:Lorg/apache/http/ProtocolVersion;

    sput-object v0, Lanetwork/channel/entity/RequestConfig;->b:Lorg/apache/http/ProtocolVersion;

    .line 76
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string/jumbo v1, "SPDY"

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanetwork/channel/entity/RequestConfig;->c:Lorg/apache/http/ProtocolVersion;

    .line 77
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string/jumbo v1, "QUIC"

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanetwork/channel/entity/RequestConfig;->d:Lorg/apache/http/ProtocolVersion;

    return-void
.end method

.method public constructor <init>(Lanetwork/channel/aidl/ParcelableRequest;Lorg/apache/http/ProtocolVersion;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    .line 67
    iput v4, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    .line 68
    iput v4, p0, Lanetwork/channel/entity/RequestConfig;->o:I

    .line 69
    iput v4, p0, Lanetwork/channel/entity/RequestConfig;->p:I

    .line 71
    iput-boolean v4, p0, Lanetwork/channel/entity/RequestConfig;->q:Z

    .line 73
    iput-boolean v4, p0, Lanetwork/channel/entity/RequestConfig;->s:Z

    .line 78
    iput-boolean v4, p0, Lanetwork/channel/entity/RequestConfig;->t:Z

    .line 593
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    .line 80
    iput-object p1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    .line 81
    iput-object p2, p0, Lanetwork/channel/entity/RequestConfig;->j:Lorg/apache/http/ProtocolVersion;

    .line 82
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {p0, v1}, Lanetwork/channel/entity/RequestConfig;->b(Lanetwork/channel/aidl/ParcelableRequest;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_6

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->k:Ljava/lang/String;

    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->m:I

    :cond_3
    const-string/jumbo v0, "ANet.RequestConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "origUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    invoke-direct {p0, v0}, Lanetwork/channel/entity/RequestConfig;->b(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->i:Ljava/net/URL;

    .line 83
    if-eqz p1, :cond_5

    .line 84
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->f()I

    move-result v0

    .line 86
    if-ltz v0, :cond_4

    if-le v0, v5, :cond_7

    .line 87
    :cond_4
    iput v5, p0, Lanetwork/channel/entity/RequestConfig;->o:I

    .line 92
    :cond_5
    :goto_1
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mtop.auks.mc.synconfig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/entity/RequestConfig;->t:Z

    .line 98
    :goto_2
    return-void

    .line 82
    :cond_6
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ANet.RequestConfig"

    const-string/jumbo v2, "initUrl - new URL error."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    :cond_7
    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->o:I

    goto :goto_1

    .line 96
    :cond_8
    iput-boolean v4, p0, Lanetwork/channel/entity/RequestConfig;->t:Z

    goto :goto_2
.end method

.method private D()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    if-eqz v1, :cond_0

    .line 165
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->a()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_0
    if-nez v0, :cond_1

    .line 168
    const-string/jumbo v0, "utf-8"

    .line 170
    :cond_1
    return-object v0
.end method

.method private E()Lanetwork/channel/aidl/ParcelableBodyHandler;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->e()Lanetwork/channel/aidl/ParcelableBodyHandler;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private F()Z
    .locals 3

    .prologue
    .line 590
    const-string/jumbo v0, "ANet.RequestConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[isSyncConfigApi]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lanetwork/channel/entity/RequestConfig;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-boolean v0, p0, Lanetwork/channel/entity/RequestConfig;->t:Z

    return v0
.end method

.method private a(Lanetwork/channel/aidl/ParcelableBodyHandler;Ljava/io/OutputStream;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 487
    const-string/jumbo v0, "ANet.RequestConfig"

    const-string/jumbo v1, "[writeToStream]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 491
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    const-string/jumbo v1, "ParcelableBodyHandler"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    const-string/jumbo v1, "OutputStream"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_0
    iput v2, p0, Lanetwork/channel/entity/RequestConfig;->r:I

    .line 495
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 517
    :cond_1
    return-void

    .line 499
    :cond_2
    invoke-interface {p1}, Lanetwork/channel/aidl/ParcelableBodyHandler;->a()Z

    move-result v0

    .line 500
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->F()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 501
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    const-string/jumbo v3, "isCompleted_0"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v0

    move v0, v2

    .line 503
    :cond_4
    :goto_0
    if-nez v1, :cond_1

    .line 504
    const/16 v1, 0x400

    new-array v3, v1, [B

    .line 505
    invoke-interface {p1, v3}, Lanetwork/channel/aidl/ParcelableBodyHandler;->a([B)I

    move-result v4

    .line 506
    invoke-virtual {p2, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 507
    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->r:I

    add-int/2addr v1, v4

    iput v1, p0, Lanetwork/channel/entity/RequestConfig;->r:I

    .line 508
    invoke-interface {p1}, Lanetwork/channel/aidl/ParcelableBodyHandler;->a()Z

    move-result v1

    .line 509
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->F()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 510
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 511
    iget-object v3, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "buffer_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string/jumbo v3, "ANet.RequestConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "post_data_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "len_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v3, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isCompleted_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 595
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    const-string/jumbo v1, "retryTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string/jumbo v0, "ANet.RequestConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "post\u6570\u636e\u4e3a\u7a7a:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const/16 v2, 0x106

    iget-object v4, p0, Lanetwork/channel/entity/RequestConfig;->k:Ljava/lang/String;

    iget-object v5, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 600
    return-void
.end method

.method private b(Lanetwork/channel/aidl/ParcelableRequest;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 246
    if-nez p1, :cond_0

    .line 248
    const-string/jumbo v0, ""

    .line 273
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->g()Ljava/util/List;

    move-result-object v3

    .line 252
    if-eqz v3, :cond_3

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v0

    .line 257
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 258
    if-eqz v0, :cond_1

    .line 259
    const-string/jumbo v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    const/4 v2, 0x1

    .line 263
    :try_start_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Param;

    invoke-interface {v0}, Lanetwork/channel/Param;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->D()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Param;

    invoke-interface {v0}, Lanetwork/channel/Param;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->D()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string/jumbo v5, "ANet.RequestConfig"

    const-string/jumbo v6, "getQueryStr URLEncoder error "

    invoke-static {v5, v6, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 271
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/net/URL;)Ljava/net/URL;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 201
    sget-object v0, Lanetwork/channel/ssl/constant/SslMode;->SSL_0_RTT:Lanetwork/channel/ssl/constant/SslMode;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/SslMode;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->w()I

    move-result v2

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 202
    :goto_0
    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->p()Lanetwork/channel/entity/ConnTypeEnum;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lanetwork/channel/dns/DnsMgr;->a(Ljava/net/URL;Lanetwork/channel/entity/ConnTypeEnum;Z)Ljava/net/URL;

    move-result-object v0

    .line 203
    if-eq v0, p1, :cond_0

    .line 204
    iput-boolean v1, p0, Lanetwork/channel/entity/RequestConfig;->q:Z

    .line 205
    iput-boolean v1, p0, Lanetwork/channel/entity/RequestConfig;->s:Z

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanetwork/channel/entity/RequestConfig;->l:Ljava/lang/String;

    .line 208
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    iput v1, p0, Lanetwork/channel/entity/RequestConfig;->m:I

    .line 211
    :cond_0
    return-object v0

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    const-string/jumbo v0, "ua"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "UA"

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string/jumbo v0, "UA_ANet.1.4.5"

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string/jumbo v0, "gzip"

    return-object v0
.end method

.method public static m()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x3

    return v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lanetwork/channel/entity/RequestConfig;->s:Z

    return v0
.end method

.method public final B()V
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanetwork/channel/entity/RequestConfig;->s:Z

    .line 577
    return-void
.end method

.method public final C()V
    .locals 3

    .prologue
    .line 579
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    if-lez v0, :cond_0

    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->o:I

    if-lez v0, :cond_0

    .line 580
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->o:I

    iget v2, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/ParcelableRequest;->a(I)V

    .line 582
    :cond_0
    return-void
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->p:I

    return v0
.end method

.method public final a(Lanetwork/channel/anet/ICertificationValidate;)Lorg/android/spdy/SslCertcb;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 520
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    if-nez v1, :cond_0

    .line 521
    const-string/jumbo v1, "ANet.RequestConfig"

    const-string/jumbo v2, "[The ParcelableRequest is null.]"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :goto_0
    return-object v0

    .line 525
    :cond_0
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v1

    if-nez v1, :cond_1

    .line 526
    const-string/jumbo v1, "ANet.RequestConfig"

    const-string/jumbo v2, "[The ParcelableSslCallback is null.]"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_1
    new-instance v0, Lanetwork/channel/ssl/SslCertcbImpl;

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lanetwork/channel/ssl/SslCertcbImpl;-><init>(Lanetwork/channel/aidl/ssl/ParcelableSslCallback;Lanetwork/channel/anet/ICertificationValidate;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lanetwork/channel/entity/RequestConfig;->p:I

    .line 114
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableRequest;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    .line 102
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 468
    if-nez p1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->E()Lanetwork/channel/aidl/ParcelableBodyHandler;

    move-result-object v0

    .line 473
    :try_start_0
    invoke-direct {p0, v0, p1}, Lanetwork/channel/entity/RequestConfig;->a(Lanetwork/channel/aidl/ParcelableBodyHandler;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_2
    :goto_1
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->r:I

    if-gtz v0, :cond_0

    .line 481
    const-string/jumbo v0, "http"

    invoke-direct {p0, v0}, Lanetwork/channel/entity/RequestConfig;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    const-string/jumbo v1, "ANet.RequestConfig"

    const-string/jumbo v2, "[postData_writeToStream() error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    const-string/jumbo v2, "writeToStream"

    invoke-static {v2, v0}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1
.end method

.method public final a(Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    .line 197
    invoke-direct {p0, p1}, Lanetwork/channel/entity/RequestConfig;->b(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->i:Ljava/net/URL;

    .line 198
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    const v1, 0x9c40

    .line 121
    const/4 v0, 0x0

    .line 122
    iget-object v2, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    if-eqz v2, :cond_0

    .line 123
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->m()I

    move-result v0

    .line 125
    :cond_0
    if-gtz v0, :cond_1

    .line 126
    const/16 v0, 0x2710

    .line 128
    :cond_1
    iget v2, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    .line 129
    if-ge v0, v1, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 367
    iput p1, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    .line 368
    return-void
.end method

.method public final c()I
    .locals 3

    .prologue
    const v1, 0x9c40

    .line 133
    const/4 v0, 0x0

    .line 134
    iget-object v2, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    if-eqz v2, :cond_0

    .line 135
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->n()I

    move-result v0

    .line 137
    :cond_0
    if-gtz v0, :cond_1

    .line 138
    const/16 v0, 0x4e20

    .line 140
    :cond_1
    iget v2, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    .line 141
    if-ge v0, v1, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->o:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    if-eqz v1, :cond_0

    .line 176
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->b()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    if-nez v0, :cond_1

    .line 179
    const-string/jumbo v0, "GET"

    .line 184
    :goto_0
    return-object v0

    .line 182
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final i()Ljava/net/URL;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->i:Ljava/net/URL;

    return-object v0
.end method

.method public final j()Ljava/net/URL;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    if-eqz v1, :cond_0

    .line 280
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->d()Z

    move-result v0

    .line 282
    :cond_0
    return v0
.end method

.method public final l()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->g:Ljava/util/List;

    .line 289
    :cond_0
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->g:Ljava/util/List;

    .line 293
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    const/4 v1, 0x0

    .line 296
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v2, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 301
    :goto_0
    :try_start_2
    iget-object v2, p0, Lanetwork/channel/entity/RequestConfig;->g:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 303
    :try_start_3
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 306
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 307
    if-eqz v0, :cond_2

    .line 308
    iget-boolean v4, p0, Lanetwork/channel/entity/RequestConfig;->q:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "host"

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, ":host"

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 311
    :cond_3
    const-string/jumbo v4, "ANet.RequestConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "header:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 336
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 341
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 338
    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const/16 v2, 0xf1

    const-string/jumbo v3, ""

    iget-object v4, p0, Lanetwork/channel/entity/RequestConfig;->k:Ljava/lang/String;

    const-string/jumbo v6, "remove head method exception."

    invoke-static {v6, v5}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 342
    :goto_2
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->g:Ljava/util/List;

    return-object v0

    .line 293
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 297
    :catch_1
    move-exception v0

    .line 298
    const-string/jumbo v2, "ANet.RequestConfig"

    const-string/jumbo v3, "get cookie error."

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 313
    :cond_4
    if-eqz v1, :cond_5

    :try_start_5
    const-string/jumbo v4, "cookie"

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 314
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 315
    :cond_5
    const-string/jumbo v4, "User-Agent"

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 319
    :cond_6
    iget-boolean v0, p0, Lanetwork/channel/entity/RequestConfig;->q:Z

    if-eqz v0, :cond_7

    .line 321
    sget-object v0, Lanetwork/channel/entity/ConnTypeEnum;->SPDY:Lanetwork/channel/entity/ConnTypeEnum;

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->p()Lanetwork/channel/entity/ConnTypeEnum;

    move-result-object v3

    if-ne v0, v3, :cond_a

    .line 322
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->g:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v4, ":host"

    iget-object v5, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 328
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "Cookie"

    invoke-direct {v0, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_8
    sget-object v0, Lanetwork/channel/entity/ConnTypeEnum;->SPDY:Lanetwork/channel/entity/ConnTypeEnum;

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->p()Lanetwork/channel/entity/ConnTypeEnum;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 334
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->g:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "User-Agent"

    invoke-static {}, Lanetwork/channel/entity/RequestConfig;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_9
    monitor-exit v2

    goto :goto_2

    .line 324
    :cond_a
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->g:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v4, "Host"

    iget-object v5, p0, Lanetwork/channel/entity/RequestConfig;->h:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    return v0
.end method

.method public final o()Lanetwork/channel/aidl/ParcelableRequest;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    return-object v0
.end method

.method public final p()Lanetwork/channel/entity/ConnTypeEnum;
    .locals 2

    .prologue
    .line 386
    const-string/jumbo v0, "HTTP"

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->q()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    sget-object v0, Lanetwork/channel/entity/ConnTypeEnum;->HTTP:Lanetwork/channel/entity/ConnTypeEnum;

    .line 389
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lanetwork/channel/entity/ConnTypeEnum;->SPDY:Lanetwork/channel/entity/ConnTypeEnum;

    goto :goto_0
.end method

.method public final q()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->j:Lorg/apache/http/ProtocolVersion;

    if-nez v0, :cond_0

    .line 400
    sget-object v0, Lanetwork/channel/entity/RequestConfig;->a:Lorg/apache/http/ProtocolVersion;

    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->j:Lorg/apache/http/ProtocolVersion;

    .line 402
    :cond_0
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->j:Lorg/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->m:I

    return v0
.end method

.method public final v()[B
    .locals 5

    .prologue
    .line 438
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->E()Lanetwork/channel/aidl/ParcelableBodyHandler;

    move-result-object v1

    .line 439
    const/4 v0, 0x0

    .line 440
    if-eqz v1, :cond_0

    .line 441
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 443
    :try_start_0
    invoke-direct {p0, v1, v2}, Lanetwork/channel/entity/RequestConfig;->a(Lanetwork/channel/aidl/ParcelableBodyHandler;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 456
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 461
    :cond_0
    :goto_1
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_2

    .line 462
    :cond_1
    const-string/jumbo v1, "spdy"

    invoke-direct {p0, v1}, Lanetwork/channel/entity/RequestConfig;->a(Ljava/lang/String;)V

    .line 464
    :cond_2
    return-object v0

    .line 449
    :catch_0
    move-exception v1

    .line 450
    :try_start_4
    const-string/jumbo v3, "ANet.RequestConfig"

    const-string/jumbo v4, "[getRequestBody_writeToStream] error"

    invoke-static {v3, v4, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->F()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 452
    iget-object v3, p0, Lanetwork/channel/entity/RequestConfig;->e:Ljava/util/Map;

    const-string/jumbo v4, "getRequestBody_writeToStream"

    invoke-static {v4, v1}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 456
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 459
    :catch_1
    move-exception v1

    goto :goto_1

    .line 455
    :catchall_0
    move-exception v0

    .line 456
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 458
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    .line 459
    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public final w()I
    .locals 4

    .prologue
    .line 536
    sget-object v0, Lanetwork/channel/ssl/constant/SslMode;->SSL_NOT_ENCRYPT:Lanetwork/channel/ssl/constant/SslMode;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/SslMode;->intValue()I

    move-result v0

    .line 537
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    if-nez v1, :cond_0

    .line 538
    const-string/jumbo v1, "ANet.RequestConfig"

    const-string/jumbo v2, "[The ParcelableRequest is null.]"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :goto_0
    return v0

    .line 541
    :cond_0
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v1

    if-nez v1, :cond_1

    .line 542
    const-string/jumbo v1, "ANet.RequestConfig"

    const-string/jumbo v2, "[The ParcelableSslCallback is null.]"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_1
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v1

    invoke-interface {v1}, Lanetwork/channel/aidl/ssl/ParcelableSslCallback;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    const-string/jumbo v2, "ANet.RequestConfig"

    const-string/jumbo v3, "[call ParcelableSslCallback.sslMode() error.]"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final x()Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->j()Lanetwork/channel/aidl/ParcelablePersistentRetryHandler;

    move-result-object v0

    return-object v0
.end method

.method public final y()J
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final z()V
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    .line 569
    return-void
.end method
