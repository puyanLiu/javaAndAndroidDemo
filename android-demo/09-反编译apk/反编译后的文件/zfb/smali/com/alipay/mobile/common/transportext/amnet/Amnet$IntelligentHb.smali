.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;
.super Ljava/lang/Object;
.source "Amnet.java"


# instance fields
.field public nFail:I

.field public nKeep:I

.field public stamp:J

.field public trying:I

.field public using:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    .line 644
    iput v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nFail:I

    .line 645
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    .line 646
    iput v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    .line 647
    const-wide/32 v0, -0x240c8400

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;-><init>()V

    return-void
.end method
