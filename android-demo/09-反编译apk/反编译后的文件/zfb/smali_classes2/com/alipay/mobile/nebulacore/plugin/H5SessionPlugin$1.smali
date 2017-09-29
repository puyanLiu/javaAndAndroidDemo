.class Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;
.super Ljava/lang/Object;
.source "H5SessionPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

.field private final synthetic b:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

.field private final synthetic c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

.field private final synthetic d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->b:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->d:Landroid/os/Bundle;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->b:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->setIsIntercept(Z)V

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->b:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->setPreRunnable(Ljava/lang/Runnable;)V

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;)V

    .line 315
    return-void
.end method
