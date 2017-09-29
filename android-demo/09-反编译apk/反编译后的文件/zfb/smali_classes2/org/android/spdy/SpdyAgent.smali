.class public final Lorg/android/spdy/SpdyAgent;
.super Ljava/lang/Object;
.source "SpdyAgent.java"


# static fields
.field private static final HAVE_CLOSE:Z = false

.field private static final KB32:I = 0x8000

.field private static final KB8:I = 0x2000

.field private static final MAX_SPDY_SESSION_COUNT:I = 0x32

.field private static final MB5:I = 0x500000

.field static final MODE_QUIC:I = 0x100

.field static final SPDY_DATA_CHUNK_RECV:I = 0x1001

.field static final SPDY_DATA_RECV:I = 0x1002

.field static final SPDY_DATA_SEND:I = 0x1003

.field static final SPDY_PING_RECV:I = 0x1005

.field static final SPDY_REQUEST_RECV:I = 0x1006

.field static final SPDY_SESSION_CLOSE:I = 0x1007

.field static final SPDY_SESSION_CREATE:I = 0x1000

.field static final SPDY_SESSION_FAILED_ERROR:I = 0x1009

.field static final SPDY_STREAM_CLOSE:I = 0x1004

.field static final SPDY_STREAM_RESPONSE_RECV:I = 0x1008

.field public static volatile enableDebug:Z

.field public static volatile enableTimeGaurd:Z

.field private static gSingleInstance:Lorg/android/spdy/SpdyAgent;

.field private static lock:Ljava/lang/Object;

.field private static final r:Ljava/util/concurrent/locks/Lock;

.field private static final rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field static final transmit:Z

.field private static final w:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private agentNativePtr:I

.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sessionMgr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/android/spdy/SpdySession;",
            ">;"
        }
    .end annotation
.end field

