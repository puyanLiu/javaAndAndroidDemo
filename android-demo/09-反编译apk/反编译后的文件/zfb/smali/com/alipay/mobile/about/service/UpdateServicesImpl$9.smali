.class Lcom/alipay/mobile/about/service/UpdateServicesImpl$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Z

.field final synthetic this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$9;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$9;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$9;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$9;->a:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$9(Lcom/alipay/mobile/about/service/UpdateServicesImpl;ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$9;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const-string/jumbo v1, "cancel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$10(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;)V

    return-void
.end method
