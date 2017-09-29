.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;
.super Lcom/alipay/mobile/common/transportext/amnet/LongLink;
.source "Amnet.java"


# instance fields
.field private addrPeer:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

.field private addrProxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

.field private objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

.field private objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

.field private objTaster:Lcom/alipay/mobile/common/transportext/amnet/Tasting;

.field private strCa:Ljava/lang/String;

.field private strCert:Ljava/lang/String;

.field private valSsl:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;ILjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;Lcom/alipay/mobile/common/transportext/amnet/Tasting;Lcom/alipay/mobile/common/transportext/amnet/Mercury;)V
    .locals 1

    .prologue
    .line 4016
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;-><init>()V

    .line 4017
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->addrPeer:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 4018
    iput-object p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->addrProxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 4019
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->strCert:Ljava/lang/String;

    .line 4020
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->strCa:Ljava/lang/String;

    .line 4021
    iput-object p6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objTaster:Lcom/alipay/mobile/common/transportext/amnet/Tasting;

    .line 4022
    iput-object p7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    .line 4023
    invoke-static {}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5600()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    .line 4024
    iput p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->valSsl:I

    .line 4025
    return-void
.end method


# virtual methods
.method protected asyncErrorAddress(JILjava/lang/String;)V
    .locals 2

    .prologue
    .line 4183
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4184
    return-void
.end method

