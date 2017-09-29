.class public Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;
.super Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;
.source "AliuserRegisterSuccessActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getApplicationName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 55
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :try_start_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 64
    :goto_0
    if-nez v1, :cond_0

    .line 69
    :goto_1
    return-object v0

    .line 62
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 62
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_register_success:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->setContentView(I)V

    .line 36
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->textTip:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->a:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->webTip:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->b:Landroid/webkit/WebView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->c:Landroid/widget/Button;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AliuserRegisterSuccessActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->c:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->enter:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->account:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->use_follow_service:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$color;->checkCodeStringColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity$1;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const-string/jumbo v0, "AliuserRegisterSuccessActivity"

    const-string/jumbo v1, "loadUrl:https://ds.alipay.com/help/icon.htm"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->b:Landroid/webkit/WebView;

    const-string/jumbo v1, "https://ds.alipay.com/help/icon.htm"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 39
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->enter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
