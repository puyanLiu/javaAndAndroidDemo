.class final Lcom/alipay/android/widgets/asset/f;
.super Ljava/lang/Object;
.source "AssetAnalyzeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/e;

.field private final synthetic b:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/e;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/f;->a:Lcom/alipay/android/widgets/asset/e;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/f;->b:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    iput-boolean p3, p0, Lcom/alipay/android/widgets/asset/f;->c:Z

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/f;->a:Lcom/alipay/android/widgets/asset/e;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/e;->a(Lcom/alipay/android/widgets/asset/e;)Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/f;->b:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;

    iget-boolean v2, p0, Lcom/alipay/android/widgets/asset/f;->c:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->a(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;Z)V

    .line 417
    return-void
.end method
