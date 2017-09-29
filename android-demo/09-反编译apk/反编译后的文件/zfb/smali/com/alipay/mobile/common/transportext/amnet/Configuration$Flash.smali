.class public Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field public count:I

.field public holding:I

.field public period:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->period:I

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->count:I

    .line 37
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->holding:I

    return-void
.end method
