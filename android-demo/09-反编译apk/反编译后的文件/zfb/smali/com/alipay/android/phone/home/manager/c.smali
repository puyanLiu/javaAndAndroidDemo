.class final Lcom/alipay/android/phone/home/manager/c;
.super Ljava/lang/Object;
.source "AppCenterOnItemClickListener.java"

# interfaces
.implements Lcom/ali/user/mobile/account/bind/OnBindCaller;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/b;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/b;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/c;->a:Lcom/alipay/android/phone/home/manager/b;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/manager/c;)Lcom/alipay/android/phone/home/manager/b;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->a:Lcom/alipay/android/phone/home/manager/b;

    return-object v0
.end method


# virtual methods
.method public final onBindError(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 245
    const-string/jumbo v0, "AppCenterOnItemClickListener"

    const-string/jumbo v1, "bindTaobao error!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public final onBindSuccess(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 251
    const-string/jumbo v0, "AppCenterOnItemClickListener"

    const-string/jumbo v1, "bindTaobao success!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->a:Lcom/alipay/android/phone/home/manager/b;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/b;->a(Lcom/alipay/android/phone/home/manager/b;)Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;->b(Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/home/manager/d;

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/phone/home/manager/d;-><init>(Lcom/alipay/android/phone/home/manager/c;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public final onPostRpc()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public final onPreRpc()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method
