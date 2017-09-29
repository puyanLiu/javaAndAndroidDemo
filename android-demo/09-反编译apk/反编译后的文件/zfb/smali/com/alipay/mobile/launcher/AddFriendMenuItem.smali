.class public Lcom/alipay/mobile/launcher/AddFriendMenuItem;
.super Lcom/alipay/android/launcher/TitleMenuItem;
.source "AddFriendMenuItem.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TitleMenuItem;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/launcher/AddFriendMenuItem;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/launcher/AddFriendMenuItem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$drawable;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/launcher/AddFriendMenuItem;->a:Landroid/content/Context;

    sget v1, Lcom/alipay/mobile/socialwidget/R$string;->a:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 24
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string/jumbo v2, "actionType"

    const-string/jumbo v3, "actionTypeMainPage"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v2, 0x0

    const-string/jumbo v3, "20000166"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    return-void
.end method
