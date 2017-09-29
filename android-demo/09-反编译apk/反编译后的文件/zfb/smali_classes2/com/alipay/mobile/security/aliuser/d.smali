.class final Lcom/alipay/mobile/security/aliuser/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

.field private final synthetic b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/aliuser/d;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    iput-object p2, p0, Lcom/alipay/mobile/security/aliuser/d;->b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/security/aliuser/d;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    iget-object v1, p0, Lcom/alipay/mobile/security/aliuser/d;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->showProgress(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    iget-object v1, p0, Lcom/alipay/mobile/security/aliuser/d;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    iget-object v2, p0, Lcom/alipay/mobile/security/aliuser/d;->b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    const-string/jumbo v3, "extResAttrs"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->getStringFromResponseData(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/aliuser/d;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    const-string/jumbo v3, "fullMd5"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->getStringFromExtResAttrs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/aliuser/d;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    const-string/jumbo v4, "lightUpgradeURL"

    invoke-virtual {v3, v1, v4}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->getStringFromExtResAttrs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/security/aliuser/d;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    const-string/jumbo v5, "lightUpgradeMd5"

    invoke-virtual {v4, v1, v5}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->getStringFromExtResAttrs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/alipay/mobile/security/aliuser/d;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    iget-object v5, p0, Lcom/alipay/mobile/security/aliuser/d;->b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    const-string/jumbo v6, "downloadURL"

    invoke-virtual {v1, v5, v6}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->getStringFromResponseData(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/aliuser/d;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    iget-object v1, p0, Lcom/alipay/mobile/security/aliuser/d;->b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->access$0(Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;)V

    return-void
.end method
