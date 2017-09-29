.class public abstract Lcom/alipay/mobile/common/transportext/amnet/LongLink;
.super Lcom/alipay/mobile/common/transportext/mnet/SslClient;
.source "LongLink.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 399
    const-string/jumbo v0, "mnet-http"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 400
    const-string/jumbo v0, "amnet-mmtp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/mnet/SslClient;-><init>()V

    return-void
.end method

.method private native requestData(JJZB[Ljava/lang/String;[B)I
.end method

.method private native requestInit([B)I
.end method

.method private native requestStatus([B)I
.end method

.method private native responseCmd([B)I
.end method

.method private native versionHpack()I
.end method


# virtual methods
.method protected abstract asyncErrorHeartbeat(J)V
.end method

.method protected abstract asyncErrorMmtp(JLjava/lang/String;)V
.end method

.method protected abstract asyncErrorProxy(J)V
.end method

.method protected abstract asyncNoticeAck(JJ)V
.end method

.method protected abstract asyncNoticeProxy(J)V
.end method

.method protected abstract asyncNoticeRequestCmd(JILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract asyncNoticeRequestReconnect(J)V
.end method

.method protected abstract asyncNoticeRequestSetting(JLcom/alipay/mobile/common/transportext/amnet/Configuration;)V
.end method

.method protected abstract asyncNoticeRequestStatus(JI)V
.end method

.method protected abstract asyncNoticeResponseData(JBLjava/util/Map;[BJII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BJII)V"
        }
    .end annotation
.end method

.method protected abstract asyncNoticeResponseInit(JIIILjava/lang/String;)V
.end method

.method protected abstract asyncNoticeResponseStatus(JI)V
.end method

.method protected abstract asyncNoticeRtt(JJ)V
.end method

.method protected abstract asyncNoticeSecret(J)V
.end method

.method protected abstract asyncNoticeSize(JJBII)V
.end method

.method public native changeBodyCode(I)I
.end method

.method protected final errorHeartbeat(J)V
    .locals 0

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncErrorHeartbeat(J)V

    .line 375
    return-void
.end method

.method protected final errorMmtp(JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncErrorMmtp(JLjava/lang/String;)V

    .line 381
    return-void
.end method

.method protected final errorProxy(J)V
    .locals 0

    .prologue
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncErrorProxy(J)V

    .line 369
    return-void
.end method

.method protected final noticeAck(JJ)V
    .locals 0

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeAck(JJ)V

    .line 257
    return-void
.end method

.method protected final noticeProxy(J)V
    .locals 0

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeProxy(J)V

    .line 235
    return-void
.end method

.method protected final noticeRequestCmd(J[B)V
    .locals 3

    .prologue
    .line 355
    :try_start_0
    invoke-static {p3}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->decodeReqCmd([B)Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;

    move-result-object v0

    .line 356
    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;->seq:I

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;->lst:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeRequestCmd(JILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to parse command-request from WIRE. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncErrorMmtp(JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final noticeRequestReconnect(J[B)V
    .locals 0

    .prologue
    .line 348
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeRequestReconnect(J)V

    .line 349
    return-void
.end method

.method protected final noticeRequestSetting(J[B)V
    .locals 3

    .prologue
    .line 334
    :try_start_0
    invoke-static {p3}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->decodeReqSetting([B)Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;

    move-result-object v0

    .line 336
    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeRequestSetting(JLcom/alipay/mobile/common/transportext/amnet/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to parse setting-request from WIRE. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncErrorMmtp(JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final noticeRequestStatus(J[B)V
    .locals 3

    .prologue
    .line 306
    :try_start_0
    invoke-static {p3}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->decodeReqStatus([B)Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqStatus;

    move-result-object v0

    .line 307
    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqStatus;->status:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeRequestStatus(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to parse status-request from WIRE. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncErrorMmtp(JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final noticeResponseData(JB[Ljava/lang/String;[BJII)V
    .locals 10

    .prologue
    .line 292
    invoke-static {p4}, Lcom/alipay/mobile/common/transportext/mnet/Http;->convert([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    .line 293
    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeResponseData(JBLjava/util/Map;[BJII)V

    .line 300
    return-void
.end method

.method protected final noticeResponseInit(J[B)V
    .locals 7

    .prologue
    .line 269
    :try_start_0
    invoke-static {p3}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->decodeRspInit([B)Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;

    move-result-object v0

    .line 270
    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->status:I

    iget v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->resend:I

    iget v5, v0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->reconn:I

    iget-object v6, v0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->expand:Ljava/lang/String;

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeResponseInit(JIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to parse init-response from WIRE. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncErrorMmtp(JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final noticeResponseStatus(J[B)V
    .locals 3

    .prologue
    .line 320
    :try_start_0
    invoke-static {p3}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->decodeRspStatus([B)Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspStatus;

    move-result-object v0

    .line 321
    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspStatus;->status:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeResponseStatus(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fail to parse status-response from WIRE. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncErrorMmtp(JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final noticeRtt(JJ)V
    .locals 0

    .prologue
    .line 240
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeRtt(JJ)V

    .line 241
    return-void
.end method

.method protected final noticeSecret(J)V
    .locals 0

    .prologue
    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeSecret(J)V

    .line 263
    return-void
.end method

.method protected final noticeSize(JJBII)V
    .locals 0

    .prologue
    .line 250
    invoke-virtual/range {p0 .. p7}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->asyncNoticeSize(JJBII)V

    .line 251
    return-void
.end method

.method public native open(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native proxy(Ljava/lang/String;)I
.end method

.method public requestData(JJZBLjava/util/Map;[B)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)I"
        }
    .end annotation

    .prologue
    .line 89
    invoke-static/range {p7 .. p7}, Lcom/alipay/mobile/common/transportext/mnet/Http;->convert(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-object/from16 v8, p8

    .line 90
    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->requestData(JJZB[Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public requestGroundStatus(Z)I
    .locals 1

    .prologue
    .line 101
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->encodeReqGroundStatus(Z)[B

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->requestStatus([B)I

    move-result v0

    goto :goto_0
.end method

.method public native requestHeartbeat()I
.end method

.method public requestInit(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 65
    const-string/jumbo v1, "{HPACK-VERSION}"

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->versionHpack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->encodeReqInit(Ljava/util/Map;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->requestInit([B)I

    move-result v0

    return v0
.end method

.method public requestUserStatus(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 115
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->encodeReqUserStatus(ZLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->requestStatus([B)I

    move-result v0

    goto :goto_0
.end method

.method public responseCmd(I)I
    .locals 1

    .prologue
    .line 129
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->encodeReqCmd(I)[B

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;->responseCmd([B)I

    move-result v0

    goto :goto_0
.end method

.method public native startHeartbeat(II)I
.end method

.method public native stopHeartbeat()I
.end method
