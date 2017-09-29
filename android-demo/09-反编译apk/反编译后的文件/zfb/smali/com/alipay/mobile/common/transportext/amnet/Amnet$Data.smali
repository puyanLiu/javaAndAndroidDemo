.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;
.super Lcom/alipay/mobile/common/transportext/mnet/Plan;
.source "Amnet.java"


# instance fields
.field public body:[B

.field public cfrm:Z

.field public channel:B

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nearing:Z

.field public receipt:J

.field public secret:Z

.field public sequence:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/mnet/Plan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V
    .locals 0

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    return-void
.end method


# virtual methods
.method protected asyncTimeOut(J)V
    .locals 3

    .prologue
    .line 839
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p1, p2, p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DataTmrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Data;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 840
    return-void
.end method
