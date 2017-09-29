.class public Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;
.super Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
.source "Configuration.java"


# instance fields
.field public ipAcc:Ljava/lang/String;

.field public portAcc:I

.field public score:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->portAcc:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->type:I

    .line 31
    iput v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->score:I

    return-void
.end method
