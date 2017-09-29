.class public Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field public inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

.field public on:Z

.field public sleep:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->on:Z

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    return-void
.end method