.field private sessionQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/android/spdy/SpdySession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    :try_start_0
    const-string/jumbo v0, "tnet-1.0.8"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    sput-boolean v1, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    .line 53
    sput-boolean v1, Lorg/android/spdy/SpdyAgent;->enableTimeGaurd:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 59
    sput-object v0, Lorg/android/spdy/SpdyAgent;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    .line 60
    sget-object v0, Lorg/android/spdy/SpdyAgent;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->lock:Ljava/lang/Object;

    return-void

    .line 23
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)V
    .locals 3

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionQueue:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdyVersion;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lorg/android/spdy/SpdySessionKind;->getint()I

    move-result v1

    sget-object v2, Lorg/android/spdy/SslVersion;->SLIGHT_VERSION_V1:Lorg/android/spdy/SslVersion;

    invoke-virtual {v2}, Lorg/android/spdy/SslVersion;->getint()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/android/spdy/SpdyAgent;->initAgent(III)I

    move-result v0

    iput v0, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    return-void

    .line 109
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method static InvlidCharJudge([B[B)V
    .locals 6

    .prologue
    const/16 v5, 0x7e

    const/16 v4, 0x20

    const/4 v1, 0x0

    const/16 v3, -0x44e

    .line 165
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 166
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v4, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-le v2, v5, :cond_1

    .line 167
    :cond_0
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v1, "SPDY_JNI_ERR_INVALID_PARAM:http header contain invalid character"

    invoke-direct {v0, v1, v3}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 165
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    array-length v0, p1

    if-ge v1, v0, :cond_5

    .line 173
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v4, :cond_4

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v5, :cond_2

    .line 174
    :cond_4
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v1, "SPDY_JNI_ERR_INVALID_PARAM:http header contain invalid character"

    invoke-direct {v0, v1, v3}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 178
    :cond_5
    return-void
.end method

.method private agentIsOpen()V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v1, "SPDY_JNI_ERR_ASYNC_CLOSE"

    const/16 v2, -0x450

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 402
    :cond_0
    return-void
.end method

.method private native closeSessionN(I)I
.end method

.method private static crashReporter(I)V
    .locals 0

    .prologue
    .line 731
    return-void
.end method

.method static dataproviderToByteArray(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;)[B
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/android/spdy/SpdyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/android/spdy/SpdyAgent;->headJudge(Ljava/util/Map;)V

    .line 233
    if-nez p1, :cond_1

    .line 234
    const/4 v0, 0x0

    .line 250
    :cond_0
    return-object v0

    .line 237
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdyDataProvider;->postBody:Ljava/util/Map;

    invoke-static {v0}, Lorg/android/spdy/SpdyAgent;->mapBodyToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 245
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    const/high16 v2, 0x500000

    if-lt v1, v2, :cond_0

    .line 246
    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x44e

    invoke-direct {v1, v0, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 242
    :cond_2
    iget-object v0, p1, Lorg/android/spdy/SpdyDataProvider;->data:[B

    goto :goto_0
.end method

.method private native freeAgent(I)I
.end method

.method public static getInstance(Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_1

    .line 83
    sget-object v1, Lorg/android/spdy/SpdyAgent;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lorg/android/spdy/SpdyAgent;

    invoke-direct {v0, p0, p1}, Lorg/android/spdy/SpdyAgent;-><init>(Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPerformance(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SslPermData;)V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sslcb:Lorg/android/spdy/SslCertcb;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sslcb:Lorg/android/spdy/SslCertcb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/SslCertcb;->getPerformance(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SslPermData;)V

    .line 726
    :cond_0
    return-void
.end method

.method private getPublicKey(Lorg/android/spdy/SpdySession;)Lorg/android/spdy/SslPublickey;
    .locals 2

    .prologue
    .line 710
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sslcb:Lorg/android/spdy/SslCertcb;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sslcb:Lorg/android/spdy/SslCertcb;

    invoke-interface {v0, p1}, Lorg/android/spdy/SslCertcb;->getPublicKey(Lorg/android/spdy/SpdySession;)Lorg/android/spdy/SslPublickey;

    move-result-object v0

    .line 718
    :goto_0
    return-object v0

    .line 715
    :cond_0
    new-instance v0, Lorg/android/spdy/SslPublickey;

    invoke-direct {v0}, Lorg/android/spdy/SslPublickey;-><init>()V

    .line 716
    const/4 v1, -0x1

    iput v1, v0, Lorg/android/spdy/SslPublickey;->error:I

    goto :goto_0
.end method

.method private native getSession(I[BC)I
.end method

.method static headJudge(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 184
    if-eqz p0, :cond_0

    .line 185
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 186
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 187
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/android/spdy/SpdyAgent;->InvlidCharJudge([B[B)V

    .line 194
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0}, Lorg/android/spdy/SpdyAgent;->securityCheck(II)V

    move v2, v1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method private native initAgent(III)I
.end method

.method static mapBodyToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    if-eqz p0, :cond_2

    .line 206
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    .line 208
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 217
    invoke-static {v0}, Lorg/android/spdy/SpdyAgent;->tableListJudge(I)V

    move v2, v0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 222
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static mapToByteArray(Ljava/util/Map;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 459
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 460
    :cond_0
    const/4 v0, 0x0

    .line 475
    :goto_0
    return-object v0

    .line 462
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 463
    new-array v3, v0, [Ljava/lang/String;

    .line 464
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 465
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 466
    const/4 v0, 0x0

    move v2, v0

    .line 469
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 471
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v2

    .line 472
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 473
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 475
    goto :goto_0
.end method

.method private putCertificate(Lorg/android/spdy/SpdySession;[BI)I
    .locals 2

    .prologue
    .line 701
    const/4 v0, -0x1

    .line 702
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->sslcb:Lorg/android/spdy/SslCertcb;

    if-eqz v1, :cond_0

    .line 704
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sslcb:Lorg/android/spdy/SslCertcb;

    invoke-interface {v0, p1, p2, p3}, Lorg/android/spdy/SslCertcb;->putCertificate(Lorg/android/spdy/SpdySession;[BI)I

    move-result v0

    .line 706
    :cond_0
    return v0
.end method

.method static securityCheck(II)V
    .locals 4

    .prologue
    const/16 v3, -0x44e

    .line 145
    const v0, 0x8000

    if-lt p0, v0, :cond_0

    .line 146
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 150
    :cond_0
    const/16 v0, 0x2000

    if-lt p1, v0, :cond_1

    .line 151
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SPDY_JNI_ERR_INVALID_PARAM:value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 154
    :cond_1
    return-void
.end method

.method private native setConTimeout(II)I
.end method

.method private native setSessionKind(II)I
.end method

.method private spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZI[BII)V
    .locals 8

    .prologue
    .line 559
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long v3, v0, v2

    .line 569
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lorg/android/spdy/Intenalcb;->spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJ[BII)V

    .line 572
    return-void
.end method

.method private spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZIII)V
    .locals 7

    .prologue
    .line 576
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long v3, v0, v2

    .line 585
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move v2, p2

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJII)V

    .line 588
    return-void
.end method

.method private spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZIII)V
    .locals 7

    .prologue
    .line 592
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long v3, v0, v2

    .line 601
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move v2, p2

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJII)V

    .line 604
    return-void
.end method

.method private spdyPingRecvCallback(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 623
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 629
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v2, p1, v0, v1, p3}, Lorg/android/spdy/Intenalcb;->spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V

    .line 632
    return-void
.end method

.method private spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;II)V
    .locals 4

    .prologue
    .line 636
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 642
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v2, p1, v0, v1, p3}, Lorg/android/spdy/Intenalcb;->spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JI)V

    .line 645
    return-void
.end method

.method private spdySendMsg(Lorg/android/spdy/SpdySession;ILorg/android/spdy/MessageObj;)V
    .locals 2

    .prologue
    .line 690
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getMsgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 694
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getMsgHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2, p3}, Lorg/android/spdy/Intenalcb;->spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;)V

    .line 673
    return-void
.end method

.method private spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/Intenalcb;->spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V

    .line 555
    return-void
.end method

.method private spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2, p3}, Lorg/android/spdy/Intenalcb;->spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V

    .line 686
    return-void
.end method

.method private spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;IIILorg/android/spdy/SuperviseData;)V
    .locals 7

    .prologue
    .line 608
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    .line 616
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-static {p3}, Lorg/android/spdy/SpdyStatusCode;->getvalue(I)Lorg/android/spdy/SpdyStatusCode;

    move-result-object v4

    move-object v1, p1

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JLorg/android/spdy/SpdyStatusCode;ILorg/android/spdy/SuperviseData;)V

    .line 619
    return-void
.end method

.method private spdyStreamResponseRecv(Lorg/android/spdy/SpdySession;I[Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 650
    invoke-static {p3}, Lorg/android/spdy/SpdyAgent;->stringArrayToMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 651
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    .line 658
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/android/spdy/Intenalcb;->spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;I)V

    .line 661
    return-void
.end method

.method static stringArrayToMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 480
    if-nez p0, :cond_0

    move-object v0, v2

    .line 497
    :goto_0
    return-object v0

    .line 483
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 485
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    add-int/lit8 v0, v1, 0x2

    array-length v4, p0

    if-gt v0, v4, :cond_4

    .line 487
    aget-object v0, p0, v1

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget-object v0, p0, v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v2

    .line 488
    goto :goto_0

    .line 490
    :cond_2
    aget-object v0, p0, v1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 491
    if-nez v0, :cond_3

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    aget-object v4, p0, v1

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_3
    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 497
    goto :goto_0
.end method

.method private native submitRequest(ILorg/android/spdy/SpdySession;[BC[BB[Ljava/lang/String;[BZLjava/lang/Object;IIII)J
.end method

.method static tableListJudge(I)V
    .locals 3

    .prologue
    .line 157
    const/high16 v0, 0x500000

    if-lt p0, v0, :cond_0

    .line 158
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x44e

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method final clearSpdySession(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    if-eqz p1, :cond_1

    .line 64
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method final closeSession(I)I
    .locals 1

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lorg/android/spdy/SpdyAgent;->closeSessionN(I)I

    move-result v0

    return v0
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 388
    :try_start_0
    invoke-virtual {p0}, Lorg/android/spdy/SpdyAgent;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 393
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 391
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 393
    :catch_1
    move-exception v0

    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    .line 391
    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 392
    :goto_1
    throw v0

    .line 393
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public final getSession(Lorg/android/spdy/SpdyRequest;)Lorg/android/spdy/SpdySession;
    .locals 3

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v1, "SPDY_JNI_ERR_INVALID_PARAM"

    const/16 v2, -0x44e

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 129
    :cond_0
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->agentIsOpen()V

    .line 131
    sget-object v0, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/spdy/SpdySession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v1, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 137
    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    sget-object v1, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final removeSession(Lorg/android/spdy/SpdySession;)V
    .locals 2

    .prologue
    .line 445
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 447
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v0

    sget-object v1, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final setConnectTimeOut(I)I
    .locals 2

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 516
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->agentIsOpen()V

    .line 518
    :try_start_0
    iget v1, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:I

    invoke-direct {p0, v1, p1}, Lorg/android/spdy/SpdyAgent;->setConTimeout(II)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 522
    :goto_0
    return v0

    .line 519
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public final setSessionKind(Lorg/android/spdy/SpdySessionKind;)I
    .locals 3

    .prologue
    .line 501
    const/4 v0, -0x1

    .line 502
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->agentIsOpen()V

    .line 504
    :try_start_0
    iget v1, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:I

    invoke-virtual {p1}, Lorg/android/spdy/SpdySessionKind;->getint()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/android/spdy/SpdyAgent;->setSessionKind(II)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 508
    :goto_0
    return v0

    .line 505
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public final submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;)Lorg/android/spdy/SpdySession;
    .locals 8

    .prologue
    .line 380
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/android/spdy/SpdyAgent;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public final submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;)Lorg/android/spdy/SpdySession;
    .locals 20

    .prologue
    .line 273
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 275
    :cond_0
    new-instance v4, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v5, "SPDY_JNI_ERR_INVALID_PARAM"

    const/16 v6, -0x44e

    invoke-direct {v4, v5, v6}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 279
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/android/spdy/SpdyAgent;->agentIsOpen()V

    .line 282
    const/4 v5, 0x0

    .line 284
    sget-object v4, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 286
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/android/spdy/SpdySession;

    .line 288
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/16 v7, 0x32

    if-lt v6, v7, :cond_2

    .line 289
    const/4 v5, 0x1

    .line 292
    :cond_2
    sget-object v6, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 295
    if-eqz v5, :cond_3

    .line 296
    new-instance v4, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v5, "SPDY_SESSION_EXCEED_MAXED:session count exceed max"

    const/16 v6, -0x451

    invoke-direct {v4, v5, v6}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 292
    :catchall_0
    move-exception v4

    sget-object v5, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 300
    :cond_3
    if-eqz v4, :cond_4

    .line 301
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    .line 373
    :goto_0
    return-object v4

    .line 306
    :cond_4
    const/4 v14, 0x1

    .line 307
    invoke-static/range {p1 .. p2}, Lorg/android/spdy/SpdyAgent;->dataproviderToByteArray(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;)[B

    move-result-object v13

    .line 309
    if-eqz v13, :cond_5

    array-length v4, v13

    if-gtz v4, :cond_5

    .line 310
    const/4 v13, 0x0

    .line 312
    :cond_5
    if-eqz p2, :cond_6

    .line 313
    move-object/from16 v0, p2

    iget-boolean v14, v0, Lorg/android/spdy/SpdyDataProvider;->finished:Z

    .line 316
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lorg/android/spdy/SpdyAgent;->mapToByteArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v12

    .line 317
    sget-object v4, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 321
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/android/spdy/SpdySession;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :goto_1
    if-eqz v4, :cond_7

    .line 326
    sget-object v5, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 327
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    goto :goto_0

    .line 323
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    goto :goto_1

    .line 331
    :cond_7
    :try_start_2
    new-instance v4, Lorg/android/spdy/SpdySession;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v6, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Lorg/android/spdy/SpdySession;-><init>(ILorg/android/spdy/SpdyAgent;Ljava/lang/String;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;)V

    .line 332
    new-instance v5, Lorg/android/spdy/SpdyStreamContext;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v5, v0, v1}, Lorg/android/spdy/SpdyStreamContext;-><init>(Ljava/lang/Object;Lorg/android/spdy/Spdycb;)V

    .line 334
    invoke-virtual {v4, v5}, Lorg/android/spdy/SpdySession;->putSpdyStreamCtx(Lorg/android/spdy/SpdyStreamContext;)I

    move-result v16

    .line 335
    sget-object v5, Lorg/android/spdy/SslMod;->SLIGHT_SLL_NOT_ENCRYT:Lorg/android/spdy/SslMod;

    invoke-virtual {v5}, Lorg/android/spdy/SslMod;->getint()I

    move-result v17

    .line 336
    if-eqz p7, :cond_8

    .line 337
    sget-object v5, Lorg/android/spdy/SslMod;->SLIGHT_SSL_0_RTT:Lorg/android/spdy/SslMod;

    invoke-virtual {v5}, Lorg/android/spdy/SslMod;->getint()I

    move-result v17

    .line 340
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->isQuic()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 341
    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    .line 344
    :cond_9
    sget-boolean v5, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    if-eqz v5, :cond_a

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "QZspdydata:index="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  starttime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 347
    :cond_a
    move-object/from16 v0, p0

    iget v6, v0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:I

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getPort()I

    move-result v5

    int-to-char v9, v5

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getUrlPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getPriority()I

    move-result v5

    int-to-byte v11, v5

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getConnectionTimeoutMs()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getRequestTimeoutMs()I

    move-result v19

    move-object/from16 v5, p0

    move-object v7, v4

    move-object/from16 v15, p3

    invoke-direct/range {v5 .. v19}, Lorg/android/spdy/SpdyAgent;->submitRequest(ILorg/android/spdy/SpdySession;[BC[BB[Ljava/lang/String;[BZLjava/lang/Object;IIII)J

    move-result-wide v5

    .line 353
    sget-boolean v7, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    if-eqz v7, :cond_b

    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "QZspdydata:index="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "   calltime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 357
    :cond_b
    const-wide/16 v7, -0x1

    and-long/2addr v7, v5

    long-to-int v7, v7

    .line 358
    const/16 v8, 0x20

    shr-long/2addr v5, v8

    const-wide/16 v8, -0x1

    and-long/2addr v5, v8

    long-to-int v5, v5

    .line 360
    if-eqz v7, :cond_c

    .line 362
    invoke-virtual {v4, v7}, Lorg/android/spdy/SpdySession;->setSessionNativePtr(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/android/spdy/SpdyAgent;->sessionQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 371
    :goto_2
    sget-object v5, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 367
    :cond_c
    :try_start_3
    invoke-static {v5}, Lorg/android/spdy/SpdyErrorResolve;->spdyResolve(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 368
    const/4 v4, 0x0

    goto :goto_2

    .line 371
    :catchall_1
    move-exception v4

    sget-object v5, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method
