.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;
.super Lcom/alipay/mobile/common/transportext/mnet/Plan;
.source "Amnet.java"


# instance fields
.field private owner:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;)V
    .locals 0

    .prologue
    .line 4361
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/mnet/Plan;-><init>()V

    .line 4362
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;->owner:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    .line 4363
    return-void
.end method


# virtual methods
.method protected asyncTimeOut(J)V
    .locals 4

    .prologue
    .line 4367
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTimeOut;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTmr;->owner:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectTimeOut;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4368
    return-void
.end method
