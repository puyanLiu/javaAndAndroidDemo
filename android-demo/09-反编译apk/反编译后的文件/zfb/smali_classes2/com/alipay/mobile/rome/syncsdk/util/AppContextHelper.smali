.class public Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;
.super Ljava/lang/Object;
.source "AppContextHelper.java"


# static fields
.field private static volatile a:Landroid/content/Context;

.field private static volatile b:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->a:Landroid/content/Context;

    .line 37
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 26
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method
