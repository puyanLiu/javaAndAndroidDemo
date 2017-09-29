.class public Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;
.super Ljava/lang/Object;
.source "Initialization.java"


# instance fields
.field public expand:Ljava/lang/String;

.field public reconn:I

.field public resend:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->status:I

    .line 21
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->resend:I

    .line 22
    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->reconn:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->expand:Ljava/lang/String;

    return-void
.end method
