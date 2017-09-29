.class public abstract Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;
.super Ljava/lang/Object;
.source "AtlsHandShake.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/SecurityHandShake;


# instance fields
.field protected certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

.field protected handShakeOk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->handShakeOk:Z

    return-void
.end method


# virtual methods
.method public handShake()Z
    .locals 3

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->needHandShake()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->putSecureSeed([B)V

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->sendHandShakeReq()V

    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->readHandShakeRes()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->handShakeOk:Z

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->handShakeOk:Z
    :try_end_0
    .catch Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->finish()V

    :cond_1
    return v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ATLS\u63e1\u624b\u65f6\u53d1\u751fALTS\u5f02\u5e38\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 37
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    if-eqz v1, :cond_2

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->finish()V

    :cond_2
    throw v0

    .line 38
    :catch_1
    move-exception v0

    .line 39
    :try_start_2
    const-string/jumbo v1, "ATLS\u63e1\u624b\u65f6\u53d1\u751f\u5f02\u5e38"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeFailException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public isHandShakeOk()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->handShakeOk:Z

    return v0
.end method

.method protected abstract needHandShake()Z
.end method

.method protected abstract readHandShakeRes()Z
.end method

.method protected abstract sendHandShakeReq()V
.end method

.method public setHandShakeOk(Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;->handShakeOk:Z

    .line 85
    return-void
.end method
