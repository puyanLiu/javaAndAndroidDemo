.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectEvent;
.source "Amnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private text:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 2184
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 2185
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;J)V

    .line 2186
    iput-object p5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;->text:Ljava/lang/String;

    .line 2187
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2192
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v0

    .line 2193
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;->identification()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->identification()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2194
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->getGroup()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2195
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DetectErrEvent;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->again(Ljava/lang/String;)V

    .line 2200
    :cond_0
    :goto_0
    return-void

    .line 2197
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->stop()V

    goto :goto_0
.end method
