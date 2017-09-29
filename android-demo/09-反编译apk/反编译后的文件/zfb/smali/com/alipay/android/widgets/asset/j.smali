.class final Lcom/alipay/android/widgets/asset/j;
.super Ljava/lang/Object;
.source "AssetWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/widgets/asset/listener/ShowAmountClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/j;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    .line 223
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c(Ljava/lang/String;)Z

    move-result v3

    .line 227
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v5, v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;Z)V

    .line 228
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/j;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v0, v1}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;Z)V

    .line 229
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/j;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/asset/common/view/AccountInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/AccountInfoView;->updateAmountHiddenState()V

    .line 231
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 227
    goto :goto_0

    :cond_2
    move v1, v2

    .line 228
    goto :goto_1
.end method
