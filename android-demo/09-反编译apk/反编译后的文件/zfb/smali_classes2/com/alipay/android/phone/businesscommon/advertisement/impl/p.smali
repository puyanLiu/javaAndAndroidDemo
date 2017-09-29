.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/p;
.super Ljava/lang/Object;
.source "AdvertisementServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

.field private final synthetic b:Landroid/view/ViewGroup;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/p;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/p;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/p;->c:Landroid/view/View;

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/p;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/p;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 955
    return-void
.end method
