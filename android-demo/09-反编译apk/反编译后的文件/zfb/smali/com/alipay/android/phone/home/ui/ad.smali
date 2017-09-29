.class final Lcom/alipay/android/phone/home/ui/ad;
.super Ljava/lang/Object;
.source "HomeFrameLayout.java"

# interfaces
.implements Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ad;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/ad;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ad;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/home/ads/Advert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ad;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$2(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/home/ui/ae;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/ui/ae;-><init>(Lcom/alipay/android/phone/home/ui/ad;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method
