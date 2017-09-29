.class public final Lorg/android/spdy/SpdySession;
.super Ljava/lang/Object;
.source "SpdySession.java"


# static fields
.field private static volatile count:I


# instance fields
.field private agent:Lorg/android/spdy/SpdyAgent;

.field private authority:Ljava/lang/String;

.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private handler:Landroid/os/Handler;

.field intenalcb:Lorg/android/spdy/Intenalcb;

.field private lock:Ljava/lang/Object;

.field sessionCallBack:Lorg/android/spdy/SessionCb;

.field private volatile sessionNativePtr:I

.field private spdyStream:Lorg/android/spdy/NetSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/android/spdy/NetSparseArray",
            "<",
            "Lorg/android/spdy/SpdyStreamContext;",
            ">;"
        }
    .end annotation
.end field

.field sslcb:Lorg/android/spdy/SslCertcb;

.field private streamcount:I

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lorg/android/spdy/SpdySession;->count:I

    return-void
.end method

.method constructor <init>(ILorg/android/spdy/SpdyAgent;Ljava/lang/String;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    .line 33
    iput-object v1, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    .line 34
    iput-object v1, p0, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    .line 35
    iput-object v1, p0, Lorg/android/spdy/SpdySession;->sslcb:Lorg/android/spdy/SslCertcb;

    .line 44
    iput p1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    .line 45
    iput-object p2, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    .line 46
    iput-object p3, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    .line 47
    new-instance v0, Lorg/android/spdy/SpdySessionCallBack;

    invoke-direct {v0}, Lorg/android/spdy/SpdySessionCallBack;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    .line 55
    new-instance v0, Lorg/android/spdy/NetSparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/android/spdy/NetSparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    .line 56
    iput-object p4, p0, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    .line 57
    iput-object p5, p0, Lorg/android/spdy/SpdySession;->sslcb:Lorg/android/spdy/SslCertcb;

    .line 58
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    return-void
.end method

.method private closeprivate()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 364
    .line 365
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget-object v2, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/android/spdy/SpdyAgent;->clearSpdySession(Ljava/lang/String;)V

    .line 367
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget v2, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    invoke-virtual {v0, v2}, Lorg/android/spdy/SpdyAgent;->closeSession(I)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 374
    :goto_0
    iput v1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    .line 375
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_1
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2}, Lorg/android/spdy/NetSparseArray;->clear()V

    .line 377
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    return v0

    .line 368
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native sendHeadersN(II[Ljava/lang/String;Z)I
.end method

.method private native setOptionN(III)I
.end method

.method private native streamCloseN(III)I
.end method

.method private native streamSendDataN(II[BIIZ)I
.end method

.method private native submitPingN(I)I
.end method

.method private native submitRequestN(ILjava/lang/String;B[Ljava/lang/String;[BZII)I
.end method


# virtual methods
.method public final clearAllStreamCb()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0}, Lorg/android/spdy/NetSparseArray;->clear()V

    .line 107
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final close()I
    .locals 3

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v0, p0}, Lorg/android/spdy/SpdyAgent;->removeSession(Lorg/android/spdy/SpdySession;)V

    .line 337
    invoke-direct {p0}, Lorg/android/spdy/SpdySession;->closeprivate()I

    move-result v0

    .line 339
    :cond_0
    return v0
.end method

.method final closeInternal()I
    .locals 3

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    invoke-direct {p0}, Lorg/android/spdy/SpdySession;->closeprivate()I

    move-result v0

    .line 359
    :cond_0
    return v0
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 344
    :try_start_0
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->close()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    :goto_0
    return-void

    .line 346
    :catchall_0
    move-exception v0

    .line 347
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 350
    :goto_1
    throw v0

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final getAllStreamCb()[Lorg/android/spdy/SpdyStreamContext;
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2}, Lorg/android/spdy/NetSparseArray;->size()I

    move-result v2

    .line 95
    if-lez v2, :cond_0

    .line 96
    new-array v0, v2, [Lorg/android/spdy/SpdyStreamContext;

    .line 97
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2, v0}, Lorg/android/spdy/NetSparseArray;->toArray([Ljava/lang/Object;)V

    .line 99
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final getMsgHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method final getSessionNativePtr()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    return v0
.end method

.method final getSpdyAgent()Lorg/android/spdy/SpdyAgent;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    return-object v0
.end method

.method final getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    if-lez p1, :cond_0

    .line 74
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0, p1}, Lorg/android/spdy/NetSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/spdy/SpdyStreamContext;

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final putSpdyStreamCtx(Lorg/android/spdy/SpdyStreamContext;)I
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget v0, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    .line 66
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2, v0, p1}, Lorg/android/spdy/NetSparseArray;->put(ILjava/lang/Object;)V

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    return v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final removeSpdyStream(I)V
    .locals 2

    .prologue
    .line 82
    if-lez p1, :cond_0

    .line 83
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0, p1}, Lorg/android/spdy/NetSparseArray;->remove(I)V

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final sendHeaders(ILorg/android/spdy/SpdyRequest;Z)I
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 317
    invoke-virtual {p2}, Lorg/android/spdy/SpdyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/android/spdy/SpdyAgent;->mapToByteArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 318
    iget v1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    invoke-direct {p0, v1, p1, v0, p3}, Lorg/android/spdy/SpdySession;->sendHeadersN(II[Ljava/lang/String;Z)I

    move-result v0

    .line 319
    invoke-static {v0}, Lorg/android/spdy/SpdyErrorResolve;->spdyResolve(I)V

    .line 320
    return v0
.end method

.method final sessionIsOpen()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v1, "SPDY_JNI_ERR_ASYNC_CLOSE"

    const/16 v2, -0x450

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 328
    :cond_0
    return-void
.end method

.method public final setOption(II)I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 139
    iget v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    invoke-direct {p0, v0, p1, p2}, Lorg/android/spdy/SpdySession;->setOptionN(III)I

    move-result v0

    .line 140
    invoke-static {v0}, Lorg/android/spdy/SpdyErrorResolve;->spdyResolve(I)V

    .line 141
    return v0
.end method

.method final setSessionNativePtr(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    .line 127
    return-void
.end method

.method public final streamReset(JLorg/android/spdy/SpdyStatusCode;)I
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 168
    iget v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    long-to-int v1, p1

    invoke-virtual {p3}, Lorg/android/spdy/SpdyStatusCode;->getint()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/android/spdy/SpdySession;->streamCloseN(III)I

    move-result v0

    .line 169
    invoke-static {v0}, Lorg/android/spdy/SpdyErrorResolve;->spdyResolve(I)V

    .line 170
    return v0
.end method

.method public final streamSendData(ILjava/io/InputStream;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 221
    if-nez p2, :cond_0

    .line 239
    :goto_0
    return v6

    .line 224
    :cond_0
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 228
    :try_start_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 230
    :goto_1
    const/4 v0, -0x1

    if-eq v4, v0, :cond_1

    .line 231
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->streamSendData(I[BIIZ)I

    .line 232
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_1

    .line 235
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->streamSendData(I[BIIZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    move v6, v0

    .line 239
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto :goto_2
.end method

.method public final streamSendData(ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 203
    invoke-virtual {p0, p1, v1}, Lorg/android/spdy/SpdySession;->streamSendData(ILjava/io/InputStream;)I

    move-result v0

    .line 206
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return v0

    .line 207
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final streamSendData(I[BIIZ)I
    .locals 7

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 187
    iget v1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/android/spdy/SpdySession;->streamSendDataN(II[BIIZ)I

    move-result v0

    .line 188
    invoke-static {v0}, Lorg/android/spdy/SpdyErrorResolve;->spdyResolve(I)V

    .line 189
    return v0
.end method

.method public final submitPing()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 152
    iget v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    invoke-direct {p0, v0}, Lorg/android/spdy/SpdySession;->submitPingN(I)I

    move-result v0

    .line 153
    invoke-static {v0}, Lorg/android/spdy/SpdyErrorResolve;->spdyResolve(I)V

    .line 154
    return v0
.end method

.method public final submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    .locals 9

    .prologue
    const/16 v2, -0x44e

    .line 258
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v1, "SPDY_JNI_ERR_INVALID_PARAM"

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 263
    :cond_1
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 265
    invoke-static {p1, p2}, Lorg/android/spdy/SpdyAgent;->dataproviderToByteArray(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;)[B

    move-result-object v5

    .line 268
    if-eqz v5, :cond_2

    array-length v0, v5

    if-gtz v0, :cond_2

    .line 269
    const/4 v5, 0x0

    .line 271
    :cond_2
    const/4 v6, 0x1

    .line 272
    if-eqz p2, :cond_3

    .line 273
    iget-boolean v6, p2, Lorg/android/spdy/SpdyDataProvider;->finished:Z

    .line 277
    :cond_3
    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 279
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v1, "SPDY_JNI_ERR_INVALID_PARAM"

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 283
    :cond_4
    new-instance v0, Lorg/android/spdy/SpdyStreamContext;

    invoke-direct {v0, p3, p4}, Lorg/android/spdy/SpdyStreamContext;-><init>(Ljava/lang/Object;Lorg/android/spdy/Spdycb;)V

    .line 284
    invoke-virtual {p0, v0}, Lorg/android/spdy/SpdySession;->putSpdyStreamCtx(Lorg/android/spdy/SpdyStreamContext;)I

    move-result v7

    .line 285
    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/android/spdy/SpdyAgent;->mapToByteArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    .line 287
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    if-eqz v0, :cond_5

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "QZspdydata:index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  starttime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 290
    :cond_5
    iget v1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:I

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getUrlPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getPriority()I

    move-result v0

    int-to-byte v3, v0

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getRequestTimeoutMs()I

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/android/spdy/SpdySession;->submitRequestN(ILjava/lang/String;B[Ljava/lang/String;[BZII)I

    move-result v0

    .line 291
    sget-boolean v1, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    if-eqz v1, :cond_6

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "QZspdydata:index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   calltime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 294
    :cond_6
    if-gez v0, :cond_7

    .line 295
    invoke-virtual {p0, v7}, Lorg/android/spdy/SpdySession;->removeSpdyStream(I)V

    .line 297
    :cond_7
    invoke-static {v0}, Lorg/android/spdy/SpdyErrorResolve;->spdyResolve(I)V

    .line 298
    return v0
.end method
