.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/t;
.super Ljava/lang/Object;
.source "AdvertisementServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/t;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/t;->b:Landroid/app/Activity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/t;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/t;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->checkAndShowAd(Landroid/app/Activity;)V

    .line 188
    return-void
.end method
