.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;
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
    .line 628
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->val$sourceAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->val$targetAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 631
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->val$sourceAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->val$targetAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->val$params:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$100(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 632
    return-void
.end method
