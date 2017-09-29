.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;
.super Lcom/alipay/mobile/common/transportext/mnet/Plan;
.source "Amnet.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V
    .locals 0

    .prologue
    .line 4400
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/mnet/Plan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V
    .locals 0

    .prologue
    .line 4400
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    return-void
.end method


# virtual methods
.method protected asyncTimeOut(J)V
    .locals 3

    .prologue
    .line 4403
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4404
    return-void
.end method