.method protected asyncErrorHandshake(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 4228
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4229
    return-void
.end method

.method protected asyncErrorHeartbeat(J)V
    .locals 2

    .prologue
    .line 4340
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4341
    return-void
.end method

.method protected asyncErrorIo(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 4234
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4235
    return-void
.end method

.method protected asyncErrorLink(JILjava/lang/String;)V
    .locals 2

    .prologue
    .line 4189
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4190
    return-void
.end method

.method protected asyncErrorMemory(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 4137
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4138
    return-void
.end method

.method protected asyncErrorMmtp(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 4346
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4347
    return-void
.end method

.method protected asyncErrorProxy(J)V
    .locals 2

    .prologue
    .line 4334
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4335
    return-void
.end method

.method protected asyncErrorReceive(JILjava/lang/String;)V
    .locals 2

    .prologue
    .line 4195
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4196
    return-void
.end method

.method protected asyncErrorSend(JILjava/lang/String;)V
    .locals 2

    .prologue
    .line 4201
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4202
    return-void
.end method

.method protected asyncErrorShutdown(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 4240
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4241
    return-void
.end method

.method protected asyncErrorSystem(JILjava/lang/String;)V
    .locals 2

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4132
    return-void
.end method

.method protected asyncNoticeAck(JJ)V
    .locals 0

    .prologue
    .line 4269
    return-void
.end method

.method protected asyncNoticeActivity(J)V
    .locals 0

    .prologue
    .line 4166
    return-void
.end method

.method protected asyncNoticeAddr(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4144
    return-void
.end method

.method protected asyncNoticeBroken(J)V
    .locals 2

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4160
    return-void
.end method

.method protected asyncNoticeData(J[B)V
    .locals 0

    .prologue
    .line 4172
    return-void
.end method

.method protected asyncNoticeHandshaked(JZ[B[B)V
    .locals 2

    .prologue
    .line 4210
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreHandshaked;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreHandshaked;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4211
    return-void
.end method

.method protected asyncNoticeLinked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 4153
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreLinked;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreLinked;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4154
    return-void
.end method

.method protected asyncNoticePosted(JI)V
    .locals 0

    .prologue
    .line 4223
    return-void
.end method

.method protected asyncNoticeProxy(J)V
    .locals 2

    .prologue
    .line 4246
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreProxy;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreProxy;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4247
    return-void
.end method

.method protected asyncNoticeRequestCmd(JILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4329
    return-void
.end method

.method protected asyncNoticeRequestReconnect(J)V
    .locals 0

    .prologue
    .line 4321
    return-void
.end method

.method protected asyncNoticeRequestSetting(JLcom/alipay/mobile/common/transportext/amnet/Configuration;)V
    .locals 0

    .prologue
    .line 4315
    return-void
.end method

.method protected asyncNoticeRequestStatus(JI)V
    .locals 0

    .prologue
    .line 4303
    return-void
.end method

.method protected asyncNoticeResponseData(JBLjava/util/Map;[BJII)V
    .locals 0
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

    .prologue
    .line 4297
    return-void
.end method

.method protected asyncNoticeResponseInit(JIIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 4285
    return-void
.end method

.method protected asyncNoticeResponseStatus(JI)V
    .locals 0

    .prologue
    .line 4309
    return-void
.end method

.method protected asyncNoticeRtt(JJ)V
    .locals 2

    .prologue
    .line 4252
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreRtt;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreRtt;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4253
    return-void
.end method

.method protected asyncNoticeSecret(J)V
    .locals 0

    .prologue
    .line 4275
    return-void
.end method

.method protected asyncNoticeSent(JI)V
    .locals 0

    .prologue
    .line 4178
    return-void
.end method

.method protected asyncNoticeShutdown(J)V
    .locals 2

    .prologue
    .line 4216
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objCb:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4217
    return-void
.end method

.method protected asyncNoticeSize(JJBII)V
    .locals 0

    .prologue
    .line 4263
    return-void
.end method

.method public cancel()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 4046
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->stop()V

    move v0, v1

    move v2, v1

    move v3, v4

    .line 4051
    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 4052
    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    aget-object v5, v5, v0

    if-ne v5, p0, :cond_1

    .line 4053
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v5, 0x0

    aput-object v5, v2, v0

    .line 4055
    if-nez v3, :cond_4

    .line 4066
    :cond_0
    :goto_1
    return v3

    .line 4058
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    aget-object v5, v5, v0

    if-eqz v5, :cond_2

    .line 4060
    if-nez v2, :cond_3

    move v3, v1

    .line 4061
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2
.end method

.method public group()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;
    .locals 1

    .prologue
    .line 4071
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    return-object v0
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 4029
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->addrProxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->addrPeer:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 4031
    :goto_0
    iget-object v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->open(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 4029
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->addrProxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    goto :goto_0

    .line 4031
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 4036
    const/16 v0, 0x64

    .line 4037
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    .line 4038
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->close()I

    move-result v0

    if-nez v0, :cond_1

    .line 4039
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public treatError()V
    .locals 2

    .prologue
    .line 4076
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4077
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objTaster:Lcom/alipay/mobile/common/transportext/amnet/Tasting;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Tasting;->indicate(Z)V

    .line 4078
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5602([Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    .line 4080
    :cond_0
    return-void
.end method

.method public treatHandshaked()V
    .locals 1

    .prologue
    .line 4097
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->requestHeartbeat()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4098
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->treatError()V

    .line 4100
    :cond_0
    return-void
.end method

.method public treatLinked()V
    .locals 2

    .prologue
    .line 4084
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->addrProxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    if-nez v0, :cond_1

    .line 4085
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->treatProxy()V

    .line 4093
    :cond_0
    :goto_0
    return-void

    .line 4087
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->addrProxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->addrProxy:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    iget v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->proxy(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4090
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->treatError()V

    goto :goto_0
.end method

.method public treatProxy()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4104
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->valSsl:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4105
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->treatHandshaked()V

    .line 4113
    :cond_0
    :goto_0
    return-void

    .line 4107
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->valSsl:I

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->strCa:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->strCert:Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->handshake(ILjava/lang/String;Ljava/lang/String;[B[B)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4110
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->treatError()V

    goto :goto_0
.end method

.method public treatRtt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4117
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4118
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 4119
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->stop()V

    .line 4120
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objGrp:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    aput-object v2, v1, v0

    .line 4117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4124
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->objTaster:Lcom/alipay/mobile/common/transportext/amnet/Tasting;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Tasting;->indicate(Z)V

    .line 4125
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5602([Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    .line 4126
    return-void
.end method
