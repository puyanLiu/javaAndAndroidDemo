.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorAddressEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;)V
    .locals 6

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorAddressEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move-object v5, p6

    .line 1226
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;)V

    .line 1227
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorAddressEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    .line 1233
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorAddressEvent;->identification()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->licence()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorAddressEvent;->information()Ljava/lang/String;

    move-result-object v1

    .line 1235
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorAddressEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v3, 0x3

    const-string/jumbo v4, "-AMNET-ERR-DNS"

    invoke-static {v2, v3, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorAddressEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 1237
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorAddressEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V

    .line 1239
    :cond_0
    return-void
.end method
