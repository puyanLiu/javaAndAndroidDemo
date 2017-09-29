.class Lcom/alipay/mobile/about/service/UpdateServicesImpl$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Z

.field final synthetic this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$3(Lcom/alipay/mobile/about/service/UpdateServicesImpl;)Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-result-object v0

    const-string/jumbo v1, "about_ignore_update_version"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$8;->a:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$9(Lcom/alipay/mobile/about/service/UpdateServicesImpl;ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$8;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const-string/jumbo v1, "redown"

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$10(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;)V

    return-void
.end method
