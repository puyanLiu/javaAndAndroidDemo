.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;
.source "Amnet.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;)V
    .locals 2

    .prologue
    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    .line 969
    return-void
.end method
