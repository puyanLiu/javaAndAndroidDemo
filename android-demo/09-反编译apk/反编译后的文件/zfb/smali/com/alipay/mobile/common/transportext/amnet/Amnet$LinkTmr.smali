.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;
.super Lcom/alipay/mobile/common/transportext/mnet/Plan;
.source "Amnet.java"


# instance fields
.field private conn:Z

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

.field private valTm:Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V
    .locals 0

    .prologue
    .line 4380
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/mnet/Plan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V
    .locals 0

    .prologue
    .line 4380
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    return-void
.end method


# virtual methods
.method protected asyncTimeOut(J)V
    .locals 4

    .prologue
    .line 4393
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->conn:Z

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;JZ)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 4394
    return-void
.end method

.method public reset(Z)Z
    .locals 6

    .prologue
    .line 4383
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$7800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->valTm:Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    .line 4384
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->conn:Z

    .line 4385
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    move-result-object v1

    const-string/jumbo v2, "connect"

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->valTm:Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    iget v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    :goto_1
    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2900(I)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    move-result v0

    return v0

    .line 4384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4385
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->valTm:Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    iget v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    goto :goto_1
.end method
