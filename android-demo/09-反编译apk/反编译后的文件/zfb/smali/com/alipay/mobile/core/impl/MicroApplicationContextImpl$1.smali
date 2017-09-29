.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$sourceAppId:Ljava/lang/String;

.field final synthetic val$targetAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$sourceAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 574
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$sourceAppId:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$params:Landroid/os/Bundle;

    aput-object v2, v1, v0

    .line 575
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 576
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$sourceAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$targetAppId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;->val$params:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 580
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 581
    return-void
.end method
