.class final Lcom/alipay/android/widgets/asset/i;
.super Ljava/lang/Object;
.source "AssetWidgetGroup.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/i;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canRefresh()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public final getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/i;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 205
    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_framework_pullrefresh_overview:I

    .line 206
    const/4 v2, 0x0

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 202
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APOverView;

    .line 208
    return-object v0
.end method

.method public final onRefresh()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/i;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->autoRefresh()V

    .line 195
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/i;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    move-result-object v0

    const-string/jumbo v1, "HOME"

    .line 196
    const-string/jumbo v2, "pullrefresh"

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a()Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/i;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v2}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a(ZLcom/alipay/android/widgets/asset/listener/AdvertListener;)V

    .line 198
    return-void
.end method
