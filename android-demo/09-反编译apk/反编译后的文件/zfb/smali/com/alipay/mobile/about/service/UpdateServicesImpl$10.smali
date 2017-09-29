.class Lcom/alipay/mobile/about/service/UpdateServicesImpl$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Z

.field final synthetic this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$10;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$10;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$10;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iget-boolean v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$10;->a:Z

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$10;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$7(Lcom/alipay/mobile/about/service/UpdateServicesImpl;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method
