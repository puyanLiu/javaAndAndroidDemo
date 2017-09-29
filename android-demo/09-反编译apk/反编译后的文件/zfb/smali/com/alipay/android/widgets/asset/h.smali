.class final Lcom/alipay/android/widgets/asset/h;
.super Ljava/lang/Object;
.source "AssetWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/h;->a:Lcom/alipay/android/widgets/asset/g;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/h;->a:Lcom/alipay/android/widgets/asset/g;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/g;->a(Lcom/alipay/android/widgets/asset/g;)Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method
