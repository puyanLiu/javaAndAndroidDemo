.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;
.super Ljava/lang/Object;
.source "Amnet.java"


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput-wide p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;->handle:J

    .line 925
    return-void
.end method


# virtual methods
.method public final identification()J
    .locals 2

    .prologue
    .line 929
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Event;->handle:J

    return-wide v0
.end method
