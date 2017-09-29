.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;
.super Lcom/alipay/mobile/common/transportext/mnet/Plan;
.source "Amnet.java"


# instance fields
.field private nm:Ljava/lang/String;

.field final synthetic this$1:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;)V
    .locals 1

    .prologue
    .line 3195
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;->this$1:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/mnet/Plan;-><init>()V

    .line 3206
    const-string/jumbo v0, "long-connection-intelligent-interval"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;->nm:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V
    .locals 0

    .prologue
    .line 3195
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;)V

    return-void
.end method


# virtual methods
.method protected asyncTimeOut(J)V
    .locals 3

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;->this$1:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IhIntervalTmrEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;->this$1:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IhIntervalTmrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3204
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;->nm:Ljava/lang/String;

    return-object v0
.end method
