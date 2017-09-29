.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private code:I

.field private key:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 979
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    .line 980
    iput p6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->code:I

    .line 981
    iput-object p7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->key:Ljava/lang/String;

    .line 982
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 988
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 990
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->information()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->code:I

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->information()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 993
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    .line 996
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 997
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrExEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    goto :goto_0
.end method
