.class public Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field public connect:I

.field public handshake:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    .line 14
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    return-void
.end method
