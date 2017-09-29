.class Lcom/alipay/android/app/template/util/ShareHelper$2;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;


# instance fields
.field private final synthetic a:Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/util/ShareHelper$2;->a:Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/android/app/template/util/ShareHelper$2;->a:Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/util/ShareHelper$2;->a:Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;->onShareComplete(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onException(ILcom/alipay/mobile/common/share/ShareException;)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/android/app/template/util/ShareHelper$2;->a:Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/util/ShareHelper$2;->a:Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/alipay/mobile/common/share/ShareException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;->onShareComplete(ZLjava/lang/String;)V

    goto :goto_0
.end method
