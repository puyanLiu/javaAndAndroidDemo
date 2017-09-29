.class public Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field public interval:I

.field public silence:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x1d

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    .line 19
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    return-void
.end method
