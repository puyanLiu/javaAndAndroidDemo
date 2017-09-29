.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/o;
.super Ljava/lang/Object;
.source "AdvertisementServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/o;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/o;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/o;->c:Ljava/lang/String;

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 937
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/o;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/o;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/o;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/app/Activity;Ljava/lang/String;)V

    .line 938
    return-void
.end method
