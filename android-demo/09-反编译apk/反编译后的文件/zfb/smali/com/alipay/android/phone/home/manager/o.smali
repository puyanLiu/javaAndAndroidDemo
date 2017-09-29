.class final Lcom/alipay/android/phone/home/manager/o;
.super Ljava/lang/Object;
.source "HomeAppsOnItemClickListener.java"

# interfaces
.implements Lcom/ali/user/mobile/account/bind/OnBindCaller;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/n;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/n;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/o;->a:Lcom/alipay/android/phone/home/manager/n;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/o;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/manager/o;)Lcom/alipay/android/phone/home/manager/n;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/o;->a:Lcom/alipay/android/phone/home/manager/n;

    return-object v0
.end method


# virtual methods
.method public final onBindError(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 263
    const-string/jumbo v0, "HomeAppsOnItemClickListener"

    const-string/jumbo v1, "bindTaobao error!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public final onBindSuccess(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 269
    const-string/jumbo v0, "HomeAppsOnItemClickListener"

    const-string/jumbo v1, "bindTaobao success!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/o;->a:Lcom/alipay/android/phone/home/manager/n;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/n;->a(Lcom/alipay/android/phone/home/manager/n;)Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/home/manager/p;

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/o;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/phone/home/manager/p;-><init>(Lcom/alipay/android/phone/home/manager/o;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method

.method public final onPostRpc()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public final onPreRpc()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method
