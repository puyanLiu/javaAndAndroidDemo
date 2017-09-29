.class final Lcom/alipay/android/phone/home/ui/e;
.super Ljava/lang/Object;
.source "AbstractHomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/e;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/e;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeAppsFromLocal()Ljava/util/List;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/e;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->access$0(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;Ljava/util/List;)V

    .line 187
    return-void
.end method
