.class public Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;
.super Ljava/lang/Object;
.source "VarifyNameManager.java"


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Landroid/app/AlertDialog;

.field protected c:Lcom/alipay/mobile/framework/service/ext/contact/VerifyNameCallBack;

.field protected d:Z

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/mobile/framework/service/ext/contact/VerifyNameCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->d:Z

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->c:Lcom/alipay/mobile/framework/service/ext/contact/VerifyNameCallBack;

    .line 36
    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->f:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->e:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->e:Ljava/lang/String;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->h:Ljava/lang/String;

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->i:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->showProgressDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->dismissProgressDialog()V

    goto :goto_0
.end method

.method public verifyName()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameManager;->a(Z)V

    goto :goto_0
.end method
