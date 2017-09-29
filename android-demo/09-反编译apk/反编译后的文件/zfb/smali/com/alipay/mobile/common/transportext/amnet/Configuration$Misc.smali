.class public Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field public compress:I

.field public log:I

.field public pending:I

.field public reset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->compress:I

    .line 42
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->log:I

    .line 43
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->pending:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->reset:I

    return-void
.end method
