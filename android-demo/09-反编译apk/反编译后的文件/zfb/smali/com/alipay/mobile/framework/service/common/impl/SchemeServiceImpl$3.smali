.class Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;
.super Ljava/lang/Object;
.source "SchemeServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;


# instance fields
.field private final synthetic a:Landroid/net/Uri;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->a:Landroid/net/Uri;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$6(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    .line 220
    const/4 v0, 0x0

    .line 222
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$7(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Lcom/alipay/mobile/framework/service/common/H5HoldListener;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$7(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Lcom/alipay/mobile/framework/service/common/H5HoldListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/common/H5HoldListener;->isH5Hold(Landroid/os/Bundle;)Z

    move-result v0

    .line 224
    :cond_0
    if-eqz v0, :cond_1

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$0(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Z)V

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "20000067"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
