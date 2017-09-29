.class public Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;
.super Ljava/lang/Object;
.source "Initialization.java"


# instance fields
.field public lst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;",
            ">;"
        }
    .end annotation
.end field

.field public seq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;->seq:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;->lst:Ljava/util/List;

    return-void
.end method
