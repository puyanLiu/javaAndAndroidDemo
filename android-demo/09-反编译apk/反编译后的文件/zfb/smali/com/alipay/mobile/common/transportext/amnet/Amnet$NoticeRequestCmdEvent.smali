.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cmd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

.field private val:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;",
            "JI",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1936
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 1937
    iput p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->val:I

    .line 1938
    iput-object p6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->cmd:Ljava/util/List;

    .line 1939
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1945
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1946
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 1947
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1948
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    .line 1951
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->cmd:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->command(Ljava/util/List;)V

    .line 1952
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->val:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->postCmdRsp(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1953
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 1954
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 1960
    :cond_2
    :goto_0
    return-void

    .line 1957
    :cond_3
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    goto :goto_0
.end method
