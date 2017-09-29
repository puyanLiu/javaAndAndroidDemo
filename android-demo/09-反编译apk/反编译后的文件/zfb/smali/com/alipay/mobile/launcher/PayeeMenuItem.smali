.class public Lcom/alipay/mobile/launcher/PayeeMenuItem;
.super Lcom/alipay/android/launcher/TitleMenuItem;
.source "PayeeMenuItem.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TitleMenuItem;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/alipay/mobile/launcher/PayeeMenuItem;->a:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/launcher/PayeeMenuItem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$drawable;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/launcher/PayeeMenuItem;->a:Landroid/content/Context;

    sget v1, Lcom/alipay/mobile/socialwidget/R$string;->k:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 24
    const-string/jumbo v1, "20000123"

    invoke-interface {v0, v2, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    return-void
.end method
