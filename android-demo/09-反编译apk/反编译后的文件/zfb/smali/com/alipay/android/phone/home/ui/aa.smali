.class final Lcom/alipay/android/phone/home/ui/aa;
.super Ljava/lang/Thread;
.source "HomeFrameLayout.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/aa;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    .line 693
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/aa;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aa;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aa;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getTopScreenAppsFromLocal()Ljava/util/List;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/aa;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$2(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/home/ui/ab;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/phone/home/ui/ab;-><init>(Lcom/alipay/android/phone/home/ui/aa;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 703
    return-void
.end method
