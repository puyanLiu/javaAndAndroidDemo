.class public Lanetwork/channel/anet/AResult;
.super Lanetwork/channel/anet/AsyncResult;
.source "AResult.java"


# instance fields
.field protected l:Ljava/io/ByteArrayOutputStream;

.field private p:Lanetwork/channel/aidl/NetworkResponse;


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lanetwork/channel/anet/AsyncResult;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)V

    .line 31
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse;

    const/16 v1, -0xa

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lanetwork/channel/anet/AResult;->l:Ljava/io/ByteArrayOutputStream;

    .line 39
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lanetwork/channel/anet/AResult;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lanetwork/channel/anet/AResult;->l:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 151
    iget-object v1, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    invoke-virtual {v1, v0}, Lanetwork/channel/aidl/NetworkResponse;->a([B)V

    .line 152
    array-length v0, v0

    iput v0, p0, Lanetwork/channel/anet/AResult;->f:I

    .line 154
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/anet/AResult;->l:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)Lanetwork/channel/Response;
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lanetwork/channel/anet/AResult;->o:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    iget-object v1, p0, Lanetwork/channel/anet/AResult;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v1}, Lanetwork/channel/statist/Statistics;->f()Lanetwork/channel/statist/StatisticData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;->a(Lanetwork/channel/statist/StatisticData;)V

    .line 53
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    .line 59
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 56
    invoke-virtual {p0}, Lanetwork/channel/anet/AResult;->c()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/anet/AResult;->o:Z

    .line 58
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    iget-object v1, p0, Lanetwork/channel/anet/AResult;->d:Lanetwork/channel/statist/Statistics;

    invoke-virtual {v1}, Lanetwork/channel/statist/Statistics;->f()Lanetwork/channel/statist/StatisticData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;->a(Lanetwork/channel/statist/StatisticData;)V

    .line 59
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lanetwork/channel/anet/AResult;->o:Z

    if-nez v0, :cond_0

    .line 124
    const/16 v0, -0x7f3

    if-ne p1, v0, :cond_1

    .line 125
    const/16 v0, -0xd

    iput v0, p0, Lanetwork/channel/anet/AResult;->h:I

    .line 131
    :goto_0
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    iget v1, p0, Lanetwork/channel/anet/AResult;->h:I

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;->a(I)V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lanetwork/channel/anet/AsyncResult;->a(I)V

    .line 134
    return-void

    .line 126
    :cond_1
    const/16 v0, -0x7d5

    if-ne p1, v0, :cond_2

    .line 127
    const/4 v0, -0x5

    iput v0, p0, Lanetwork/channel/anet/AResult;->h:I

    goto :goto_0

    .line 129
    :cond_2
    const/16 v0, -0xb

    iput v0, p0, Lanetwork/channel/anet/AResult;->h:I

    goto :goto_0
.end method

.method public final a(III[B)V
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lanetwork/channel/anet/AResult;->o:Z

    if-nez v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lanetwork/channel/anet/AsyncResult;->a(III[B)V

    .line 82
    return-void

    .line 77
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

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
    .line 92
    invoke-super {p0, p1, p2}, Lanetwork/channel/anet/AsyncResult;->a(ILjava/util/Map;)V

    .line 93
    iget-boolean v0, p0, Lanetwork/channel/anet/AResult;->o:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    invoke-virtual {v0, p2}, Lanetwork/channel/aidl/NetworkResponse;->a(Ljava/util/Map;)V

    .line 95
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    iget v1, p0, Lanetwork/channel/anet/AResult;->h:I

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;->a(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public final a(Lorg/android/spdy/SpdyStatusCode;)V
    .locals 3

    .prologue
    .line 101
    iget-boolean v0, p0, Lanetwork/channel/anet/AResult;->o:Z

    if-nez v0, :cond_0

    .line 102
    if-eqz p1, :cond_0

    .line 103
    const-string/jumbo v0, "ANet.AResult"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "statusCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lanetwork/channel/anet/e;->a:[I

    invoke-virtual {p1}, Lorg/android/spdy/SpdyStatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    const/16 v1, -0x9

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;->a(I)V

    .line 117
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lanetwork/channel/anet/AsyncResult;->a(Lorg/android/spdy/SpdyStatusCode;)V

    .line 119
    return-void

    .line 106
    :pswitch_0
    invoke-direct {p0}, Lanetwork/channel/anet/AResult;->h()V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;->a(I)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "ANet.AResult"

    const-string/jumbo v1, "[doFinish]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Lanetwork/channel/anet/AResult;->o:Z

    if-nez v0, :cond_1

    .line 140
    iget v0, p0, Lanetwork/channel/anet/AResult;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    const/16 v0, -0xa

    iput v0, p0, Lanetwork/channel/anet/AResult;->h:I

    .line 143
    :cond_0
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    iget v1, p0, Lanetwork/channel/anet/AResult;->h:I

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;->a(I)V

    .line 145
    :cond_1
    invoke-super {p0}, Lanetwork/channel/anet/AsyncResult;->c()V

    .line 146
    return-void
.end method

.method public cancel(Z)Z
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lanetwork/channel/anet/AResult;->o:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lanetwork/channel/anet/AResult;->p:Lanetwork/channel/aidl/NetworkResponse;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;->a(I)V

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lanetwork/channel/anet/AsyncResult;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lanetwork/channel/anet/AResult;->h()V

    .line 87
    invoke-super {p0}, Lanetwork/channel/anet/AsyncResult;->f()V

    .line 88
    return-void
.end method

.method public final g()Lanetwork/channel/Response;
    .locals 3

    .prologue
    .line 66
    const-wide/16 v0, 0x14

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lanetwork/channel/anet/AResult;->a(JLjava/util/concurrent/TimeUnit;)Lanetwork/channel/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lanetwork/channel/anet/AResult;->g()Lanetwork/channel/Response;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lanetwork/channel/anet/AResult;->a(JLjava/util/concurrent/TimeUnit;)Lanetwork/channel/Response;

    move-result-object v0

    return-object v0
.end method
