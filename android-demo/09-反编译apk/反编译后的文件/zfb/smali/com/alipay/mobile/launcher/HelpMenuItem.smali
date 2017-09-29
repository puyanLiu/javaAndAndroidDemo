.class public Lcom/alipay/mobile/launcher/HelpMenuItem;
.super Lcom/alipay/android/launcher/TitleMenuItem;
.source "HelpMenuItem.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TitleMenuItem;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/launcher/HelpMenuItem;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/launcher/HelpMenuItem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$drawable;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/launcher/HelpMenuItem;->a:Landroid/content/Context;

    sget v1, Lcom/alipay/mobile/socialwidget/R$string;->c:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 26
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string/jumbo v0, "so"

    const-string/jumbo v2, "NO"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "pd"

    const-string/jumbo v2, "NO"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "bc"

    const-string/jumbo v2, "15790326"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/launcher/HelpMenuItem;->getCurrentTab()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 45
    const-string/jumbo v0, "https://csmobile.alipay.com/router.htm?scene=app_friend"

    .line 48
    :goto_0
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "20000067"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    return-void

    .line 33
    :pswitch_0
    const-string/jumbo v0, "https://csmobile.alipay.com/router.htm?scene=app_alipay_public"

    goto :goto_0

    .line 36
    :pswitch_1
    const-string/jumbo v0, "https://csmobile.alipay.com/router.htm?scene=app_o2o_my"

    goto :goto_0

    .line 39
    :pswitch_2
    const-string/jumbo v0, "https://csmobile.alipay.com/router.htm?scene=app_friend"

    goto :goto_0

    .line 42
    :pswitch_3
    const-string/jumbo v0, "https://csmobile.alipay.com/router.htm?scene=app_khdcfbz"

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
