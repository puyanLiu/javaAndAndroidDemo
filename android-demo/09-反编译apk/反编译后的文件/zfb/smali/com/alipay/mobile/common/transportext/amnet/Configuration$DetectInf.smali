.class public Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;
.super Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
.source "Configuration.java"


# instance fields
.field public domain:Ljava/lang/String;

.field public protocol:I

.field public request:Ljava/lang/String;

.field public response:Ljava/lang/String;

.field public trying:I

.field public waiting:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->request:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->response:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->protocol:I

    .line 52
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->waiting:I

    .line 53
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->trying:I

    return-void
.end method
