.class final Lcom/alipay/android/widgets/asset/g;
.super Ljava/lang/Object;
.source "AssetWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/widgets/asset/listener/AdvertListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/g;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/g;)Lcom/alipay/android/widgets/asset/AssetWidgetGroup;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/g;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/g;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/g;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/widgets/asset/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/h;-><init>(Lcom/alipay/android/widgets/asset/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_0
    return-void
.end method
