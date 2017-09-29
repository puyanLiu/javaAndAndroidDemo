.class public Lcom/alipay/ebppprod/biz/recharge/RechargeConfigRes;
.super Lcom/alipay/ebppprod/biz/recharge/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bottomItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/ebppprod/biz/recharge/RechargConfigMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public flowResultUrl:Ljava/lang/String;

.field public navItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/ebppprod/biz/recharge/RechargConfigMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public resultUrl:Ljava/lang/String;

.field public showFlowRecharge:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/ebppprod/biz/recharge/BaseRespVO;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/ebppprod/biz/recharge/RechargeConfigRes;->showFlowRecharge:Z

    return-void
.end method
