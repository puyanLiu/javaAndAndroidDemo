.class Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/content/DialogInterface$OnKeyListener;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->b:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iput-object p4, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->d:Landroid/content/DialogInterface$OnKeyListener;

    iput-object p6, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$2(Lcom/alipay/mobile/about/service/UpdateServicesImpl;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->b:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->newestVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->d:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$5;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
