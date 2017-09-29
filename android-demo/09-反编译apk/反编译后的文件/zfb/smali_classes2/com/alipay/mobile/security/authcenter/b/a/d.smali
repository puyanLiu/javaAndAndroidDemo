.class final Lcom/alipay/mobile/security/authcenter/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/b/a/a;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/b/a/a;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/d;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/b/a/d;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/d;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lcom/alipay/mobile/security/authcenter/b/a/a;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/d;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getExtResAttrs()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "fullMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "lightUpgradeURL"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "lightUpgradeMd5"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/d;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getDownloadURL()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    move-object v3, v4

    move-object v2, v4

    goto :goto_0
.end method
