.class Lcom/alipay/mobile/common/transportext/Transport$Logger;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

.field private pmt:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/Transport;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/amnet/Notepad;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/Transport$Logger;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/Transport$Logger;->pmt:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    .line 230
    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/Transport;->access$200(Lcom/alipay/mobile/common/transportext/Transport;)Lcom/alipay/mobile/common/transportext/Transport$Result;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/Transport$Logger;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    .line 231
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Logger;->pmt:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Logger;->cb:Lcom/alipay/mobile/common/transportext/Transport$Result;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport$Result;->notify(Z)V

    .line 248
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Logger;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/Transport$Logger;->pmt:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/Transport;->access$002(Lcom/alipay/mobile/common/transportext/Transport;Lcom/alipay/mobile/common/transportext/amnet/Notepad;)Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/Transport$Logger;->this$0:Lcom/alipay/mobile/common/transportext/Transport;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/Transport;->access$300(Lcom/alipay/mobile/common/transportext/Transport;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/Transport$Logger;->pmt:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->register(Lcom/alipay/mobile/common/transportext/amnet/Notepad;)V

    goto :goto_0
.end method
