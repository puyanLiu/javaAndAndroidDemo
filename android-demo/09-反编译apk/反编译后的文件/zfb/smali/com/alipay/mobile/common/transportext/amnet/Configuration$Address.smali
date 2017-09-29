.class public Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field public ip:Ljava/lang/String;

.field public port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    return-void
.end method
