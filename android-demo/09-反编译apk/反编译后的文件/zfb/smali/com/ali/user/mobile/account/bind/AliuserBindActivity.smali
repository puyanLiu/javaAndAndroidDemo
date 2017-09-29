.class public Lcom/ali/user/mobile/account/bind/AliuserBindActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "AliuserBindActivity.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/account/bind/BindManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/account/bind/BindManager;

    move-result-object v1

    const-string/jumbo v0, "1002"

    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->notifyBindPhone(I)V

    .line 89
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->finish()V

    .line 90
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/account/bind/AliuserBindActivity;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->a()V

    return-void
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/account/bind/AliuserBindActivity;)V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/account/bind/BindManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/account/bind/BindManager;

    move-result-object v1

    const-string/jumbo v0, "1002"

    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/account/bind/BindManager;->notifyBindPhone(I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_account_bind:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->setContentView(I)V

    .line 32
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->textTip:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->b:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->textTip1:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->c:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->textTip2:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->d:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->e:Landroid/widget/Button;

    .line 33
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "bindToken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    const-string/jumbo v0, "1002"

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->memo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->btnMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->btnMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/account/bind/AliuserBindActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity$1;-><init>(Lcom/ali/user/mobile/account/bind/AliuserBindActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/ali/user/mobile/account/bind/AliuserBindActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity$2;-><init>(Lcom/ali/user/mobile/account/bind/AliuserBindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->toBind:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->memo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->txtMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->f:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoRes;->txtMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->a()V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "20000010"

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserBindActivity;->mAppId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
