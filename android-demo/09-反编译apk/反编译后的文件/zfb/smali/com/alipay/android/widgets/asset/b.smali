.class final Lcom/alipay/android/widgets/asset/b;
.super Ljava/lang/Object;
.source "AssetAnalyzeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/b;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/b;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/b;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/b;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget-boolean v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->hasOpen:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/b;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/b;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->detailScheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a(Ljava/lang/String;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/b;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/b;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;->insureInfo:Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/AccSecurInsureInfo;->openUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
