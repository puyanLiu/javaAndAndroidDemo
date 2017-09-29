.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private code:I

.field private key:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move-object v5, p6

    .line 1015
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;)V

    .line 1016
    iput p7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->code:I

    .line 1017
    iput-object p8, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->key:Ljava/lang/String;

    .line 1018
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1024
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1026
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->information()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->code:I

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->information()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1029
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1031
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    .line 1032
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    goto :goto_0

    .line 1034
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V

    goto :goto_0
.end method
