.class final Lcom/alipay/android/phone/home/manager/t;
.super Ljava/lang/Object;
.source "RecommandOnClickListener.java"

# interfaces
.implements Lcom/ali/user/mobile/account/bind/OnBindCaller;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/s;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/s;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/t;->a:Lcom/alipay/android/phone/home/manager/s;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/t;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/manager/t;)Lcom/alipay/android/phone/home/manager/s;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/t;->a:Lcom/alipay/android/phone/home/manager/s;

    return-object v0
.end method


# virtual methods
.method public final onBindError(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    const-string/jumbo v0, "RecommandOnClickListener"

    const-string/jumbo v1, "bindTaobao error!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public final onBindSuccess(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 170
    const-string/jumbo v0, "RecommandOnClickListener"

    const-string/jumbo v1, "bindTaobao success!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/t;->a:Lcom/alipay/android/phone/home/manager/s;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/s;->a(Lcom/alipay/android/phone/home/manager/s;)Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->b(Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/home/manager/u;

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/t;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/phone/home/manager/u;-><init>(Lcom/alipay/android/phone/home/manager/t;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method public final onPostRpc()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final onPreRpc()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method
