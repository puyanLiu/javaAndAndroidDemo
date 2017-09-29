.class public Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;
.super Ljava/lang/RuntimeException;
.source "AtlsException.java"


# static fields
.field private static final serialVersionUID:J = 0x35e1d6c0923e35f3L


# instance fields
.field private resultCode:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;->resultCode:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .prologue
    .line 34
    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ATLS Exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;->resultCode:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;->resultCode:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
