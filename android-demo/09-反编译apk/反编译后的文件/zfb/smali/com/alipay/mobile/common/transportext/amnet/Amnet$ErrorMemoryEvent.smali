.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1058
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    .line 1059
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    .line 1065
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->identification()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 1067
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->information()Ljava/lang/String;

    move-result-object v0

    .line 1068
    if-nez v0, :cond_0

    .line 1069
    const-string/jumbo v0, "(the native layer fails to pass information)"

    .line 1072
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v3, 0x3

    const-string/jumbo v4, "-AMNET-ERR-MEM"

    invoke-static {v2, v3, v4, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v3, 0x5

    invoke-static {v2, v1, v3, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1075
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1083
    :cond_1
    :goto_0
    return-void

    .line 1076
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-ne v1, v0, :cond_3

    .line 1077
    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    .line 1078
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    goto :goto_0

    .line 1080
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V

    goto :goto_0
.end method
